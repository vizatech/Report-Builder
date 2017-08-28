<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReportBulder._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <asp:UpdatePanel runat="server"> 
        <ContentTemplate>   
            <div class="container" style="padding-top: 100px">
                <div class="form-horizontal">
                        <asp:ListBox ID="ReportsList" runat="server" OnSelectedIndexChanged="ReportsList_SelectedIndexChanged" AutoPostBack="True" ></asp:ListBox>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Договор №: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocNumber" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">От: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocDate" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">С кем заключён: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="PartnerLabel" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Список приложений к договору</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="ExtraList" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Юрист: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="LoyerName" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Решение: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="Decision" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group"  >
                         <label for="MainContent_ViewReportTextBox1" class="col-sm-2 control-label">Дата: </label>
                         <div class="col-sm-10">
                            <asp:TextBox ID="DecDate" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Главн. Бухгалтер:</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="BookName" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Решение:</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="BookDecision" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Дата:</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="BookDate" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Решение об архивации принял:</label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="ArchDecisionName" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Договор закрыт в связи с: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="ArchReason" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Дата:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="ArchDate" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <asp:Button ID="ButtonDotFileCreate" class="btn btn-primary col-md-offset-5" runat="server" OnClick="ButtonDotFileCreate_Click" Text="Создать файл по шаблону"/>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

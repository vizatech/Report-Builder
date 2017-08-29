<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReportBulder._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <asp:UpdatePanel runat="server"> 
        <ContentTemplate>   
            <div class="container" style="padding-top: 100px">
                <div class="form-horizontal">

                    <asp:ListBox ID="ReportsList" runat="server" OnSelectedIndexChanged="ReportsList_SelectedIndexChanged" AutoPostBack="True" Width="100"></asp:ListBox>
                    <div class="form-group">

                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">ІД Договору: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocID" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Номер договору: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocNumber" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Вид договору: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocType" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Дата реєстрації: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocRegDate" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Департамент: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocDep" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportLabel" class="col-sm-2 control-label">Предмет договору: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocSub" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"></asp:TextBox>                                
                        </div>
                    </div>

                    <div class="form-group"  >
                         <label for="MainContent_ViewReportTextBox1" class="col-sm-2 control-label">Наша сторона: </label>
                         <div class="col-sm-10">
                            <asp:TextBox ID="OurSide" runat="server" type="text" CssClass="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox1" class="col-sm-2 control-label">Контрагент: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="Contragent" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox1" class="col-sm-2 control-label">Менеджер: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="Manager" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="MainContent_ViewReportTextBox1" class="col-sm-2 control-label">Дата заключення: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DocSignDate" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox1" class="col-sm-2 control-label">Статус ЖЦ: </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="Status" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Юрист 1:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="Lower1" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Бухгалтер 1:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="BookKeeper1" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Фінансист 1:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="Finance1" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Фін.дир / Заст.фін.дир 1:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="FinDirector1" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Юрист 2:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="Lower2" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Бухгалтер 2:</label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="BookKeeper2" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Фінансист 2: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="Finance2" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Фін.дир / Заст.фін.дир 2: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="FinDirector2" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Створено картку договору: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="CardCreatedDate" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Автор: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="Author" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Проект: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="Project" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Дата архівації: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="ArchDate" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="MainContent_ViewReportTextBox2" class="col-sm-2 control-label">Ким архівовано: </label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="ArchBy" runat="server" type="text" class="form-control" ReadOnly="true" style="width:500px;"/>
                        </div>
                    </div>

                    <asp:Button ID="ButtonDotFileCreate" class="btn btn-primary col-md-offset-5" runat="server" OnClick="ButtonDotFileCreate_Click" Text="Создать файл по шаблону"/>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

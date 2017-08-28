using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using DocumentFormat.OpenXml.Wordprocessing;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml;

using System.IO;


namespace ReportBulder
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if  (ReportsList.SelectedIndex == -1)
            {   ;
                List<Dictionary<string, string>> items = Item.GetItems();

                ReportsList.Items.Clear();
                foreach (Dictionary<string, string> it in items)
                {
                    ReportsList.Items.Add(it.Values.ElementAt(0));
                }
                ReportsList.SelectedIndex = 0;
                ReportsList_SelectedIndexChanged(sender, e);
            }
        }
                      

        protected void ReportsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Dictionary<string, string> AddElementsDictionary = Item.GetItems()[ReportsList.SelectedIndex];

            DocNumber.Text = AddElementsDictionary.Values.ElementAt(1);
            DocDate.Text = AddElementsDictionary.Values.ElementAt(2);
            PartnerLabel.Text = AddElementsDictionary.Values.ElementAt(3);
            ExtraList.Text = AddElementsDictionary.Values.ElementAt(4);
            LoyerName.Text = AddElementsDictionary.Values.ElementAt(5);
            Decision.Text = AddElementsDictionary.Values.ElementAt(6);
            DecDate.Text = AddElementsDictionary.Values.ElementAt(7);
            BookName.Text = AddElementsDictionary.Values.ElementAt(8);
            BookDecision.Text = AddElementsDictionary.Values.ElementAt(9);
            BookDate.Text = AddElementsDictionary.Values.ElementAt(10);
            ArchDecisionName.Text = AddElementsDictionary.Values.ElementAt(11);
            ArchReason.Text = AddElementsDictionary.Values.ElementAt(12);
            ArchDate.Text = AddElementsDictionary.Values.ElementAt(13);                         
        }

        protected void ButtonDotFileCreate_Click(object sender, EventArgs e)
        {

            Dictionary<string, string> AddElementsDictionary = Item.GetItems()[ReportsList.SelectedIndex];

            string sourceFile = "~/App_Data/Beta1Template.dotx";
            string targetFile = "~/App_Data/" + AddElementsDictionary.Values.ElementAt(0) + ".docx";
            if (File.Exists(Server.MapPath(targetFile)))
            {

                File.SetAttributes(Server.MapPath(targetFile), FileAttributes.Normal);
                File.Delete(Server.MapPath(targetFile));
            }
            File.Copy(Server.MapPath(sourceFile), Server.MapPath(targetFile), true);
            File.SetAttributes(Server.MapPath(targetFile), FileAttributes.Normal);
            using (WordprocessingDocument document = WordprocessingDocument.Open(Server.MapPath(targetFile), true))
            {
                document.ChangeDocumentType(WordprocessingDocumentType.Document);
                MainDocumentPart mainPart = document.MainDocumentPart;
                
                int CurrentBookMarkId = 1;
                foreach (BookmarkStart bookmarkStart in mainPart.RootElement.Descendants<BookmarkStart>())
                {
                    if (AddElementsDictionary.ContainsKey(bookmarkStart.Name))
                    {
                        Run InsertToBookmarkOperation = new Run(new Text(AddElementsDictionary.ElementAt(CurrentBookMarkId).Value));
                        bookmarkStart.Parent.InsertAfter(InsertToBookmarkOperation, bookmarkStart);
                        CurrentBookMarkId++;
                    }
                }
                mainPart.Document.Save();                                               
            }                                                                                    
        }
    }
}
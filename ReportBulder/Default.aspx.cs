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
            {   
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

            DocID.Text = AddElementsDictionary.Values.ElementAt(0);
            DocNumber.Text = AddElementsDictionary.Values.ElementAt(1);
            DocType.Text = AddElementsDictionary.Values.ElementAt(2);
            DocRegDate.Text = AddElementsDictionary.Values.ElementAt(3);
            DocDep.Text = AddElementsDictionary.Values.ElementAt(4);
            DocSub.Text = AddElementsDictionary.Values.ElementAt(5);

            OurSide.Text = AddElementsDictionary.Values.ElementAt(6);
            Contragent.Text = AddElementsDictionary.Values.ElementAt(7);
            Manager.Text = AddElementsDictionary.Values.ElementAt(8);
            DocSignDate.Text = AddElementsDictionary.Values.ElementAt(9);
            Status.Text = AddElementsDictionary.Values.ElementAt(10);

            Lower1.Text = AddElementsDictionary.Values.ElementAt(11);
            BookKeeper1.Text = AddElementsDictionary.Values.ElementAt(12);
            Finance1.Text = AddElementsDictionary.Values.ElementAt(13);
            FinDirector1.Text = AddElementsDictionary.Values.ElementAt(14);
            Lower2.Text = AddElementsDictionary.Values.ElementAt(15);
            BookKeeper2.Text = AddElementsDictionary.Values.ElementAt(16);
            Finance2.Text = AddElementsDictionary.Values.ElementAt(17);
            FinDirector2.Text = AddElementsDictionary.Values.ElementAt(18);

            CardCreatedDate.Text = AddElementsDictionary.Values.ElementAt(19);
            Author.Text = AddElementsDictionary.Values.ElementAt(20);
            Project.Text = AddElementsDictionary.Values.ElementAt(21);
            ArchDate.Text = AddElementsDictionary.Values.ElementAt(22);
            ArchBy.Text = AddElementsDictionary.Values.ElementAt(23);
        }

        protected void ButtonDotFileCreate_Click(object sender, EventArgs e)
        {

            Dictionary<string, string> AddElementsDictionary = Item.GetItems()[ReportsList.SelectedIndex];

            string sourceFile = "~/App_Data/DocTemplate.dotx";
            string targetFile = "~/App_Data/" + "ArchiveFile_" + AddElementsDictionary.Values.ElementAt(0) + "_" + AddElementsDictionary.Values.ElementAt(1) + ".docx";
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
                int CurrentBookMarkId = 0;
                foreach (BookmarkStart bookmarkStart in mainPart.RootElement.Descendants<BookmarkStart>())
                {
                    if (AddElementsDictionary.ContainsKey(bookmarkStart.Name))
                    {
                        RunProperties rPr = new RunProperties(
                        new RunFonts()
                        {
                            Ascii = "Arial"
                        }, 
                        new Bold(),
                        new Color(){ Val = "green" } 
                        );
                        Run InsertToBookmarkOperation = new Run(new Text(AddElementsDictionary.ElementAt(CurrentBookMarkId).Value));
                        InsertToBookmarkOperation.PrependChild<RunProperties>(rPr);
                        bookmarkStart.Parent.InsertAfter(InsertToBookmarkOperation, bookmarkStart);
                        CurrentBookMarkId++;
                    }
                }

                mainPart.Document.Save();                                               
            }                                                                                    
        }
    }
}
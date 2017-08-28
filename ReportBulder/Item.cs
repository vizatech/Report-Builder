using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReportBulder
{
    public static class Item
    {   
        public static List<Dictionary<string, string>> GetItems()
        {
            List<Dictionary<string, string>> items = new List<Dictionary<string, string>>();

            Dictionary<string, string> AddElementsDictionary = new Dictionary<string, string>();

            AddElementsDictionary.Add("DocTitle", "DocTitle1");
            AddElementsDictionary.Add("DocNumber", "1");
            AddElementsDictionary.Add("DocDate", "22.04.2015");
            AddElementsDictionary.Add("PartnerLabel", "Канал 1+1");
            AddElementsDictionary.Add("ExtraList", "ОО.23, Приложение 7b3.txt");
            AddElementsDictionary.Add("LoyerName", "Пётр Васильев");
            AddElementsDictionary.Add("Decision", "Отказ");
            AddElementsDictionary.Add("DecDate", "22.04.2015");
            AddElementsDictionary.Add("BookName", "Ирина Клеменчук");
            AddElementsDictionary.Add("BookDecision", "Отказ");
            AddElementsDictionary.Add("BookDate", "22.04.2015");
            AddElementsDictionary.Add("ArchDecisionName", "Григорий Приходько");
            AddElementsDictionary.Add("ArchReason", "Отказ");
            AddElementsDictionary.Add("ArchDate", "23.04.2015");

            items.Add(AddElementsDictionary);

            AddElementsDictionary = new Dictionary<string, string>();
            AddElementsDictionary.Add("DocTitle", "DocTitle2");
            AddElementsDictionary.Add("DocNumber", "2");
            AddElementsDictionary.Add("DocDate", "11.03.2016");
            AddElementsDictionary.Add("PartnerLabel", "Канал 2+2");
            AddElementsDictionary.Add("ExtraList", "JJ23.txt, ooo.docx");
            AddElementsDictionary.Add("LoyerName", "Григорий Ярчук");
            AddElementsDictionary.Add("Decision", "Принято");
            AddElementsDictionary.Add("DecDate", "20.03.2016");
            AddElementsDictionary.Add("BookName", "Ирина Клеменчук");
            AddElementsDictionary.Add("BookDecision", "Принято");
            AddElementsDictionary.Add("BookDate", "22.04.2016");
            AddElementsDictionary.Add("ArchDecisionName", "Григорий Приходько");
            AddElementsDictionary.Add("ArchReason", "Принято");
            AddElementsDictionary.Add("ArchDate", "23.04.2016");

            items.Add(AddElementsDictionary);

            AddElementsDictionary = new Dictionary<string, string>();
            AddElementsDictionary.Add("DocTitle", "DocTitle3");
            AddElementsDictionary.Add("DocNumber", "3");
            AddElementsDictionary.Add("DocDate", "27.10.2016");
            AddElementsDictionary.Add("PartnerLabel", "Канал 3+3");
            AddElementsDictionary.Add("ExtraList", "ОО.23, Приложение 7b3.txt");
            AddElementsDictionary.Add("LoyerName", "Пётр Васильев");
            AddElementsDictionary.Add("Decision", "Отказ");
            AddElementsDictionary.Add("DecDate", "27.10.2016");
            AddElementsDictionary.Add("BookName", "Ирина Клеменчук");
            AddElementsDictionary.Add("BookDecision", "Принято");
            AddElementsDictionary.Add("BookDate", "27.10.2016");
            AddElementsDictionary.Add("ArchDecisionName", "Григорий Приходько");
            AddElementsDictionary.Add("ArchReason", "Отказ");
            AddElementsDictionary.Add("ArchDate", "30.10.2016"); 

            items.Add(AddElementsDictionary);

            return items;
        }
    }              
}
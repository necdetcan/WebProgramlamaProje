using System;
using System.Collections.Generic;

namespace WebProje.Models
{
    public partial class Takvim
    {
        public int Id { get; set; }
        public string YarisAdi { get; set; }
        public string Birinci { get; set; }
        public string Ikinci { get; set; }
        public string Ucuncu { get; set; }
        public string Dorduncu { get; set; }
        public string Besinci { get; set; }
        public string Altinci { get; set; }
        public string Yedinci { get; set; }
        public string Sekizinci { get; set; }
        public string Dokuzuncu { get; set; }
        public string Onuncu { get; set; }
        public string OnBirinci { get; set; }
        public string OnIkinci { get; set; }
        public string OnUcuncu { get; set; }
        public string OnDorduncu { get; set; }
        public string OnBesinci { get; set; }
        public string OnAltinci { get; set; }
        public string OnYedinci { get; set; }
        public string OnSekizinci { get; set; }
        public string OnDokuzuncu { get; set; }
        public string Yirminci { get; set; }
        public string Ulke { get; set; }
        public string EnHizliTur { get; set; }
        public string PistAdi { get; set; }
        public DateTime? Tarih { get; set; }
    }
}

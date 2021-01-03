using System;
using System.Collections.Generic;

namespace WebProje.Models
{
    public partial class Takimlar
    {
        public int Id { get; set; }
        public string TakimAdi { get; set; }
        public string TakimMerkezi { get; set; }
        public string TakimPatronu { get; set; }
        public string TeknikSef { get; set; }
        public string Sasi { get; set; }
        public string GucUnitesi { get; set; }
        public string KurulusTarihi { get; set; }
        public int? DunyaSampiyonluklari { get; set; }
        public string EnIyiSonuc { get; set; }
        public int? PolePozisyonu { get; set; }
        public int? EnHizliTur { get; set; }
        public string MerkezEng { get; set; }
    }
}

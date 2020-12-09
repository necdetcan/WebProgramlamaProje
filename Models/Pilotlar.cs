using System;
using System.Collections.Generic;

namespace WebProje.Models
{
    public partial class Pilotlar
    {
        public int Id { get; set; }
        public string Soyad { get; set; }
        public string Ad { get; set; }
        public int? Yas { get; set; }
        public string Takim { get; set; }
        public string Biyografi { get; set; }
        public int? YarisGalibiyet { get; set; }
        public int? PodyumSayi { get; set; }
        public string DogumYeri { get; set; }
        public int? SampiyonlukSayisi { get; set; }
        public int? EnHizliTur { get; set; }
        public int? Pole { get; set; }
        public string Ulke { get; set; }
        public int? YarisSayisi { get; set; }
    }
}

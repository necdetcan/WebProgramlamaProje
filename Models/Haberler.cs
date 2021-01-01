using System;
using System.Collections.Generic;

namespace WebProje.Models
{
    public partial class Haberler
    {
        public int Id { get; set; }
        public string HaberTr { get; set; }
        public string HaberEng { get; set; }
        public int? Begeni { get; set; }
        public int? Dislike { get; set; }
        public DateTime? Tarih { get; set; }
        public string Baslik { get; set; }
        public string BaslikEng { get; set; }
    }
}

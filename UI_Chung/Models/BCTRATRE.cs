using System;
using System.Collections.Generic;

namespace UI_Chung.Models;

public partial class BCTRATRE
{
    public int ID { get; set; }

    public string? MaBCTraTre { get; set; }

    public DateTime Ngay { get; set; }

    public virtual ICollection<CTBCTRATRE> CTBCTRATRE { get; } = new List<CTBCTRATRE>();
}

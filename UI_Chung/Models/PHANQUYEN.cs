using System;
using System.Collections.Generic;

namespace UI_Chung.Models;

public partial class PHANQUYEN
{
    public int ID { get; set; }

    public string? MaPhanQuyen { get; set; }

    public string MaHanhDong { get; set; } = null!;

    public string MoTa { get; set; } = null!;

    public bool IsDeleted { get; set; }

    public virtual ICollection<TAIKHOAN> TAIKHOAN { get; } = new List<TAIKHOAN>();
}

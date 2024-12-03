using System;
using System.Collections.Generic;

namespace UI_Chung.Models;

public partial class ADMIN
{
    public int ID { get; set; }

    public string? MaAdmin { get; set; }

    public int IDTaiKhoan { get; set; }

    public virtual TAIKHOAN IDTaiKhoanNavigation { get; set; } = null!;
}

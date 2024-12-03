﻿using System;
using System.Collections.Generic;

namespace UI_Chung.Models;

public partial class TAIKHOAN
{
    public int ID { get; set; }

    public string? MaTaiKhoan { get; set; }

    public string TenTaiKhoan { get; set; } = null!;

    public string MatKhau { get; set; } = null!;

    public string Email { get; set; } = null!;

    public DateTime SinhNhat { get; set; }

    public string DiaChi { get; set; } = null!;

    public string SDT { get; set; } = null!;

    public bool TrangThai { get; set; }

    public int IDPhanQuyen { get; set; }

    public bool IsDeleted { get; set; }

    public DateTime NgayMo { get; set; }

    public DateTime NgayDong { get; set; }

    public string HoTen { get; set; } = null!;

    public string GioiTinh { get; set; } = null!;

    public virtual ICollection<ACTIVE_SESSION> ACTIVE_SESSION { get; } = new List<ACTIVE_SESSION>();

    public virtual ICollection<ADMIN> ADMIN { get; } = new List<ADMIN>();

    public virtual ICollection<DOCGIA> DOCGIA { get; } = new List<DOCGIA>();

    public virtual PHANQUYEN IDPhanQuyenNavigation { get; set; } = null!;
}

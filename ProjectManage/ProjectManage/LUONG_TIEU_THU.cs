//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectManage
{
    using System;
    using System.Collections.Generic;
    
    public partial class LUONG_TIEU_THU
    {
        public int IDDOITUONG { get; set; }
        public string IDLOAI { get; set; }
        public Nullable<int> SOLUONG_1NGAY { get; set; }
    
        public virtual DOI_TUONG DOI_TUONG { get; set; }
        public virtual LOAI_THUCAN_PHANBON LOAI_THUCAN_PHANBON { get; set; }
    }
}

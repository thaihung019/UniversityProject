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
    
    public partial class TINH_TRANG_SUC_KHOE
    {
        public int IDDOITUONG { get; set; }
        public string IDBENH { get; set; }
        public string TINHTRANG { get; set; }
        public Nullable<int> CHIPHICHUATRI { get; set; }
    
        public virtual BENH BENH { get; set; }
        public virtual DOI_TUONG DOI_TUONG { get; set; }
    }
}

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
    
    public partial class NGUON_TIEU_THU
    {
        public NGUON_TIEU_THU()
        {
            this.THU = new HashSet<THU>();
        }
    
        public string IDNHATIEUTHU { get; set; }
        public string TENNHATIEUTHU { get; set; }
        public string SPTHUMUA { get; set; }
        public string DIACHI { get; set; }
        public string SDT { get; set; }
    
        public virtual ICollection<THU> THU { get; set; }
    }
}

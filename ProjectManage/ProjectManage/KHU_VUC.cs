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
    
    public partial class KHU_VUC
    {
        public KHU_VUC()
        {
            this.DOI_TUONG = new HashSet<DOI_TUONG>();
        }
    
        public string IDKHUVUC { get; set; }
        public string TENKHUVUC { get; set; }
    
        public virtual ICollection<DOI_TUONG> DOI_TUONG { get; set; }
    }
}

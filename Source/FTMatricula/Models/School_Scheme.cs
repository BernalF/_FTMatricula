//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FTMatricula.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class School_Scheme
    {
        public System.Guid SchoolID { get; set; }
        public System.Guid SchemeID { get; set; }
        public Nullable<System.DateTime> InsertDate { get; set; }
        public Nullable<System.Guid> InsertUserID { get; set; }
        public Nullable<System.DateTime> ModifyDate { get; set; }
        public Nullable<System.Guid> ModifyUserID { get; set; }
        public string IpAddress { get; set; }
    
        public virtual Scheme Scheme { get; set; }
        public virtual School School { get; set; }
    }
}

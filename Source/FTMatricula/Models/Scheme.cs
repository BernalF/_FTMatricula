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
    
    public partial class Scheme
    {
        public Scheme()
        {
            this.Scheme_Plan = new HashSet<Scheme_Plan>();
            this.Scheme_Requirement = new HashSet<Scheme_Requirement>();
            this.School_Scheme = new HashSet<School_Scheme>();
        }
    
        public System.Guid SchemeID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public System.Guid OwnerUserId { get; set; }
        public System.Guid CoordinatorUserId { get; set; }
        public Nullable<System.Guid> ModalityID { get; set; }
        public Nullable<System.DateTime> InsertDate { get; set; }
        public Nullable<System.Guid> InsertUserID { get; set; }
        public Nullable<System.DateTime> ModifyDate { get; set; }
        public Nullable<System.Guid> ModifyUserID { get; set; }
        public string IpAddress { get; set; }
    
        public virtual Modality Modality { get; set; }
        public virtual ICollection<Scheme_Plan> Scheme_Plan { get; set; }
        public virtual ICollection<Scheme_Requirement> Scheme_Requirement { get; set; }
        public virtual ICollection<School_Scheme> School_Scheme { get; set; }
    }
}

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
    
    public partial class Score
    {
        public Score()
        {
            this.Records = new HashSet<Record>();
        }
    
        public System.Guid? ScoreID { get; set; }
        public Nullable<System.Guid> StudentID { get; set; }
        public string Result { get; set; }
        public Nullable<System.DateTime> InsertDate { get; set; }
        public Nullable<System.Guid> InsertUserID { get; set; }
        public Nullable<System.DateTime> ModifyDate { get; set; }
        public Nullable<System.Guid> ModifyUserID { get; set; }
        public string IpAddress { get; set; }
    
        public virtual ICollection<Record> Records { get; set; }
        public virtual Course Course { get; set; }
    }
}

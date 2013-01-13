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
    
    public partial class Course
    {
        public Course()
        {
            this.Plan_Course = new HashSet<Plan_Course>();
            this.Scores = new HashSet<Score>();
            this.Student_Course = new HashSet<Student_Course>();
        }
    
        public System.Guid? CourseID { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public Nullable<int> TeachingHours { get; set; }
        public Nullable<decimal> Charge { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<System.DateTime> InsertDate { get; set; }
        public Nullable<System.Guid> InsertUserID { get; set; }
        public Nullable<System.DateTime> ModifyDate { get; set; }
        public Nullable<System.Guid> ModifyUserID { get; set; }
        public string IpAddress { get; set; }
    
        public virtual Requirement Requirement { get; set; }
        public virtual ICollection<Plan_Course> Plan_Course { get; set; }
        public virtual ICollection<Score> Scores { get; set; }
        public virtual ICollection<Student_Course> Student_Course { get; set; }
    }
}

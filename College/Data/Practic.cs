//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace College.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Practic
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int GroupId { get; set; }
        public string Specialty { get; set; }
        public int Hours { get; set; }
        public int TeacherId { get; set; }
    
        public virtual Group Group { get; set; }
        public virtual Teacher Teacher { get; set; }
    }
}

namespace WorkRequest.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EmployeeRequestModel : DbContext
    {
        public EmployeeRequestModel()
            : base("name=EmployeeRequestModel")
        {
        }

        public virtual DbSet<Request> Requests { get; set; }
        public virtual DbSet<Status> Status { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Status>()
                .Property(e => e.Status1)
                .IsUnicode(false);

            modelBuilder.Entity<Status>()
                .HasMany(e => e.Requests)
                .WithRequired(e => e.Status)
                .WillCascadeOnDelete(false);
        }
    }
}

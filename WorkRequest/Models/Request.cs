namespace WorkRequest.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Request")]
    public partial class Request
    {
        public int RequestID { get; set; }

        public int StatusID { get; set; }

        public string Description { get; set; }

        public virtual Status Status { get; set; }
    }
}

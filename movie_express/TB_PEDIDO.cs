//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace movie_express
{
    using System;
    using System.Collections.Generic;
    
    public partial class TB_PEDIDO
    {
        public TB_PEDIDO()
        {
            this.TB_PDPROD = new HashSet<TB_PDPROD>();
        }
    
        public int PEDI_ID { get; set; }
        public int US_ID { get; set; }
        public System.DateTime PEDI_DATA { get; set; }
        public decimal PEDI_VALOR { get; set; }
        public bool PEDI_PAGO { get; set; }
    
        public virtual ICollection<TB_PDPROD> TB_PDPROD { get; set; }
        public virtual TB_USER TB_USER { get; set; }
    }
}
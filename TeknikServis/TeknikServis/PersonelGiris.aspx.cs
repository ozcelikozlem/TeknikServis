using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeknikServis.TeknikServis
{
    public partial class PersonelGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ad = Session["KULLANICIADI"].ToString();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
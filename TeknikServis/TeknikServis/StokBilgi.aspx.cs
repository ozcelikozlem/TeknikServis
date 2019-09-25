using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using Oracle.DataAccess.Client;


namespace TeknikServis.TeknikServis.Personel
{
    public partial class StokBilgi : System.Web.UI.Page
    {
        OleDbConnection conn = new OleDbConnection("provider=OraOLEDB.Oracle;user id=hr;password=123456;Data Source=constr");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void arama_Click(object sender, EventArgs e)
        {
            string aranan = "SELECT *FROM TEDARIKSTOK WHERE STOKMALZEMEADI '%" + ara.Text + "%'";

            OleDbDataAdapter com = new OleDbDataAdapter(aranan, conn);
            DataSet ds = new DataSet();
            //  com = Fill(ds);
           // GridView1.DataSource = ds;
            // GridView1.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
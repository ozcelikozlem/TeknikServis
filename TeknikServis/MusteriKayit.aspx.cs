using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;


namespace TeknikServis.TeknikServis.Personel
{
    public partial class MusteriKayit : System.Web.UI.Page
    {
        public OracleConnection con = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new OracleConnection("Data Source=(DESCRIPTION="
                 + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
                 + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
                 + "User Id=HR;Password=123456;");

            try
            {
                con.Open();
            }
            catch (Exception exception)
            {
                TextBox7.Text = exception.ToString();
                return;
            }
            finally
            {

            }

        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {

            string sql = "insert into MUSTERI(MUSTERIAD,MUSTERISOYAD,MUSTERITCNO,MUSTERIMAIL,MUSTERITELEFON,MUSTERIADRES) values ('" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "')";
            OracleCommand com = new OracleCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            Response.Redirect("UrunKayit.aspx");

        }
    }
}
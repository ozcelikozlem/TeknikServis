using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace TeknikServis.TeknikServis
{
    public partial class UrunKayit : System.Web.UI.Page
    {
        public OracleConnection con = null;
        void Page_Load(object sender, EventArgs e)
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
                TextBox1.Text = exception.ToString();
                return;
            }
            finally
            {

            }
        }

        protected void kayıt_Click(object sender, EventArgs e)
        {

            string sql = "insert into URUN(URUNAD,URUNTURU,URUNMARKA,URUNSORUNU) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            OracleCommand com = new OracleCommand(sql, con);
            com.ExecuteNonQuery();
            string sqlh = "insert into HIZMET(HIZMETTURU,HIZMETADI) values ('" + DropDownList1.Text + "','" + DropDownList2.Text + "')";
            OracleCommand comh = new OracleCommand(sqlh, con);
            comh.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Kayıt Tamamlandı.');</script>");
            Response.Redirect("PersonelGiris.aspx");
        }
    }
}
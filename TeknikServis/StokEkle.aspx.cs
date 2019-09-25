using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace TeknikServis.TeknikServis
{
    public partial class Ekle : System.Web.UI.Page
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
                TextBox1.Text = exception.ToString();
                return;
            }
            finally
            {

            }

        }

        protected void Kayit_Click(object sender, EventArgs e)
        {
            string sql = "insert into TEDARIKSTOK(STOKMALZEMEADI,STOKADET,STOKFIYAT) values ('" + TextBox8.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            OracleCommand com = new OracleCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            Response.Redirect("StokEkle.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            TextBox8.Text = row.Cells[1].Text;
            TextBox1.Text = row.Cells[2].Text;
            TextBox2.Text = row.Cells[3].Text;
           
        }
    }
}
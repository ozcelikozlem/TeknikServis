using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
namespace TeknikServis
{
    public partial class contact : System.Web.UI.Page
    {
        public OracleConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new OracleConnection("Data Source=(DESCRIPTION="
                 + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
                 + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
                 + "User Id=HR;Password=123456;");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                con.Open();
                string MAILGONDEREN = "Ziyaretci";
                string MAILALICI = "Teknik Servis";
                string sql = "insert into MAIL(MAILAD,MAILMESAJ,MAILEPOSTA,MAILGONDEREN,MAILALICI) values ('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + MAILGONDEREN + "','" + MAILALICI + "')";
                OracleCommand com = new OracleCommand(sql, con);
                com.ExecuteNonQuery();
                
               Page.ClientScript.RegisterClientScriptBlock (this.GetType(),"Başlık","< script > alert('Mail Başarılı Gönderildi'); </ script >");

        }
            catch (Exception)
            {

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "< script > alert('Mail Gönderilemedi'); </ script >");
            }

    con.Close();
            con.Dispose();
        }
    }
}
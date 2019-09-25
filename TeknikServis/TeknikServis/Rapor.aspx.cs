using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;

namespace TeknikServis.TeknikServis
{
    public partial class Rapor : System.Web.UI.Page
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
            //int a =  Convert.ToInt32(TextBox1.Text);
            con.Open();
            OracleCommand sor1 = new OracleCommand();
            sor1.Connection = con;
            sor1.CommandText = "pr_1";
            sor1.CommandType = System.Data.CommandType.StoredProcedure;
            sor1.Parameters.Add("p_TCNO",OracleDbType.Decimal).Value=decimal.Parse(TextBox1.Text);
            sor1.Parameters.Add("p_adetkayit", OracleDbType.Decimal).Direction=ParameterDirection.Output;
           
            sor1.ExecuteNonQuery();

            Label1.Text = sor1.Parameters["p_adetkayit"].Value.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Label2.Text = TextBox2.Text;
            con.Open();
            OracleCommand sor2 = new OracleCommand();
            sor2.Connection = con;
            sor2.CommandText = "pr_2";
            sor2.CommandType = System.Data.CommandType.StoredProcedure;
            sor2.Parameters.Add("p_KullaniciAd", OracleDbType.Varchar2).Value =TextBox2.Text;
            sor2.Parameters.Add("p_adetfatura", OracleDbType.Decimal).Direction = ParameterDirection.Output;

            sor2.ExecuteNonQuery();

            Label3.Text = sor2.Parameters["p_adetfatura"].Value.ToString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            OracleCommand cm = new OracleCommand("select * from Musteri where MusteriID in (select urunmusteriID from urun where urundurumu='" + DropDownList1.Text+ "')",con);
            OracleDataReader rd = cm.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Close();
            con.Close();
        }
    }
}
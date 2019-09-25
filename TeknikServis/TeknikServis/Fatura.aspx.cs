using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
namespace TeknikServis.TeknikServis.Personel
{
    public partial class Fatura : System.Web.UI.Page
    {
        public OracleConnection con = null;
        string teknikID;
        string faturaID;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime tarih = DateTime.Now;
            Label1.Text = tarih.ToString();
            con = new OracleConnection("Data Source=(DESCRIPTION="
             + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
             + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
             + "User Id=HR;Password=123456;");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            con.Open();
            string ad = Session["KULLANICIADI"].ToString();
            string sql1 = "select teknikservisID from TSKullanici where KullaniciAdi='" + ad + "'";
            OracleCommand com1 = new OracleCommand(sql1, con);
            OracleDataReader oku = com1.ExecuteReader();
            if (oku.Read())
            {

                teknikID = oku[0].ToString();
            }
            string dt = Label1.Text;

            string sql = "insert into FATURABILGILERI(FATURATARIHI,FATURATUTAR,TESLIMBILGISI,TEKNIKSERVISFID) values ('"+DateTime.Now+"','" + TextBox1.Text + "','" + DropDownList1.Text + "','" + teknikID + "')";
            OracleCommand com = new OracleCommand(sql, con);
            com.ExecuteNonQuery();

            string sql2= "select max(faturaID )from FATURABILGILERI faturaID";
            OracleCommand com2 = new OracleCommand(sql2, con);
            OracleDataReader oku2 = com2.ExecuteReader();
            if (oku2.Read())
            {

                faturaID = oku2[0].ToString();
            }

            string sql3 = ("Update  URUN set URUNFATURAID='" + faturaID + "' where urunID='" + TextBox2.Text + "' ");
            OracleCommand com3 = new OracleCommand(sql3, con);

            com3.ExecuteNonQuery();

            Response.Redirect("Fatura.aspx");

            Label3.Text = faturaID;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            this.Label2.Text = this.Calendar2.SelectedDate.ToShortDateString()+" "+ this.Calendar2.SelectedDate.ToLongTimeString();

            
        }
    }
}
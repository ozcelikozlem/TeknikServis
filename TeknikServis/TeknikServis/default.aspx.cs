using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace TeknikServis.TeknikServis
{
    public partial class _default : System.Web.UI.Page
    {

        public OracleConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            con = new OracleConnection("Data Source=(DESCRIPTION="
                   + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
                   + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
                   + "User Id=HR;Password=123456;");
            con.Open();

        }

        protected void btn_Giris_Click(object sender, EventArgs e)
        {
            string ad = txtAd.Text;
            string sifre = txtsifre.Text;
           
            OracleCommand com = new OracleCommand("select * from TSKULLANICI K, TEKNIKSERVIS U WHERE U.TEKNIKSERVISID=K.TEKNIKSERVISID  AND U.TEKNIKSERVISUNVAN='Yönetici' AND KULLANICIADI='" + ad + "' and KULLANICISIFRE='" + sifre + "' ", con);
            OracleDataReader oku = com.ExecuteReader();
           
            if (oku.Read())
            {

                Session.Add("KULLANICIADI", ad);
                Response.Redirect("yonetici.aspx");
              
                oku.Close();
                
            }

            OracleCommand comgiris = new OracleCommand("select * from TSKULLANICI K, TEKNIKSERVIS U WHERE U.TEKNIKSERVISID=K.TEKNIKSERVISID  AND U.TEKNIKSERVISUNVAN='Personel' AND KULLANICIADI='" + ad + "' and KULLANICISIFRE='" + sifre + "' ", con);
            OracleDataReader okuma = comgiris.ExecuteReader();
            if (okuma.Read())
            {
                Session.Add("KULLANICIADI", ad);
                Response.Redirect("PersonelGiris.aspx");

                okuma.Close();

            }
            else
            {
                Response.Write("<script>alert('Kullanıcı adınız veya şifreniz yanlış giriş başarısız')</script>");

            }


        }
    }
}
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
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        public OracleConnection con = null;
        string teknikId;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new OracleConnection("Data Source=(DESCRIPTION="
                   + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
                   + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
                   + "User Id=HR;Password=123456;");

            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql2 = "select teknikservisID from TEKNIKSERVIS where TEKNIKSERVISAD='"+TextBox1.Text+"' AND TEKNIKSERVISEPOSTA='"+TextBox2.Text+"'";
            OracleCommand com2 = new OracleCommand(sql2, con);
            OracleDataReader oku2 = com2.ExecuteReader();
            if (oku2.Read())
            {

                teknikId = oku2[0].ToString();
            }
            
            string sql1 = "select teknikservisID from TSKullanici where KullaniciAdi='" + TextBox3.Text + "'";
            OracleCommand com1 = new OracleCommand(sql1, con);
            OracleDataReader oku = com1.ExecuteReader();
            if (oku.Read())
            {
                Label1.Text = "mevcut isim tekrar deneyiniz";
                
            }
            else
            {
                string sql = "insert into TSKULLANICI(KULLANICIADI,KULLANICISIFRE,TEKNIKSERVISID) values ('" + TextBox3.Text + "','" + TextBox4.Text + "','" + teknikId + "')";
                OracleCommand com = new OracleCommand(sql, con);
                com.ExecuteNonQuery();
                con.Close();
                con.Dispose();
                Response.Redirect("KullaniciEkle.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}
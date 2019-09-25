using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Oracle.DataAccess.Client;

namespace TeknikServis.TeknikServis.Personel
{
    public partial class Mail : System.Web.UI.Page
    {
        public OracleConnection con = null;
        string teknikID;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new OracleConnection("Data Source=(DESCRIPTION="
               + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
               + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
               + "User Id=HR;Password=123456;");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {    
            con.Open();
            string ad = Session["KULLANICIADI"].ToString();
            //try
            //{
            //MailMessage mesajım = new MailMessage();
            //SmtpClient istemci = new SmtpClient();
            //istemci.Credentials = new System.Net.NetworkCredential("destekteamm@outlook.com", "tuoz12345");
            //istemci.Port = 587;
            //istemci.Host = "smtp.gmail.com";
            //istemci.EnableSsl = true;
            //mesajım.To.Add(TextBox2.Text);
            //mesajım.From = new MailAddress("destekteamm@outlook.com");
            //mesajım.Body = "Ziyaretci: " + TextBox3.Text;

            //mesajım.Subject = TextBox2.Text;

            //istemci.Send(mesajım);

            //Response.Write("Mail başarıyla gönderilmiştir.");
            string myeposta = "destekteamm@outlook.com";
               // con.Open();
                string MAILALICI = "Ziyaretci";
                string MAILGONDEREN = "Teknik Servis";

               // string  musteriID;
               

                string sql1 = "select teknikservisID from TSKullanici where KullaniciAdi='"+ad+"'";
                OracleCommand com1= new OracleCommand(sql1, con);
                OracleDataReader oku = com1.ExecuteReader();
                if (oku.Read())
                {

                    teknikID = oku[0].ToString();
                }
                string sql = "insert into MAIL(MAILAD,MAILMESAJ,MAILEPOSTA,MAILGONDEREN,MAILALICI,MAILTEKNIKSERVISID) values ('" + ad + "','" + TextBox1.Text + "','" + myeposta + "','" + MAILGONDEREN + "','" + MAILALICI + "','"+teknikID+"')";
                OracleCommand com = new OracleCommand(sql, con);
                com.ExecuteNonQuery();

                string sql3 = ("Update  Mail set MAILTEKNIKSERVISID='"+teknikID+ "' where MAILEPOSTA='"+TextBox2.Text+ "' and MAILAD='"+TextBox3.Text+"'");
                OracleCommand com3 = new OracleCommand(sql3, con);
              
                com3.ExecuteNonQuery();

            //Response.Redirect("Mail.aspx");
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Talep isteğiniz iletilmiştir.');</script>");
            //}



            //catch (Exception)
            //{
            //    Response.Write("<script>alert('Mail Gönderilemedi')</script>");
            //}
        }
    }
}
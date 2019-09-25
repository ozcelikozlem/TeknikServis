using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace TeknikServis
{
    public partial class support : System.Web.UI.Page
    {
        public OracleConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new OracleConnection("Data Source=(DESCRIPTION="
                  + "(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521)))"
                  + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=ORCL)));"
                  + "User Id=HR;Password=123456;");
            con.Open();
        

            OracleCommand com = new OracleCommand("select * from MUSTERI", con);
            OracleDataReader oku = com.ExecuteReader();
            /* while(oku.Read())
             {
                TextBox1.Text = "MUSTERIAD";
                TextBox2.Text = "MUSTERISOYAD";
                TextBox3.Text = "MUSTERIMAIL";
                 TextBox4.Text = "MUSTERITELEFON";

             }*/
            //URUN
            OracleCommand comu = new OracleCommand("select * from URUN", con);
            OracleDataReader okuu = com.ExecuteReader();
            /*  while (okuu.Read())
              {
                  TextBox6.Text = "URUNAD";
                  TextBox7.Text = "URUNTURU";
                  TextBox8.Text = "URUNMARKASI";
                  TextBox5.Text = "URUNSORUNU";

              }*/
            //HIZMET
            OracleCommand comh = new OracleCommand("select * from HIZMET", con);
            OracleDataReader okuh = com.ExecuteReader();
            /*while (okuh.Read())
            {
                DropDownList4.DataTextField = "HIZMETTURU";
                DropDownList3.DataTextField = "HIZMETADI";

            }
            */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string sqlm = "insert into MUSTERI(MUSTERIAD,MUSTERISOYAD,MUSTERIMAIL,MUSTERITELEFON) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                OracleCommand comm = new OracleCommand(sqlm, con);
                comm.ExecuteNonQuery();
                string durum = "Onay Bekliyor";
                string sql = "insert into URUN(URUNAD,URUNTURU,URUNDURUMU,URUNMARKA,URUNSORUNU) values ('" + TextBox6.Text + "','" + TextBox7.Text + "','" + durum + "','" + TextBox8.Text + "','" + TextBox5.Text + "') ";
                OracleCommand com = new OracleCommand(sql, con);

                com.ExecuteNonQuery();


                string sqls = "UPDATE URUN SET URUNMUSTERIID=(SELECT MAX(MUSTERIID) FROM MUSTERI  ) WHERE URUNID =(SELECT MAX(URUNID) FROM URUN) ";
                OracleCommand comss = new OracleCommand(sqls, con);
                comss.ExecuteNonQuery();



                string sqlsh = "update URUN SET URUNHIZMETID= (select HIZMETID FROM HIZMET WHERE HIZMETTURU='" + DropDownList4.Text + "')";
                OracleCommand comsh = new OracleCommand(sqlsh, con);
                comsh.ExecuteNonQuery();



                /*OracleCommand coms = new OracleCommand(" SELECT MAX(MUSTERIID) FROM MUSTERI", con);
                OracleDataReader okus = coms.ExecuteReader();*/

                con.Close();
                con.Dispose();
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Talep isteğiniz iletilmiştir.');</script>");
            }

            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Hatalı bilgi girdiniz.Tekrar deneyin');</script>");
                Label1.Text = "Hatalı bilgi girdiniz tekrar deneyiniz.";

            }
            
            }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }

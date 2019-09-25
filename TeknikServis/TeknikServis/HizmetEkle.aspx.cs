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
    public partial class HizmetEkle : System.Web.UI.Page
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

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            string sql = "insert into HIZMET(HIZMETADI,HIZMETTURU,HIZMETUCRETI) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text +"')";
            OracleCommand com = new OracleCommand(sql, con);
            com.ExecuteNonQuery();
            con.Close();
            con.Dispose();
            Response.Redirect("HizmetEkle.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application();

            //excel.Visible = true;

            //Microsoft.Office.Interop.Excel.Workbook workbook = excel.Workbooks.Add(System.Reflection.Missing.Value);

            //Microsoft.Office.Interop.Excel.Worksheet sheet1 = (Microsoft.Office.Interop.Excel.Worksheet)workbook.Sheets[1];

            //int StartCol = 1;

            //int StartRow = 1;

            //for (int j = 0; j < GridView1.Columns.Count; j++)
            //{

            //    Microsoft.Office.Interop.Excel.Range myRange = (Microsoft.Office.Interop.Excel.Range)sheet1.Cells[StartRow, StartCol + j];

            //    myRange.Value2 = GridView1.Columns[j].HeaderText;

            //}

            //StartRow++;

            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{

            //    for (int j = 0; j <GridView1.Columns.Count; j++)
            //    {

            //        try
            //        {

            //            Microsoft.Office.Interop.Excel.Range myRange = (Microsoft.Office.Interop.Excel.Range)sheet1.Cells[StartRow + i, StartCol + j];

            //            myRange.Value2 = GridView1[j, i].Value == null ? "" : GridView1[j, i].Value;

            //        }

            //        catch
            //        {
            //            ;
            //        }

            //    }

            //}



        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("default.aspx");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}
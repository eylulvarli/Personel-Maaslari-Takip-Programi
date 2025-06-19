using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class bolumverigirisformu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Bolum_Adi"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Bolum_Tel"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["Yonetici_ID"].DefaultValue = TextBox4.Text;



            int s = SqlDataSource1.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni Bölüm Başarı ile Eklendi";
                Label1.Visible = true;

            }
            else
                Label1.Text = "Yeni Bölüm Kaydı Başarısız. Verilerini Kontrol Edip Tekrar Deneyiniz.";
            Label1.Visible = true;

        }
    }
}
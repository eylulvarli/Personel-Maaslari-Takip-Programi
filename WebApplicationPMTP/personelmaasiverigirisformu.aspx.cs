using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class personelmaasıverigirisformu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["Pers_ID"].DefaultValue = DropDownList3.SelectedValue;
            SqlDataSource3.InsertParameters["Maas_Tarihi"].DefaultValue = TextBox4.Text;
            SqlDataSource3.InsertParameters["Maas_Tutari"].DefaultValue = TextBox5.Text;
            SqlDataSource3.InsertParameters["Maas_Komisyonu"].DefaultValue = TextBox6.Text;
            SqlDataSource3.InsertParameters["Ay_ID"].DefaultValue = DropDownList4.SelectedValue;

            int s = SqlDataSource3.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Verisi: <b>" + DropDownList3.SelectedItem + "</b><p>Başarı ile girildi";
                Label1.Visible = true;

            }
            else
                Label1.Text = "Yeni Personel Maaş Kaydı Başarısız. Verilerini Kontrol Edip Tekrar Deneyiniz.";
            Label1.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
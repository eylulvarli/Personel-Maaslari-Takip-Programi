using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class personelegoremaaslarraporu : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                int selectedPersonelId = int.Parse(DropDownList1.SelectedValue);

            
            SqlDataSource1.SelectCommand = "SELECT [Maas_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam], [Maas_Yili] " +
                                          "FROM [tbl_Maaslar] WHERE [Pers_ID] = @Pers_ID";

            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("Pers_ID", selectedPersonelId.ToString());

            
            Repeater1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

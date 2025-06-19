using System;

namespace WebApplication10
{
    public partial class Login : System.Web.UI.Page
    {
     
        private const string validUsername = "admin";
        private const string validPassword = "12345";

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            if (txtUsername.Text == validUsername && txtPassword.Text == validPassword)
            {
                
                Session["LoggedIn"] = true;

                
                Response.Redirect("default.aspx");
            }
            else
            {
                
                lblMessage.Text = "Geçersiz kullanıcı adı veya şifre!";
                lblMessage.Visible = true;
            }
        }

        
        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}

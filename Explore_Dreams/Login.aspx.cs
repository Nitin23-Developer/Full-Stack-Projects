using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Explore_Dreams
{
    public partial class Login : System.Web.UI.Page
    {
        string connection = "server=.;database=Explore_Dreams;Integrated Security=true;";
        SqlConnection con = null;
        SqlCommand cmd = null;
        string data;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void cleartext()
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox1.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            try
            {
                con = new SqlConnection(connection);
              
                string pq = "Insert into Login(Username,Password) values(@us,@pa)";
                cmd = new SqlCommand(pq, con);
                cmd.Parameters.AddWithValue("@us", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pa", TextBox2.Text);
             
                con.Open();
                int p = cmd.ExecuteNonQuery();
                if (p > 0)
                {
                    Response.Write("<script>alert('login Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('login does not successfull')</script>");
                }
                cleartext();
                /*
                cmd.ExecuteNonQuery();
                Label2.Text = "Login Successfully";
                cleartext();
                */
            }
            catch(Exception ep)
            {
                Response.Write("<script>(' ep.ToString()')</script");
            }
            finally
            {
                con.Close();
            }

            
                Response.Redirect("~/Default.aspx");
          
             

        }

        

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string res = args.Value;
            int len = res.Length;
            if (len < 15)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}
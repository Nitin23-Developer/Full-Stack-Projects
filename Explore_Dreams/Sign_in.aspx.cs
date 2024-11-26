using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Explore_Dreams
{
    public partial class Sign_in : System.Web.UI.Page
    {
        string connection = "server=.;database=Explore_Dreams;Integrated security=true;";
        SqlConnection con = null;
        SqlCommand cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "owner" && TextBox2.Text =="owner" )
            {
                // storing in session variable

                Session["Username"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
                

            }
          
            con = new SqlConnection(connection);
            con.Open();
            string k = null;
            string dr = "Select * from Login where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            cmd = new SqlCommand(dr, con);
            SqlDataReader pq = cmd.ExecuteReader();
            string l = null;
            if (pq.Read())
            {
                k = pq["Password"].ToString();
                l = pq["Username"].ToString();
                Session["Username"] = l;
                if (k == "User")
                {
                    Response.Redirect("User.aspx");
                }
                else if (k == "owner")
                {
                    Response.Redirect("Owner.aspx");
                }
                else
                {
                    /*  Label7.Text = "Invalid username or password"; */
                    Response.Write("<script>('Invalid Userename or password')</script>");
                }
                pq.Close();
                con.Close();

            }
        }
    }
}
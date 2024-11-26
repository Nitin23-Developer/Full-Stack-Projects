using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Explore_Dreams
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Label4.Text = Application["Company"].ToString();
            int add = Convert.ToInt32(Application["Count"]);
            add = add + 1;
            Application["Count"] = add;
              Label5.Text = "Visitors : " + add.ToString(); 
          /*  Response.Write("<script>('Visitors : '+ add.ToString())</script>");  */
              Label6.Text = " Welcome : " + Session["Username"].ToString(); 
          /*  Response.Write("<script>('  'Welcome:'  + Session['Username'].ToString()'</script>"); */
            string p = Session["Username"].ToString();

            if(p=="Tourist")
            {
                  Label6.Text = "Tourist"; 
               /* Response.Write("<script>('Tourist')</script>"); */
            }
            else
            {
                  Label6.Text = p; 
              /*  Response.Write("<script>(p)</script>"); */
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            HttpCookie cookie = new HttpCookie("cookie");
            cookie.Values.Add("Consumer", TextBox1.Text);
            cookie.Expires = DateTime.Now.AddMinutes(360);
            Response.Cookies.Add(cookie);
            
             Label7.Text = "Cookie added successfully"; 
           /*
            {
                Response.Write("<script>('Cookie added successfully')</script>");
            }
           */
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["cookie"];
            if(cookie != null)
            {
                string Consumer = cookie["Consumer"].ToString();
                 Label7.Text = Consumer; 
               /* Response.Write("<script>(Consumer)</script>"); */
            }
        }
    }
}
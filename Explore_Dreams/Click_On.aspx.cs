using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Services;

namespace Explore_Dreams
{
    public partial class Click_On : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string connection = "server=.;database=Explore_Dreams;Integrated Security=true;";
            SqlConnection con = null;
            SqlCommand cmd = null;
            string dr = "";

            if (FileUpload1.HasFile)
            {
                dr = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(dr));
                con = new SqlConnection(connection);
             
                string pqr = "Insert into Customer_details(Cust_name,Cust_destination,Dest_rate,Cust_id,Cust_dob,Cust_mob) values(@cn,@cd,@dr,@ci,@co,@cm)";
                cmd = new SqlCommand(pqr, con);

                cmd.Parameters.AddWithValue("@cn", TextBox1.Text);
                cmd.Parameters.AddWithValue("@cd", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@dr", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@ci", dr);
                cmd.Parameters.AddWithValue("@co", TextBox2.Text);
                cmd.Parameters.AddWithValue("@cm", TextBox3.Text);
                con.Open();
              int a=  cmd.ExecuteNonQuery();
                
                if(a>0)
                {
                    Response.Write("<script>alert('Your Informatiom Stored')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Your Informatiom Not Stored')</script>");
                }
                
                con.Close();

               // Label7.Text = "Data Saved Successfully";
            }
            /*  else
              {
                 Label7.Text = "Upload a file ";
        }      */






        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            switch (DropDownList1.Text)
            {
                case "Kerala":
                    DropDownList2.Items.Add("4999");
                    break;
                case "Nilgiri Safari":
                    DropDownList2.Items.Add("5999");
                    break;
                case "Varanasi-Ayodhya-Agraa":
                    DropDownList2.Items.Add("3999");
                    break;
                case "Asaam Luxurious Destination":
                    DropDownList2.Items.Add("6999");
                    break;
                case "Chhattisgarh's Waterfalls & Mountains":
                    DropDownList2.Items.Add("4999");
                    break;
                case "TamilNadu Cultural & Historical Places":
                    DropDownList2.Items.Add("3999");
                    break;
                case "Ajanta-Vellore":
                    DropDownList2.Items.Add("5999");
                    break;
            }
        }
    }
}
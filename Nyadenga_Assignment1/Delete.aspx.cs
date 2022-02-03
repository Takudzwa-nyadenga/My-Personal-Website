using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Nyadenga_Assignment1
{
    public partial class DeleteAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //test to see if session variables are null
            if (Session["Email"] == null && Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }    

        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            /*I had this coded to communicate with SQL but i dont have that database server access anymore
            //test to see if the email in the box matches the session
            //variable for email -- if so then go to #1 else go to #2
            if (tb_confirm.Text == Session["Email"].ToString())
            {
                //declare your objects
                SqlCommand Delete_Command = new SqlCommand(SqlDataSource1.DeleteCommand);
                SqlConnection Delete_connection = new SqlConnection(SqlDataSource1.ConnectionString);
                Delete_Command.Connection = Delete_connection;

                //set your sqlcommands connection and parameters
                Delete_Command.Parameters.AddWithValue("@Email", tb_confirm.Text);

                //open connection
                Delete_connection.Open();

                //execute non querry
                Delete_Command.ExecuteNonQuery();

                //close connection
                Delete_connection.Close();

                //empty your session variables
                Session["Email"] = null;
                Session["User"] = null;

                //go to confirmation screen
                Response.Redirect("Deleteconfirm.aspx");
            }
            else
            {
                //#2 error message saying they cant remove 
                lbl_error.Text = "*You cannot delete this Account*";
            }
            
            */
        }
    }
}
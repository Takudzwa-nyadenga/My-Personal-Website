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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttn_register_Click(object sender, EventArgs e)
        {
            /*
            //Declare a connection
            SqlConnection Reg_Connection = new SqlConnection(SqlDataSource1.ConnectionString);

            //declare my command and answer its question
            SqlCommand Reg_Command = new SqlCommand(SqlDataSource1.InsertCommand);

            //what command
            Reg_Command.Connection = Reg_Connection;

            //what parameters
            Reg_Command.Parameters.AddWithValue("@Email", tb_Confirm_email.Text);
            Reg_Command.Parameters.AddWithValue("@Password", tb_Confirm_pass.Text);
            Reg_Command.Parameters.AddWithValue("@FName", tb_FName.Text);
            Reg_Command.Parameters.AddWithValue("@LName", tb_LName.Text);
            Reg_Command.Parameters.AddWithValue("@YOB", tb_YOB.Text);

            //Open conn
            Reg_Connection.Open();

            //execute the command
            Reg_Command.ExecuteNonQuery();

            //Close the connection
            Reg_Connection.Close();

            //redirect
            Response.Redirect("RegSuccess.aspx");
            */
        }
    }
}
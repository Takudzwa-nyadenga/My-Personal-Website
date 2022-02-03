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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String UserID = "Tester";
            String Pass = "test123";
            String Email = "T@Test.com";
            /* I had code to communicate with a SQL database but i lost access to that database server
            //declare your Connection string
            //from the sqldatasource
            SqlConnection Teeconnection = new SqlConnection(SqlDataSource1.ConnectionString);


            //Declare the SQlCommand
            SqlCommand Teecommand = new SqlCommand(SqlDataSource1.SelectCommand);

            //The SQLcommand needs to know the parameter value
            Teecommand.Parameters.AddWithValue("@Email", tbEmail.Text);
            Teecommand.Parameters.AddWithValue("@Password", tbPassword.Text);

            //the SQLcommand Also needs to know what connection to run on
            Teecommand.Connection = Teeconnection;

            //Declare a data reader to hhold results
            SqlDataReader TeeReader;

            //open the connection to the database sever
            Teeconnection.Open();

            // Populate reader with sql query
            TeeReader = Teecommand.ExecuteReader(CommandBehavior.CloseConnection); 

            while(TeeReader.Read())
            {
                UserID = TeeReader.GetString(2).Trim() + " " + TeeReader.GetString(3).Trim();
                Pass = TeeReader.GetString(1).Trim();
                Email = TeeReader.GetString(0).Trim();
            }

            Teeconnection.Close();

            //logical test for user input on textboxes
            */
            if (tbEmail.Text == Email && tbPassword.Text == Pass)
            {
                Session["User"] = UserID;
                Session["Email"] = Email;
                Response.Redirect("Success.aspx");
            }
            else
            {
                lblError.Text = "**Incorrect User Name or Password**";
            }
        }
    }
}
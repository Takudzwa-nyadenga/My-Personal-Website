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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //load user data
            string Email = Session["Email"].ToString();

            //delcare objects
            SqlDataReader Update_Reader;
            SqlConnection Update_connection = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand Update_Command = new SqlCommand(SqlDataSource1.SelectCommand);

            //set command
            Update_Command.Connection = Update_connection;
            Update_Command.Parameters.AddWithValue("@Email", Email);

            //open connection
            Update_connection.Open();

            //fill reader
            Update_Reader = Update_Command.ExecuteReader(CommandBehavior.CloseConnection);

            //Display User data in Labels
            while(Update_Reader.Read())
            {
                lb_email.Text = Update_Reader.GetString(0).Trim();
                lbl_Pass.Text = Update_Reader.GetString(1).Trim();
                lbl_FName.Text = Update_Reader.GetString(2).Trim();
                lbl_LName.Text = Update_Reader.GetString(3).Trim();
                lbl_YOB.Text = Convert.ToString(Update_Reader.GetInt32(4));
            }

            Update_connection.Close();

        }

        protected void cb_pass_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_pass.Checked == true)
            {
                tb_password.Visible = true;
                tb_Confirm_Pass.Visible = true;
                lbl_confirmPass.Visible = true;
            }
            else
            {
                tb_password.Visible = false;
                tb_Confirm_Pass.Visible = false;
                lbl_confirmPass.Visible = false;
            }
        }

        protected void cb_FName_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_FName.Checked == true)
            {
                tb_FName.Visible = true;
            }
            else
            {
                tb_FName.Visible = false;
            }
        }

        protected void cb_LName_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_LName.Checked == true)
            {
                tb_LName.Visible = true;
            }
            else
            {
                tb_LName.Visible = false;
            }
        }

        protected void cb_YOB_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_YOB.Checked == true)
            {
                tb_YOB.Visible = true;
            }
            else
            {
                tb_YOB.Visible = false;
            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            /*
            //declare command and connection 
            SqlCommand UP_COMM = new SqlCommand(SqlDataSource1.UpdateCommand);
            SqlConnection UP_CONN = new SqlConnection(SqlDataSource1.ConnectionString);
            UP_COMM.Connection = UP_CONN;


            //populate email
            UP_COMM.Parameters.AddWithValue("@Email", Session["Email"].ToString());

            //password change
            if(cb_pass.Checked == true)
            {
                UP_COMM.Parameters.AddWithValue("@Password", tb_Confirm_Pass.Text);
            }
            else
            {
                UP_COMM.Parameters.AddWithValue("@Password", lbl_Pass.Text);
            }

            //First name change
            if (cb_FName.Checked == true)
            {
                UP_COMM.Parameters.AddWithValue("@FName", tb_FName.Text);
            }
            else
            {
                UP_COMM.Parameters.AddWithValue("@FName", lbl_FName.Text);
            }

            //Last name change
            if (cb_LName.Checked == true)
            {
                UP_COMM.Parameters.AddWithValue("@LName", tb_LName.Text);
            }
            else
            {
                UP_COMM.Parameters.AddWithValue("@LName", lbl_LName.Text);
            }

            //YOB change
            if (cb_YOB.Checked == true)
            {
                UP_COMM.Parameters.AddWithValue("@YOB", Convert.ToInt32(tb_YOB.Text));
            }
            else
            {
                UP_COMM.Parameters.AddWithValue("@YOB", Convert.ToInt32(lbl_YOB.Text));
            }

            UP_CONN.Open();
            UP_COMM.ExecuteNonQuery();
            UP_CONN.Close();

            Response.Redirect("Update.aspx");
            */
        }
    }
}
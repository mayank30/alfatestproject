using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using DBConnection;
using GlobalFunctions;

namespace ALAFAQKWT.Admin
{
    public partial class contact_address_details_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_last_records();
            }
        }
        public void get_last_records()
        {
            cls_DBConnection obj_DbConnection = new cls_DBConnection();
            SqlConnection con = new SqlConnection();
            con = obj_DbConnection.getSqlConnection();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                DataTable dtbl = new System.Data.DataTable();
                cmd.CommandText = "sp_get_contact_adress_details";

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        txtAddresss.Text = rdr["Address"].ToString();
                        txtEmail.Text = rdr["MailToFernando"].ToString();
                        txtContactNo.Text = rdr["CallHim"].ToString();
                        txtOpenoing_Hours.Text = rdr["Opening_hours"].ToString();
                        if (Convert.ToInt32(rdr["status"]) == 1)
                        {
                            chkStatus.Checked = true;
                        }
                        else
                        {
                            chkStatus.Checked = false;
                        }
                    }
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                throw ex;
            }
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            int show_flag = 0;

            cls_DBConnection obj_dbconnection = new cls_DBConnection();
            cls_GlobalFunctions obj_GlobalFunction = new cls_GlobalFunctions();
            SqlConnection con = new SqlConnection();
            con = obj_dbconnection.getSqlConnection();

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_add_contact_address_details";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Address", SqlDbType.NVarChar, 500));
                cmd.Parameters["@Address"].Value = txtAddresss.Text;

                cmd.Parameters.Add(new SqlParameter("@MailToFernando", SqlDbType.NVarChar, 50));
                cmd.Parameters["@MailToFernando"].Value = txtEmail.Text.Trim();

                if (chkStatus.Checked)
                {
                    show_flag = 1;
                }
                else
                {
                    show_flag = 0;
                }
                cmd.Parameters.Add(new SqlParameter("@status", SqlDbType.Int));
                cmd.Parameters["@status"].Value = show_flag;


                cmd.Parameters.Add(new SqlParameter("@CallHim", SqlDbType.NVarChar, 50));
                cmd.Parameters["@CallHim"].Value = txtContactNo.Text;

                cmd.Parameters.Add(new SqlParameter("@Opening_hours", SqlDbType.NVarChar, 50));
                cmd.Parameters["@Opening_hours"].Value = txtOpenoing_Hours.Text;


                cmd.Parameters.Add(new SqlParameter("@created_by", SqlDbType.NVarChar, 500));
                cmd.Parameters["@created_by"].Value = Session["admin_name"].ToString();

                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Saved Successfully')", true);

                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                
            }
            catch (Exception ex)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                lblmsg.Text = ex.Message;
            }
            
        }
    }
}
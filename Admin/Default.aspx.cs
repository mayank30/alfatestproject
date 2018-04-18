using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DBConnection;
using GlobalFunctions;

namespace ALAFAQKWT.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lnkbk_login_Click(object sender, EventArgs e)
        {
            int r = 0;
            string encrptkey;
            cls_DBConnection obj_SqlConn = new cls_DBConnection();
            SqlConnection con = new SqlConnection();
            con = obj_SqlConn.getSqlConnection();
            cls_GlobalFunctions obj_GlobalFunc = new cls_GlobalFunctions();
            encrptkey = obj_GlobalFunc.EncryptPass(password.Text, "&%#@?,:*");
            //encrptkey = password.Text;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_user_login";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@arg_nm_user", SqlDbType.NVarChar, 200));
                cmd.Parameters["@arg_nm_user"].Value = username_id.Text;
                cmd.Parameters.Add(new SqlParameter("@arg_pass", SqlDbType.NVarChar, 200));
                cmd.Parameters["@arg_pass"].Value = encrptkey;
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    r = 1;
                }
                else
                {
                    lblmsg.Text = "Invalid user name or password";
                }
                while (rdr.Read())
                {
                    /*if (Convert.ToInt32(rdr["admin_id"]) == 1)
                    {
                        r = 2;    
                        Session["admin_id"] = Convert.ToInt32(rdr["admin_id"]);
                        //Session["admin_name"] = Convert.ToString(rdr["admin_user"]);
                    }
                    else
                    {                    
                        Session["admin_id"] = Convert.ToInt32(rdr["admin_id"]);
                        Session["admin_name"] = Convert.ToString(rdr["admin_user"]);                    
                    }*/
                    Session["admin_id"] = Convert.ToInt32(rdr["admin_id"]);
                    Session["admin_name"] = Convert.ToString(rdr["admin_user"]);

                }

                if (r == 1)
                {
                    Response.Redirect("Adminmain.aspx");
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
                // lblmsg.Text = ex.Message;

            }
        }
    }
}
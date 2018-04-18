using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DBConnection;
using GlobalFunctions;
using System.Drawing;

namespace ALAFAQKWT.Admin
{
    public partial class about_us_details_add : System.Web.UI.Page
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
                cmd.CommandText = "sp_get_aboutus_details";

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {

                        txtTitle.Text = rdr["title"].ToString();
                        txtLeft.Text = rdr["title_left"].ToString();
                        txtDescription.Text = rdr["description"].ToString();
                        Image2.ImageUrl = "../images/about/" + Convert.ToString(rdr["image_url"]);
                        hdfID.Value = Convert.ToString(rdr["ID"]);
                        FilenameLabel.Text = Convert.ToString(rdr["image_url"]);
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

            string fileExt = "";

            if (uFile.HasFile)
            {
                fileExt = System.IO.Path.GetExtension(uFile.FileName);

                if (fileExt.ToLower() == ".jpeg" || fileExt.ToLower() == ".jpg" ||
                        fileExt.ToLower() == ".png")
                {
                    lblmsg.Visible = false;
                }
                else
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "Please Upload Valid File!";
                    return;

                }
            }
            string ls_image = "";
            int show_flag = 0;
            string img = uFile.PostedFile.FileName;
            cls_DBConnection obj_dbconnection = new cls_DBConnection();
            cls_GlobalFunctions obj_GlobalFunction = new cls_GlobalFunctions();
            SqlConnection con = new SqlConnection();
            con = obj_dbconnection.getSqlConnection();

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_add_aboutus_details";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@title", SqlDbType.NVarChar, 500));
                cmd.Parameters["@title"].Value = txtTitle.Text;

                cmd.Parameters.Add(new SqlParameter("@title_left", SqlDbType.NVarChar, 500));
                cmd.Parameters["@title_left"].Value = txtLeft.Text;

                cmd.Parameters.Add(new SqlParameter("@description", SqlDbType.NVarChar, 500));
                cmd.Parameters["@description"].Value = txtDescription.Text;

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

                if (img != "")
                {
                    ls_image = uFile.FileName;

                }
                else
                {
                    ls_image = FilenameLabel.Text;
                }

                cmd.Parameters.Add(new SqlParameter("@image_url", SqlDbType.NVarChar, 500));
                cmd.Parameters["@image_url"].Value = ls_image;

                cmd.Parameters.Add(new SqlParameter("@created_by", SqlDbType.NVarChar, 500));
                cmd.Parameters["@created_by"].Value = Session["admin_name"].ToString();

                cmd.ExecuteNonQuery();
                if (img != "")
                {
                    uFile.PostedFile.SaveAs(Server.MapPath("../images/about/") + ls_image);
                }

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
      
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminmain.aspx");
        }

       
    }
}
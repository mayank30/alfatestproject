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
    public partial class banneradd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                Bitmap img = new Bitmap(uFile.PostedFile.InputStream, false);
                int height = img.Height;
                // get the height of image in pixel.
                int width = img.Width;
                // get the width of image in pixel.
                int fileSize = (uFile.PostedFile.ContentLength) / 1024;
                //get the size of image file.
                if (height > 730 && width > 1920)
                {
                    lblmsg.Visible = true;
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "File size not be exceed than 1920 x 730 px";
                    return;
                }
            }
            Boolean link;
            int show_flag = 0;

            cls_DBConnection obj_dbconnection = new cls_DBConnection();
            cls_GlobalFunctions obj_GlobalFunction = new cls_GlobalFunctions();
            SqlConnection con = new SqlConnection();
            con = obj_dbconnection.getSqlConnection();
            int li_max_id = 0;
            string ls_image;
            li_max_id = pub_get_maxid();

            


            if (rbn_link_yes.Checked)
            {
                link = true;
            }
            else
            {
                link = false;
            }

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_add_banners";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@arg_banner_name", SqlDbType.NVarChar, 50));
                cmd.Parameters["@arg_banner_name"].Value = Txtname.Text;

                cmd.Parameters.Add(new SqlParameter("@banner_title1", SqlDbType.NVarChar, 50));
                cmd.Parameters["@banner_title1"].Value = txtTitl1.Text;

                cmd.Parameters.Add(new SqlParameter("@banner_title2", SqlDbType.NVarChar, 50));
                cmd.Parameters["@banner_title2"].Value = txtTitl2.Text;

                ls_image = li_max_id + "_" + uFile.FileName;

                cmd.Parameters.Add(new SqlParameter("@arg_imgurl", SqlDbType.NVarChar, 500));
                cmd.Parameters["@arg_imgurl"].Value = ls_image;


                if (chkStatus.Checked)
                {
                    show_flag = 1;
                }
                else
                {
                    show_flag = 0;
                }
                cmd.Parameters.Add(new SqlParameter("@arg_show", SqlDbType.Int));
                cmd.Parameters["@arg_show"].Value = show_flag;

                cmd.Parameters.Add(new SqlParameter("@arg_position", SqlDbType.Int));
                cmd.Parameters["@arg_position"].Value = Convert.ToInt32(Txtpostion.Text);

                cmd.Parameters.Add(new SqlParameter("@arg_url", SqlDbType.NVarChar, 500));
                cmd.Parameters["@arg_url"].Value = txtlink.Text;

                cmd.Parameters.Add(new SqlParameter("@arg_link", SqlDbType.Bit));
                cmd.Parameters["@arg_link"].Value = link;

                cmd.Parameters.Add(new SqlParameter("@arg_target", SqlDbType.Int));
                cmd.Parameters["@arg_target"].Value = Convert.ToInt32(drdw_target.SelectedValue);


                cmd.Parameters.Add(new SqlParameter("@created_by", SqlDbType.NVarChar, 500));
                cmd.Parameters["@created_by"].Value = Session["admin_name"].ToString();


                cmd.ExecuteNonQuery();



                uFile.PostedFile.SaveAs(Server.MapPath("../images/banners/") + ls_image);


                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }



                Response.Redirect("banners.aspx?updatetype=1");


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

        public int pub_get_maxid()
        {
            Boolean show_flag;

            cls_DBConnection obj_dbconnection = new cls_DBConnection();
            cls_GlobalFunctions obj_GlobalFunction = new cls_GlobalFunctions();
            SqlConnection con = new SqlConnection();
            con = obj_dbconnection.getSqlConnection();
            int li_max_id = 0;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select isnull(MAX(banner_id),0) as max_id from tbl_banners";
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        li_max_id = Convert.ToInt32(rdr["max_id"]);
                    }
                }
                else
                {
                    li_max_id = 0;
                }

                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                return li_max_id + 1;
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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("banners.aspx");
        }
    }
}
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
    public partial class banneredit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillpage();
            }
        }
        public void fillpage()
        {
            int li_banner_id;
            Boolean lb_show;
            li_banner_id = Convert.ToInt32(Request.QueryString["key"]);
            cls_DBConnection obj_DbConnection = new cls_DBConnection();
            SqlConnection con = new SqlConnection();
            con = obj_DbConnection.getSqlConnection();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "sp_get_banner_details";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add(new SqlParameter("@arg_banner_id", SqlDbType.Int));
                cmd.Parameters["@arg_banner_id"].Value = li_banner_id;

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Txtname.Text = Convert.ToString(rdr["banner_name"]);
                    txtTitl1.Text = Convert.ToString(rdr["banner_title1"]);
                    txtTitl2.Text = Convert.ToString(rdr["banner_title2"]);
                    Image1.ImageUrl = "../images/banners/" + Convert.ToString(rdr["img_url"]);
                    FilenameLabel.Text = Convert.ToString(rdr["img_url"]);

                    if (Convert.ToInt32(rdr["show"]) == 1)
                    {
                        chkStatus.Checked = true;
                    }
                    else
                    {
                        chkStatus.Checked = false;
                    }
                    Txtpostion.Text = rdr["position"].ToString();
                    txtlink.Text = rdr["url"].ToString();


                    if (Convert.ToBoolean(rdr["link"]) == true)
                    {
                        rbn_link_yes.Checked = true;
                        rbn_link_no.Checked = false;
                        txtlink.Enabled = true;

                    }
                    else
                    {
                        rbn_link_no.Checked = true;
                        rbn_link_yes.Checked = false;
                        txtlink.Enabled = false;

                    }

                    drdw_target.SelectedValue = rdr["target"].ToString();

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

            if (uFileImage.HasFile)
            {
                fileExt = System.IO.Path.GetExtension(uFileImage.FileName);

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
                Bitmap img2 = new Bitmap(uFileImage.PostedFile.InputStream, false);
                int height = img2.Height;
                // get the height of image in pixel.
                int width = img2.Width;
                // get the width of image in pixel.
                int fileSize = (uFileImage.PostedFile.ContentLength) / 1024;
                //get the size of image file.
                if (height > 730 && width > 1920)
                {
                    lblmsg.Visible = true;
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "File size not be exceed than 1920 x 730 px";
                    return;
                }
            }
            
            int li_prod_id;
            li_prod_id = Convert.ToInt32(Request.QueryString["key"]);
            Boolean link;
            int show_flag = 0;
            string ls_image = "";
            string img = uFileImage.PostedFile.FileName;
            cls_DBConnection obj_dbconnection = new cls_DBConnection();
            cls_GlobalFunctions obj_GlobalFunction = new cls_GlobalFunctions();
            SqlConnection con = new SqlConnection();
            con = obj_dbconnection.getSqlConnection();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_update_banners";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@arg_banner_name", SqlDbType.NVarChar, 50));
                cmd.Parameters["@arg_banner_name"].Value = Txtname.Text;

                cmd.Parameters.Add(new SqlParameter("@banner_title1", SqlDbType.NVarChar, 50));
                cmd.Parameters["@banner_title1"].Value = txtTitl1.Text;

                cmd.Parameters.Add(new SqlParameter("@banner_title2", SqlDbType.NVarChar, 50));
                cmd.Parameters["@banner_title2"].Value = txtTitl2.Text;


                if (img != "")
                {
                    ls_image = li_prod_id.ToString() + "_" + uFileImage.FileName;

                }
                else
                {
                    ls_image = FilenameLabel.Text;
                }

                if (rbn_link_yes.Checked)
                {
                    link = true;
                }
                else
                {
                    link = false;
                }

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

                cmd.Parameters.Add(new SqlParameter("@modified_by", SqlDbType.NVarChar, 500));
                cmd.Parameters["@modified_by"].Value = Session["admin_name"].ToString();


                cmd.Parameters.Add(new SqlParameter("@banner_id", SqlDbType.Int));
                cmd.Parameters["@banner_id"].Value = Convert.ToInt32(li_prod_id);

                cmd.ExecuteNonQuery();
                if (img != "")
                {
                    uFileImage.PostedFile.SaveAs(Server.MapPath("../images/banners/") + ls_image);
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }



                Response.Redirect("banners.aspx");


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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("banners.aspx");
        }
    }
}
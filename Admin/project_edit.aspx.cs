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

namespace Alfa.Admin
{
    public partial class project_edit : System.Web.UI.Page
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
                cmd.CommandText = "sp_get_project_details";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int));
                cmd.Parameters["@id"].Value = li_banner_id;

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    txtProjectName.Text = Convert.ToString(rdr["project_name"]);
                    txtDescription.Text = Convert.ToString(rdr["project_desc"]);
                    txtDate.Text = Convert.ToString(rdr["project_date"]);
                    txtClient.Text = Convert.ToString(rdr["clinet"]);
                    txtCat.Text = Convert.ToString(rdr["category"]);
                    txtNetW.Text = Convert.ToString(rdr["net_worth"]);

                    Image1.ImageUrl = "../images/project/" + Convert.ToString(rdr["img_url"]);
                    FilenameLabel.Text = Convert.ToString(rdr["img_url"]);

                    if (Convert.ToInt32(rdr["status"]) == 1)
                    {
                        chkStatus.Checked = true;
                    }
                    else
                    {
                        chkStatus.Checked = false;
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

            if (uFileImage.HasFile)
            {
                fileExt = System.IO.Path.GetExtension(uFileImage.FileName);

                if (fileExt.ToLower() == ".jpeg" || fileExt.ToLower() == ".jpg" || fileExt.ToLower() == ".png")
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
                cmd.CommandText = "sp_update_project";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@project_name", SqlDbType.VarChar));
                cmd.Parameters["@project_name"].Value = txtProjectName.Text;



                cmd.Parameters.Add(new SqlParameter("@project_desc", SqlDbType.NVarChar, 500));
                cmd.Parameters["@project_desc"].Value = txtDescription.Text;


                DateTime date = DateTime.ParseExact(this.txtDate.Text, "dd/MM/yyyy", null);
                cmd.Parameters.Add(new SqlParameter("@project_date", SqlDbType.DateTime));
                cmd.Parameters["@project_date"].Value = date;

                cmd.Parameters.Add(new SqlParameter("@clinet", SqlDbType.NVarChar, 500));
                cmd.Parameters["@clinet"].Value = txtClient.Text;

                cmd.Parameters.Add(new SqlParameter("@category", SqlDbType.NVarChar, 500));
                cmd.Parameters["@category"].Value = txtCat.Text;

                cmd.Parameters.Add(new SqlParameter("@net_worth", SqlDbType.NVarChar, 500));
                cmd.Parameters["@net_worth"].Value = txtNetW.Text;

                if (img != "")
                {
                    ls_image = li_prod_id.ToString() + "_" + uFileImage.FileName;

                }
                else
                {
                    ls_image = FilenameLabel.Text;
                }


                cmd.Parameters.Add(new SqlParameter("@img_url", SqlDbType.NVarChar, 500));
                cmd.Parameters["@img_url"].Value = ls_image;

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


                cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int));
                cmd.Parameters["@id"].Value = Convert.ToInt32(li_prod_id);

                cmd.ExecuteNonQuery();
                if (img != "")
                {
                    uFileImage.PostedFile.SaveAs(Server.MapPath("../images/project/") + ls_image);
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }



                Response.Redirect("projects.aspx?updatetype=2");


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
            Response.Redirect("projects.aspx");
        }
    }
}
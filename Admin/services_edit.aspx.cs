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

namespace Admin
{
    public partial class banneredit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindPage();
                fillpage();

            }
        }
        public void bindPage()
        {
            cls_DBConnection obj_sqlcon = new cls_DBConnection();
            SqlConnection con = new SqlConnection();
            con = obj_sqlcon.getSqlConnection();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_get_service_names";
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dtbl = new DataTable();
                da.Fill(dtbl);
                ddlService_Name.DataSource = dtbl;
                ddlService_Name.DataTextField = "services_name";
                ddlService_Name.DataValueField = "id";
                ddlService_Name.DataBind();
                ddlService_Name.Items.Insert(0, "Select Services");
                if (con.State == ConnectionState.Closed)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
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
                cmd.CommandText = "sp_get_services_details";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int));
                cmd.Parameters["@id"].Value = li_banner_id;

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    ddlService_Name.SelectedValue = Convert.ToString(rdr["services_id"]);
                    txtDescription.Text = Convert.ToString(rdr["services_description"]);

                    Image1.ImageUrl = "../images/services/" + Convert.ToString(rdr["img_url"]);
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
                cmd.CommandText = "sp_update_service";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@services_id", SqlDbType.Int));
                cmd.Parameters["@services_id"].Value = ddlService_Name.SelectedValue;

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

                cmd.Parameters.Add(new SqlParameter("@services_description", SqlDbType.NVarChar, 500));
                cmd.Parameters["@services_description"].Value = txtDescription.Text;


                cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int));
                cmd.Parameters["@id"].Value = Convert.ToInt32(li_prod_id);

                cmd.ExecuteNonQuery();
                if (img != "")
                {
                    uFileImage.PostedFile.SaveAs(Server.MapPath("../images/services/") + ls_image);
                }
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }



                Response.Redirect("servic.aspx?updatetype=2");


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
            Response.Redirect("servic.aspx");
        }
    }
}
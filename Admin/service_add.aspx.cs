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
    public partial class service_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindPage();
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
            Boolean link;
            int show_flag = 0;

            cls_DBConnection obj_dbconnection = new cls_DBConnection();
            cls_GlobalFunctions obj_GlobalFunction = new cls_GlobalFunctions();
            SqlConnection con = new SqlConnection();
            con = obj_dbconnection.getSqlConnection();
            int li_max_id = 0;
            string ls_image;
            li_max_id = pub_get_maxid();

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "sp_add_services";
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@services_id", SqlDbType.Int));
                cmd.Parameters["@services_id"].Value = ddlService_Name.SelectedValue;

                ls_image = li_max_id + "_" + uFile.FileName;

                cmd.Parameters.Add(new SqlParameter("@img_url", SqlDbType.NVarChar, 50));
                cmd.Parameters["@img_url"].Value = ls_image;

                cmd.Parameters.Add(new SqlParameter("@services_description", SqlDbType.NVarChar, 500));
                cmd.Parameters["@services_description"].Value = txtDescription.Text;

                
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

               
                cmd.ExecuteNonQuery();



                uFile.PostedFile.SaveAs(Server.MapPath("../images/services/") + ls_image);


                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }



                Response.Redirect("servic.aspx?updatetype=1");


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
                cmd.CommandText = "select isnull(MAX(id),0) as max_id from tbl_services";
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
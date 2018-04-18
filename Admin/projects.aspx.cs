using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DBConnection;
using GlobalFunctions;
using System.Text;

namespace Alfa.Admin
{
    public partial class projects : System.Web.UI.Page
    {
        DataView dv = new DataView();
        int ResultCount;
        int RcdCount;
        protected String mTableRows = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                pub_bind_grid();
            }
        }

        public void pub_bind_grid()
        {
            int i = 0;
            cls_DBConnection obj_DbConnection = new cls_DBConnection();
            SqlConnection con = new SqlConnection();
            con = obj_DbConnection.getSqlConnection();
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                DataTable dtbl = new System.Data.DataTable();
                cmd.CommandText = "sp_get_projectlist";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;

                SqlDataReader rdr = cmd.ExecuteReader();
                StringBuilder sb = new StringBuilder();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        i = i + 1;

                        sb.Append(String.Format(@"<tr class=""odd gradeX"">"));
                        sb.Append(String.Format(@"<td style=""text-align:left"">{0}</td>", i.ToString()));
                        sb.Append(String.Format(@"<td style=""text-align:left"">{0}</td>", rdr["project_name"].ToString()));
                        //sb.Append(String.Format(@"<td style=""text-align:left"">{0}</td>", rdr["show"].ToString()));
                        sb.Append(String.Format(@"<td class=""left""><img src=""../images/project/{0}"" width=""200px"" height=""50px"" /></td>", rdr["img_url"].ToString()));
                        //sb.Append(String.Format("<td class=""center""><span class=""tip"" ><a  title=""Edit"" href=""itemedit.aspx?key={0}"" ><img src=""images/icon/icon_edit.png"" ></a></span><span class=""tip"" ><a id=""1"" href=""deletedata.aspx?methodname=deleteitem&key={0}""   onclick=""javascript:return confirm('Are you sure you want to delete?')""  name=""{1}"" title=""Delete""  ><img src=""images/icon/icon_delete.png"" ></a></span></td>", dr("item_id"), dr("title")))

                        sb.Append(String.Format(@"<td class=""center""><span class=""tip"" ><a  title=""Edit"" href=""project_edit.aspx?key={0}"" ><img src=""images/icon/icon_edit.png"" ></a></span></td>", rdr["id"]));
                        sb.Append(String.Format(@"<td class=""center""><span class=""tip"" ><a id=""1"" href=""deletedata.aspx?methodname=deleteservices&key={0}""   onclick=""javascript:return confirm('Are you sure you want to delete?')""  name=""{1}"" title=""Delete""  ><img src=""images/icon/icon_delete.png"" ></a></span></td>", rdr["id"], rdr["project_name"]));

                        sb.Append(String.Format("</tr>"));
                    }

                }

                mTableRows = sb.ToString();
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
    }
}
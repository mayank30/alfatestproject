
using DBConnection;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ALAFAQKWT.Admin;

namespace ALAFAQKWT
{
    public partial class index : System.Web.UI.Page
    {
        globalfunction obj=new globalfunction();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            allbanner();
        }

        private void allbanner()
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
                cmd.CommandText = "sp_get_bannerlist";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    var slideItem = "";
                    var indicatorData = "";
                    for (int j = 0; j < dt.Rows.Count; j++)
                    {
                        var className = "";
                        if (j == 0)
                        {
                            className = "active";
                        }

                        indicatorData = indicatorData + "<li data-target='#myCarousel' data-slide-to='" + j + "' class='" + className + "'>" +
                            "</li>";

                        var slideImage = "";
                        slideImage = dt.Rows[j]["img_url"].ToString();
                        slideItem = slideItem + "<div class='item " + className + "'>" +
                            "<div class='fill'><img width='1920' height=' 730' src ='images/banners/" + slideImage + "' alt = 'image'></div>" +
                            "<div class='pattern'></div>" +
                            "<div class='carousel-caption'>" +
                            "<h2><span>" + dt.Rows[j]["banner_title1"].ToString() + "</span> </h2>" +
                            "<h1>" + dt.Rows[j]["banner_title2"].ToString() + "</h1>" +
                            "</div>" +
                            "</div>";

                    }
                    indicators.InnerHtml = indicatorData;
                    slides.InnerHtml = slideItem;
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
    }
}
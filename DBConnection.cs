using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DBConnection
/// </summ
/// 
namespace DBConnection
{
    public class cls_DBConnection
    {
        public SqlConnection getSqlConnection()
        {
            string strconn;
            strconn = ConfigurationManager.AppSettings["SqlServerConnectionString"];
            SqlConnection con = new SqlConnection(strconn);
            return con;
        }


    }
}

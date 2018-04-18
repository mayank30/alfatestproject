using Alfa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alfa
{
    public partial class servicesapi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = true,
        ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static List<MainServices> GetMainServices()
        {
            BAL.Services bal = new BAL.Services();
            return bal.GetMainServices();
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(UseHttpGet = true,
        ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public static Models.Services GetServiceDetailByServiceId(String id)
        {
            BAL.Services bal = new BAL.Services();
            return bal.GetServiceDetailByServiceId(id);
        }
    }
}
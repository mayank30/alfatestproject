using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Xml;
using System.Text;
using System.Net.Mail;

/// <summary>
/// Summary description for globalfunction
/// </summary>
public class globalfunction
{
	public globalfunction()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void msg(string str,Page p,Type typ)
    {
        string csname1="PopupScript";
        Type cstype=typ;
        ClientScriptManager cs=p.ClientScript;
        if(!cs.IsStartupScriptRegistered(cstype,csname1))
        {
            string cstext1="alert('"+str+"');";
            cs.RegisterStartupScript(cstype,csname1,cstext1,true);
        }
    }
    
   
     

}

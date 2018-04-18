<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ALAFAQKWT.Admin.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin Panel - AlafaqKwt</title>
        
<link href="css/zice.style.css" rel="stylesheet" type="text/css" />
<link href="css/icon.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="components/tipsy/tipsy.css" media="all"/>
<style type="text/css">
html {
	background-image: none;
}
#versionBar {
	background-color:#212121;
	position:fixed;
	width:100%;
	height:35px;
	bottom:0;
	left:0;
	text-align:center;
	line-height:35px;
}
.copyright{
	text-align:center; font-size:10px; color:#CCC;
}
.copyright a{
	color:#A31F1A; text-decoration:none
}    
</style>

<script type="text/javascript">
			
			String.prototype.trim=function()
			{
				return this.replace(/^\s+|\s+$/,'');
			}
			
			function validate() 
			{
			   var err = false;
			   if (document.getElementById("username_id").value.trim()== "")
				{
				    err = true;
					alert("Enter your username");
					document.getElementById("username_id").value="";
					document.getElementById("username_id").focus();
				}
			   else if (document.getElementById("username_id").value.indexOf(";") >= 0)
				{
				    err = true;
					alert("invalid username");
					document.getElementById("username_id").focus();
				}
		        else if (document.getElementById("username_id").value.indexOf("'") >= 0)
				{
				    err = true;
					alert("invalid username");
					document.getElementById("username_id").focus();
				}
				else if (document.getElementById("username_id").value.indexOf(">") >= 0)
				{
				    err = true;
					alert("invalid username");
					document.getElementById("username_id").focus();
				}
				else if (document.getElementById("username_id").value.indexOf("<") >= 0)
				{
				    err = true;
					alert("invalid username");
					document.getElementById("username_id").focus();
				}
				else if (document.getElementById("password").value.trim()== "")
				{
				    err = true;
					alert("Enter your password");
					document.getElementById("password").value="";
					document.getElementById("password").focus();
				}
				else if (document.getElementById("password").value.indexOf(";") >= 0)
				{
				    err = true;
					alert("invalid Passsword");
					document.getElementById("password").focus();
				}
			   else	if (document.getElementById("password").value.indexOf("'") >= 0)
				{
				    err = true;
					alert("invalid Password");
					document.getElementById("password").focus();
				}
			   else	if (document.getElementById("password").value.indexOf(">") >= 0)
				{
				    err = true;
					alert("invalid Passwprd");
					document.getElementById("password").focus();
				}
				else if (document.getElementById("password").value.indexOf("<") >= 0)
				{
				    err = true;
					alert("invalid Passwprd");
					document.getElementById("password").focus();
				}
				 if (err == true) 
				{
					return false;
				} else {
					return true;
				}
			}
	
		</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="alertMessage" class="error"></div>
<div id="successLogin"></div>
<%-- <div class="text_success"><img src="images/loadder/loader_green.gif"  alt="ziceAdmin" /><span>Please wait</span></div>--%>

              
<div id="login" >
 <%-- <div class="ribbon"></div>--%>
  <div class="inner">
  <div  class="logo" style="margin-left:-100px;" ><img src="images/logo_admin.png"  width="217px" height="59"  alt="ziceAdmin" /></div>
  
  <div class="formLogin">
     <asp:Panel ID="pnl_login" runat="server" DefaultButton="lnkbk_login" >
         <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
          <div class="tip">
          <asp:TextBox ID="username_id" runat="server" height="27" name="username" ></asp:TextBox>
          
          </div>
          <div class="tip">
           <asp:TextBox ID="password" runat="server" Height="27" name="password" TextMode="Password"></asp:TextBox>
          
          </div>
          <div style="padding:20px 0px 0px 0px ;">
            <div style="float:left; padding:0px 0px 2px 0px ;">
           <input type="checkbox" id="on_off" name="remember" class="on_off_checkbox"  value="1"   />
              <span class="f_help">Remember me</span>
              </div>
              
          <div style="float:right;padding:2px 0px ;">
              <div> 
                <ul class="uibutton-group">
                   <li>
                   
                   <asp:LinkButton ID="lnkbk_login" class="uibutton normal" runat="server"  Text="LOGIN" OnClientClick="return validate();" OnClick="lnkbk_login_Click"></asp:LinkButton>

                   
                   </li>
				   
               </ul>
              </div>
            </div>
</div>
</asp:Panel>
   
  </div>
</div>
  <div class="clear"></div>
  <div class="shadow"></div>
</div>

<!--Login div-->
<div class="clear"></div>
<div id="versionBar" >
  <div class="copyright" > &copy; Copyright 2018 All Rights Reserved <span class="tip"><a  href="" title="" ></a> </span> </div>
  <!-- // copyright-->
</div>
<!-- Link JScript-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="components/effect/jquery-jrumble.js"></script>
<script type="text/javascript" src="components/ui/jquery.ui.min.js"></script>     
<script type="text/javascript" src="components/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript" src="components/checkboxes/iphone.check.js"></script>
<script type="text/javascript" src="js/login.js"></script>
    </form>
</body>
</html>

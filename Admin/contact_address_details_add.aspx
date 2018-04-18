<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_address_details_add.aspx.cs" Inherits="ALAFAQKWT.Admin.contact_address_details_add" %>
<%@ Register Src="~/Admin/headermenu.ascx" TagName="headermenu" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Admin Panel</title>
 <!-- Link shortcut icon-->
        <link rel="shortcut icon" type="image/ico" href="images/favicon2.html" /> 
        <!-- Link css-->
        <link rel="stylesheet" type="text/css" href="css/zice.style.css"/>
        <link rel="stylesheet" type="text/css" href="css/icon.css"/>
        <link rel="stylesheet" type="text/css" href="css/ui-custom.css"/>
        <link rel="stylesheet" type="text/css" href="css/timepicker.css"  />
        <link rel="stylesheet" type="text/css" href="components/colorpicker/css/colorpicker.css"  />
        <link rel="stylesheet" type="text/css" href="components/elfinder/css/elfinder.css" />
        <link rel="stylesheet" type="text/css" href="components/datatables/dataTables.css"  />
        <link rel="stylesheet" type="text/css" href="components/validationEngine/validationEngine.jquery.css" />
         
        <link rel="stylesheet" type="text/css" href="components/jscrollpane/jscrollpane.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="components/fancybox/jquery.fancybox.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="components/tipsy/tipsy.css" media="all" />
        <link rel="stylesheet" type="text/css" href="components/editor/jquery.cleditor.css"  />
        <link rel="stylesheet" type="text/css" href="components/chosen/chosen.css" />
        <link rel="stylesheet" type="text/css" href="components/confirm/jquery.confirm.css" />
        <link rel="stylesheet" type="text/css" href="components/sourcerer/sourcerer.css"/>
        <link rel="stylesheet" type="text/css" href="components/fullcalendar/fullcalendar.css"/>
        <link rel="stylesheet" type="text/css" href="components/Jcrop/jquery.Jcrop.css"  />
   
        
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="components/flot/excanvas.min.js"></script><![endif]-->
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="components/ui/jquery.ui.min.js"></script> 
        <script type="text/javascript" src="components/ui/jquery.autotab.js"></script>
        <script type="text/javascript" src="components/ui/timepicker.js"></script>
        <script type="text/javascript" src="components/colorpicker/js/colorpicker.js"></script>
        <script type="text/javascript" src="components/checkboxes/iphone.check.js"></script>
        <script type="text/javascript" src="components/elfinder/js/elfinder.full.js"></script>
        <script type="text/javascript" src="components/datatables/dataTables.min.js"></script>
        <script type="text/javascript" src="components/scrolltop/scrolltopcontrol.js"></script>
        <script type="text/javascript" src="components/fancybox/jquery.fancybox.js"></script>
        <script type="text/javascript" src="components/jscrollpane/mousewheel.js"></script>
        <script type="text/javascript" src="components/jscrollpane/mwheelIntent.js"></script>
        <script type="text/javascript" src="components/jscrollpane/jscrollpane.min.js"></script>
        <script type="text/javascript" src="components/spinner/ui.spinner.js"></script>
        <script type="text/javascript" src="components/tipsy/jquery.tipsy.js"></script>
        <script type="text/javascript" src="components/editor/jquery.cleditor.js"></script>
        <script type="text/javascript" src="components/chosen/chosen.js"></script>
        <script type="text/javascript" src="components/confirm/jquery.confirm.js"></script>
        <script type="text/javascript" src="components/validationEngine/jquery.validationEngine.js" ></script>
        <script type="text/javascript" src="components/validationEngine/jquery.validationEngine-en.js" ></script>
        <script type="text/javascript" src="components/vticker/jquery.vticker-min.js"></script>
        <script type="text/javascript" src="components/sourcerer/sourcerer.js"></script>
        <script type="text/javascript" src="components/fullcalendar/fullcalendar.js"></script>
        <script type="text/javascript" src="components/flot/flot.js"></script>
        <script type="text/javascript" src="components/flot/flot.pie.min.js"></script>
        <script type="text/javascript" src="components/flot/flot.resize.min.js"></script>
        <script type="text/javascript" src="components/flot/graphtable.js"></script>

        <script type="text/javascript" src="components/uploadify/swfobject.js"></script>
        <script type="text/javascript" src="components/uploadify/uploadify.js"></script>        
        <script type="text/javascript" src="components/checkboxes/customInput.jquery.js"></script>
        <script type="text/javascript" src="components/effect/jquery-jrumble.js"></script>
        <script type="text/javascript" src="components/filestyle/jquery.filestyle.js" ></script>
        <script type="text/javascript" src="components/placeholder/jquery.placeholder.js" ></script>
		<script type="text/javascript" src="components/Jcrop/jquery.Jcrop.js" ></script>
        <script type="text/javascript" src="components/imgTransform/jquery.transform.js" ></script>
        <script type="text/javascript" src="components/webcam/webcam.js" ></script>
		<script type="text/javascript" src="components/rating_star/rating_star.js"></script>
		<script type="text/javascript" src="components/dualListBox/dualListBox.js"  ></script>
		<script type="text/javascript" src="components/smartWizard/jquery.smartWizard.min.js"></script>
        <script type="text/javascript" src="js/jquery.cookie.js"></script>
        <script type="text/javascript" src="js/zice.custom.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
     <uc1:headermenu ID="headermenu" runat="server" />
            
            <div id="content">
            <div class="inner">
					<div class="topcolumn">
						<div class="logo"></div>
                            <ul  id="shortcut">
                              <li> <a href="admin_main.aspx" title="Back To home"> <img src="images/icon/shortcut/home.png" alt="home"/><strong>Home</strong> </a> </li>
                               
                              
                                
                            </ul>
					</div>
                    <div class="clear"></div>
            
            
                 <div class="onecolumn" >
   
                        <div class="header"><span><span class="ico gray window"></span>  Add Contact Address  Details  </span>
                         <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        <div class="clear"></div>
                        <div class="content" >
                                  
                        
                            
                              <div class="section" >
                                  <label>  Address</label>   
                                  <div>   <asp:TextBox ID="txtAddresss" runat="server" CssClass="BlackTextSmall" Height="50" Width="500px" TextMode="MultiLine"></asp:TextBox>
                                  </div>
                             </div>
                             
                               <div class="section" >
                                  <label>  Email</label>   
                                  <div>   <asp:TextBox ID="txtEmail" runat="server" CssClass="BlackTextSmall" Width="300px"></asp:TextBox>
                                  </div>
                             </div>
                             
                              <div class="section" >
                                  <label> Contact No</label>   
                                  <div>   <asp:TextBox ID="txtContactNo" runat="server" CssClass="BlackTextSmall" Width="200px" ></asp:TextBox>
                                  </div>
                             </div>
                            <div class="section" style="display:none;">
                                  <label> Opening Hours</label>   
                                  <div>   <asp:TextBox ID="txtOpenoing_Hours" runat="server" CssClass="BlackTextSmall" Width="200px" ></asp:TextBox>
                                  </div>
                             </div>
                             
                             
                             
                              <div class="section" >
                                  <label>  STATUS</label>   
                                  <div> <asp:CheckBox ID="chkStatus" runat="server" /></div>
                             </div>
                             
                             
                             
                             
                            
                            
                             
                               
                              <div class="section last">
                                  <div>
                                   <asp:LinkButton ID="btnadd"  runat="server" class="uibutton loading" OnClientClick="return validate();" Text="Save Contact Details" OnClick="btnadd_Click"></asp:LinkButton>
                                    </div>
                             </div>
                   
                        </div>
                        </div>
                        

                  
                   <div class="clear"></div>
                    <div id="footer"> &copy; Copyright 2018<span class="tip"><a  href="" title="" > </a> </span> </div>
                </div> <!--// End inner --> 
            </div> <!--// End content --> 
    </form>
    
   <script type="text/javascript">
			
			
			
			function validate() 
			{
			    if (document.getElementById("txtAddresss").value.trim() == "")
				{
				    err = true;
					alert("Enter Address");
					document.getElementById("txtAddresss").value = "";
					document.getElementById("txtAddresss").focus();
					
					return false;
				}
				
			    if (document.getElementById("txtEmail").value.trim() == "")
				{
				    err = true;
					alert("Enter Email");
					document.getElementById("txtEmail").value = "";
					document.getElementById("txtEmail").focus();
					
					return false;
				}
			    var emailPat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			    var emailid = document.getElementById("<%=txtEmail.ClientID %>").value;
			    var matchArray = emailid.match(emailPat);
			    if (matchArray == null) {
			        alert("Email address seems incorrect. Please try again.");
			        document.getElementById("<%=txtEmail.ClientID %>").focus();
			        return false;
			    }

			    if (document.getElementById("txtContactNo").value.trim() == "")
				{
				    err = true;
					alert("Enter ContactNo");
					document.getElementById("txtContactNo").value = "";
					document.getElementById("txtContactNo").focus();
					
					return false;
			    }
			    if (document.getElementById("txtOpenoing_Hours").value.trim() == "") {
			        err = true;
			        alert("Enter Opening hours");
			        document.getElementById("txtOpenoing_Hours").value = "";
			        document.getElementById("txtOpenoing_Hours").focus();

			        return false;
			    }
			    
				
				 
			}
	
		</script>
    
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="banneradd.aspx.cs" Inherits="ALAFAQKWT.Admin.banneradd" %>

<%@ Register Src="~/Admin/headermenu.ascx" TagPrefix="uc1" TagName="headermenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Admin Panel - </title>
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





         <script type="text/javascript">
             function FunCheckFile(element) {
                 //alert($(element));
                 var file = element;
                 var file_name = file.value;
                 var extension = file_name.split('.').pop().toLowerCase();
                 var allowedFormats = ["jpeg", "jpg", "png"];

                 if (!(allowedFormats.indexOf(extension) > -1)) {
                     alert("Enter a jpg/jpeg/png file");

                     element.value = null;

                     return false;

                 }
             }
    </script>
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
                                
                                <li> <a href="#" title="Setting" > <img src="images/icon/shortcut/setting.png" alt="setting" /><strong>Setting</strong></a> </li> 
                                
                            </ul>
					</div>
                    <div class="clear"></div>
            
            
                 <div class="onecolumn" >
   
                        <div class="header"><span><span class="ico gray window"></span>  Add Banner </span>
                         <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        <div class="clear"></div>
                        <div class="content" >
                                  
                        
                        
                              <div class="section" >
                                  <label>  Banner name</label>   
                                  <div>   <asp:TextBox ID="Txtname" runat="server" CssClass="BlackTextSmall" Width="200px"></asp:TextBox>
                          </div>
                          </div>

                              <div class="section" >
                                  <label>  Title 1</label>   
                                  <div>   <asp:TextBox ID="txtTitl1" runat="server" CssClass="BlackTextSmall" Width="200px"></asp:TextBox>
                          </div>
                          </div>

                              <div class="section" >
                                  <label>  Title 2</label>   
                                  <div>   <asp:TextBox ID="txtTitl2" runat="server" CssClass="BlackTextSmall" Width="200px"></asp:TextBox>
                          </div>
                          </div>



                          
                           <div class="section" >
                                  <label>  Banner Image</label>   
                                  <div>   
                                      <asp:FileUpload ID="uFile" runat="server" class="fileupload" onchange="return FunCheckFile(this);"  /><label> Size 1920 x 730 px</label>   
                          </div>
                          </div>

                         


                          


                            <div class="section" >
                                  <label>  Link</label>   
                                  <div>  <asp:RadioButton ID="rbn_link_yes" runat="server"  Font-Bold="True" GroupName="grp_link"  OnClick="function_enable();" />Yes
                &nbsp;<asp:RadioButton ID="rbn_link_no" runat="server" Font-Bold="True" Checked="True" GroupName="grp_link" OnClick="function_enable();"/>No</div>
                             </div>
                          
                         <div class="section" >
                                  <label> Link URL</label>   
                                  <div>  
                                   <asp:TextBox ID="txtlink" runat="server" CssClass="BlackTextSmall" Width="200px" Enabled="false">http://</asp:TextBox>
                         </div>
                         </div>

                       <div class="section" >
                                  <label> Target</label>   
                                  <div>  
                                        <asp:DropDownList ID="drdw_target" runat="server" >
                        
                         <asp:ListItem Value="1">_self</asp:ListItem>
                         <asp:ListItem Value="2">_blank</asp:ListItem>                                
                         </asp:DropDownList>
                         </div>
                         </div>
                          
                             
                               <div class="section" >
                                  <label>  STATUS</label>   
                                  <div> <asp:CheckBox ID="chkStatus" runat="server" /></div>
                             </div>
                             
                             
                              <div class="section" >
                                  <label> Position</label>   
                                  <div>   <asp:TextBox ID="Txtpostion" runat="server" CssClass="BlackTextSmall" Text="1" Width="50px"></asp:TextBox></div>
                             </div>
                        
                            
                             
                               
                              <div class="section last">
                                  <div>
                                   <asp:LinkButton ID="btnadd"  runat="server" class="uibutton loading" Text="Add Banner"    OnClientClick="return validate();" OnClick="btnadd_Click" ></asp:LinkButton>
                                      <asp:LinkButton ID="btnBack"  runat="server" class="uibutton loading" Text="Back" OnClick="btnBack_Click" ></asp:LinkButton>
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
        debugger;
        function function_enable() {
            var rdn_linkyes = document.getElementById('rbn_link_yes').checked;
            var rdn_linkno = document.getElementById('rbn_link_no').checked;
            if (rdn_linkyes == true) {
                document.getElementById("txtlink").disabled = false;              
                document.getElementById("drdw_target").disabled = false;
            }
            else {
                document.getElementById("txtlink").disabled = true;
                document.getElementById("drdw_target").disabled = true;
            }
        }
        function validate() {
            if (document.getElementById("Txtname").value.trim() == "") {
                err = true;
                alert("Enter Banner Name");
                document.getElementById("Txtname").value = "";
                document.getElementById("Txtname").focus();

                return false;
            }
        }
		</script>
   
</body>
</html>

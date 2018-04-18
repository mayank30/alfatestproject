<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project_add.aspx.cs" Inherits="Alfa.Admin.project_add" %>
<%@ Register Src="~/Admin/headermenu.ascx" TagPrefix="uc1" TagName="headermenu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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
    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#txtDate").datepicker({ dateFormat: 'dd/mm/yy' });
        });
    </script>
     <style type="text/css">
        .ui-datepicker {
            font-size: 8pt !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
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
   
                        <div class="header"><span><span class="ico gray window"></span>  Add Project </span>
                         <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        <div class="clear"></div>
                        <div class="content" >
                                  
                        
                        
                              <div class="section" >
                                  <label>  Project Name</label>   
                                  <div>    <asp:TextBox ID="txtProjectName" runat="server" CssClass="styled_contct"  Width="200"></asp:TextBox>

                          </div>
                          </div>

                               <div class="section" >
                                  <label>  Description</label>   
                                  <div>   <asp:TextBox ID="txtDescription" runat="server" CssClass="styled_contct" TextMode="MultiLine" Width="600" Height="200"></asp:TextBox>
                          </div>
                          </div>


                            <div class="section" >
                                  <label>  Project Date</label>
                                   <cc1:CalendarExtender ID="CalendarExtender2" Format="dd/MM/yyyy" runat="server" TargetControlID="txtDate"  PopupPosition="TopRight">
                                      </cc1:CalendarExtender>
                                  <div>    <asp:TextBox ID="txtDate" runat="server" CssClass="styled_contct"  Width="100" MaxLength="11"></asp:TextBox>

                          </div>
                          </div>



                            <div class="section" >
                                  <label>  Clinet</label>   
                                  <div>    <asp:TextBox ID="txtClient" runat="server" CssClass="styled_contct"  Width="200"></asp:TextBox>

                          </div>
                          </div>
                              <div class="section" >
                                  <label>  Category</label>   
                                  <div>    <asp:TextBox ID="txtCat" runat="server" CssClass="styled_contct"  Width="200"></asp:TextBox>

                          </div>
                          </div>
                              <div class="section" >
                                  <label>  Net Worth</label>   
                                  <div>    <asp:TextBox ID="txtNetW" runat="server" CssClass="styled_contct"  Width="200"></asp:TextBox>

                          </div>
                          </div>

                           <div class="section" >
                                  <label>  Project Image</label>   
                                  <div>   
                                      <asp:FileUpload ID="uFile" runat="server" class="fileupload" onchange="return FunCheckFile(this);"  />  
                          </div>
                          </div>

                         


                          
                           

                           
                             
                               <div class="section" >
                                  <label>  STATUS</label>   
                                  <div> <asp:CheckBox ID="chkStatus" runat="server" /></div>
                             </div>
                             
                             
                              
                        
                            
                             
                               
                              <div class="section last">
                                  <div>
                                   <asp:LinkButton ID="btnadd"  runat="server" class="uibutton loading" Text="Add Projects"    OnClientClick="return validate();" OnClick="btnadd_Click"></asp:LinkButton>
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
</body>
</html>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="headermenu.ascx.cs" Inherits="ALAFAQKWT.Admin.headermenu" %>
<div id="alertMessage" class="error"></div> 
                       
        <div id="header" >
                <div id="account_info"> 
                    <%--<img src="images/avatar.png" alt="Online" class="avatar" />--%>
					<div class="setting" title="Profile Setting"><b>Welcome,</b> <b class="red">
					
                        <asp:Label ID="lbl_admin" runat="server" Text=""></asp:Label>
					
					</b><a href="settings.aspx"> <img src="images/gear.png" class="gear"  alt="Profile Setting" ></a></div>
					<div class="logout" title="Disconnect"><b >Logout</b><a href="logout.aspx"></div> 
                </div>
            </div> <!--//  header -->
			<div id="shadowhead"></div>
            <div id="hide_panel"> 
                  <a class="butAcc" rel="0" id="show_menu"></a>
                  <a class="butAcc" rel="1" id="hide_menu"></a>
                  <a class="butAcc" rel="0" id="show_menu_icon"></a>
                  <a class="butAcc" rel="1" id="hide_menu_icon"></a>
            </div>           
                   
                  <div id="left_menu">
                    <ul id="main_menu" class="main_menu">

                    
                 
                  <li class="limenu select" ><a href="Adminmain.aspx" ><span class="ico gray shadow home"></span><b>Dashboard</b></a>
                        
                      </li>
                    <%--  <li class="limenu" ><a href="adminusers.aspx"><span class="ico gray  dimensions" ></span><b>Admin Users</b></a>
                        
                      </li>--%>
                      <li class="limenu" ><a href="banners.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Banners</b> </a></li>

                         <li class="limenu" ><a href="home_category.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Home Category</b> </a></li>
                         <%--<li class="limenu" ><a href="store_category.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Store Category</b> </a></li>--%>
                         
                        <li class="limenu" ><a href="contact_address_details_add.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Contact Details</b> </a></li>
                         <li class="limenu" ><a href="projects.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Projects</b> </a></li>
                        <li class="limenu" ><a href="about_us_details_add.aspx"><span class="ico gray shadow  spreadsheet"></span><b>About Us</b> </a></li>
                        <li class="limenu" ><a href="servic.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Services</b> </a></li>
                     <%--    <li class="limenu" ><a href="services_add.aspx"><span class="ico gray shadow  spreadsheet"></span><b>Services</b> </a></li>--%>
                      
					  <li class="limenu" ><a href="logout.aspx"><span class="ico gray  shadow firewall"></span><b>Logout</b></a></li>
                       
                    </ul>
              </div>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ALAFAQKWT.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alafaqkwt</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <link href="css/default.css" rel="stylesheet" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="imgs/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="imgs/favicon.ico" type="image/x-icon" />
</head>
<body class="loading" id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <form id="form1" runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-custom navbar-fixed-top">
            <div class="top-header">
                <div class="container">
                    <div class="pull-left">
                        <a href="#" title="Home">
                            <img style="height: 65px; width: 105px;"
                                src="imgs/logo2.png" class="logo1" title="" alt="" />
                        </a>
                    </div>
                    <div class="pull-right">
                        <div class="top-menu">
                            <ul>
                                <li><a data-toggle="modal" href="#" data-target="#support">Support</a></li>
                                <li class="saperator">|</li>

                                <li><a data-toggle="modal" href="#" data-target="#faq" title="">FAQ</a></li>
                                <li class="saperator">|</li>
                                <li><a class="page-scroll" href="#contact-us" title="">Contact us </a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                        <div class="top-search-div">
                            <div class="top-social">
                                <ul>
                                    <li>
                                        <div class="hvr-sweep-to-right"><a href="" title="" target="_blank"><i class="fa fa-facebook"></i></a></div>
                                    </li>
                                    <li>
                                        <div class="hvr-sweep-to-right"><a href="" title="" target="_blank"><i class="fa fa-twitter"></i></a></div>
                                    </li>
                                    <li>
                                        <div class="hvr-sweep-to-right"><a href="" title="" target="_blank"><i class="fa fa-tumblr"></i></a></div>
                                    </li>

                                    <li>
                                        <div class="hvr-sweep-to-right"><a href="" title="" target="_blank"><i class="fa fa-linkedin"></i></a></div>
                                    </li>


                                    <li>
                                        <div class="hvr-sweep-to-right"><a href="" title="" target="_blank"><i class="fa fa-instagram"></i></a></div>
                                    </li>

                                    <li>
                                        <div class="hvr-sweep-to-right"><a href="" title="" target="_blank"><i class="fa fa-pinterest"></i></a></div>
                                    </li>



                                </ul>
                            </div>
                            <div class="top-search top-s">
                                <input type="text" placeholder="Search" />
                                <input type="submit" class="search" value="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- /.container -->
            <div class="navbar navbar-default navbar-custom">
                <div class="parallelogram-container">
                    <div class="parallelogram"></div>
                </div>
                <div class="container">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header page-scroll">
                            <div class="top-search-div search-div">
                                <div class="top-search">
                                    <input type="text" placeholder="Search" />
                                    <input type="submit" class="search" value="" />
                                </div>
                            </div>
                            <div class="pull-left fixed-menu-logo-2">
                                <a href="#top" title="Home">
                                    <img src="imgs/responsive-logo-2.png" alt="" /></a>
                            </div>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <i class="fa fa-bars"></i></button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <div class="pull-left fixed-menu-logo">
                                <a href="#top" title="Home">
                                    <img src="imgs/responsive-logo.png" alt="" /></a>
                            </div>
                            <nav>
                                <ul class="nav navbar-nav navbar-left">
                                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                                    <li>
                                        <a class="page-scroll" href="#">Home </a>

                                    </li>
                                    <li><a class="page-scroll" href="#about">About Us</a></li>
                                    <li><a class="page-scroll" href="#services">Services</a></li>
                                    <li><a class="page-scroll" href="#projects">Projects</a></li>


                                    <li><a class="page-scroll" href="#clients">Clients</a></li>
                                    <li><a class="page-scroll" href="#contact-us">Contact Us</a></li>

                                    <li class="on-mob"><a href="#" data-toggle="modal" data-target="#myModal3">Quote Now</a></li>

                                </ul>
                            </nav>
                            <div class="pull-right quote-now"><a href="#" data-toggle="modal" data-target="#myModal3">Quote Now <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                </div>
                <!-- /.container -->
            </div>
        </nav>
        <!-- preloader-->
        <div id="preloader"></div>
        <!-- Modal -->
        <div id="myModal5" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        Project Name
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="project-details">
                            <div class="row">
                                <div class="col-md-5 col-sm-5 col-xs-12">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>
                                    <ul class="no-margin no-padding">
                                        <li><span class="orange-txt"><i class="fa fa-calendar" aria-hidden="true"></i>Date : </span>April 15, 2017</li>
                                        <li><span class="orange-txt"><i class="fa fa-user" aria-hidden="true"></i>Client : </span>Harrison Group, Texas</li>
                                        <li><span class="orange-txt"><i class="fa fa-list" aria-hidden="true"></i>Category : </span>Construction, Home</li>
                                        <li><span class="orange-txt"><i class="fa fa-bar-chart" aria-hidden="true"></i>Net Worth : </span>US $29.9</li>
                                        <li><a href="#" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a><a href="#" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a><a href="#" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a><a href="#" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="col-md-7 col-sm-7 col-xs-12 text-center">
                                    <img src="imgs/a2.jpg" alt="" title="" class="img-responsive">
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="myModal2" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        Neque porro quisquam
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="project-details2">
                            <div class="row">
                                <div class="col-md-5 col-sm-5 col-xs-12">
                                    <ul class="comm-date">
                                        <li>March 31, 2017 </li>
                                        <li>|</li>
                                        <li><span>by Admin</span> </li>
                                        <li>|</li>
                                        <li>No Comments</li>
                                    </ul>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <h1>Popular tags</h1>
                                    <div class="tag-list2">
                                        <ul>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>corporate </a></li>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>theme </a></li>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>css3 </a></li>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>premium </a></li>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>html5 </a></li>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>business </a></li>
                                            <li><a href="#" class="#" title="Tags"><i class="fa fa-tag"></i>all purpose </a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="col-md-7 col-sm-7 col-xs-12 text-center">
                                    <img src="imgs/a2.jpg" alt="" title="" class="img-responsive">
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="myModal3" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="row">
                            <div class="col-xs-12 col-md-12 bg-dark  right-section form-sec">
                                <div class="page-subheader">
                                    <h2>request a quote</h2>
                                </div>
                                <div class="border"></div>
                                <div class="description">
                                    <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.</p>
                                </div>
                                <form action="" method="post" id="requestForm">
                                    <div class="form-group no-margin">
                                        <div class="controls col-xs-6 no-padding-left">
                                            <input class="form-control input" placeholder="Name" name="name" id="name" type="text">
                                        </div>
                                        <div class="controls col-xs-6 no-padding-right">
                                            <input class="form-control input" placeholder="Email" name="email" id="email" type="text">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="form-group no-margin">
                                        <div class="controls col-xs-6 no-padding-left">
                                            <input class="form-control input" placeholder="Service Type" name="service_type" id="service_type" type="text">
                                        </div>
                                        <div class="controls col-xs-6 no-padding-right">
                                            <input class="form-control input" placeholder="Contact no." name="contact_no" id="contact_no" type="text">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="form-group no-margin">
                                        <div class="controls">
                                            <textarea class="form-control textarea" placeholder="Message" name="message" id="message"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input value="SUBMIT" onclick="return ajaxmailrequest();" class="btn btn-clear" type="button">
                                        <!--<button class="btn btn-clear">SUBMIT</button>-->
                                        <button class="btn btn-clear blue-btn">Reset</button>
                                        <div class="loader2">
                                            <img src="imgs/processing.gif" alt="Processing..." style="display: none;" id="loader1">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--Term & Condition-->
        <div id="term" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        Term & Condition
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="project-details">
                            <div class="row div2">
                                <div class="col-md-12">
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--Term & Condition-->
        <!--Privacy-->
        <div id="privacy" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        Privacy
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="project-details">
                            <div class="row div2">
                                <div class="col-md-12">
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--Privacy-->
        <!--support-->
        <div id="support" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        Support
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="project-details">
                            <div class="row div2">
                                <div class="col-md-12">
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit.</p>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--support-->
        <!--FAQ-->
        <div id="faq" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        FAQ
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body bgcolor">
                        <div class="project-details">
                            <div class="row div2">
                                <div class="col-md-12 ">
                                    <div class="faq-details">
                                        <h4>Q. Lorem Ipsum is simply dummy text ?</h4>
                                        <p><span>Ans.</span> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                                        <h4>Q. Lorem Ipsum is simply dummy text ?</h4>
                                        <p><span>Ans.</span> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                                        <h4>Q. Lorem Ipsum is simply dummy text ?</h4>
                                        <p><span>Ans.</span> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                                        <h4>Q. Lorem Ipsum is simply dummy text ?</h4>
                                        <p><span>Ans.</span> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                                        <h4>Q. Lorem Ipsum is simply dummy text ?</h4>
                                        <p><span>Ans.</span> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--FAQ-->
        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel carousel-1 slide carousel-fade">
            <div class="bottom-twt">
                <div class="container pos-relative">


                    <div class="pull-right">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="scroll-dwn">
                <a class="page-scroll dwn" href="#about">
                    <img src="imgs/scroll-dwn.png" class="arrow bounce" alt="" /></a>
            </div>
            <ol class="carousel-indicators" id="indicators" runat="server">
                <%--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>--%>
            </ol>
            <div class="carousel-inner" id="slides" runat="server">
                <%--<div class="item active">
                <div class="fill" style="background-image:url('imgs/banner-1.jpg');"></div>
                <div class="pattern"></div>
                <div class="carousel-caption">
                    <h2><span>Welcome to  HOME BUILDER CONSTRUCTION SERVICES</span> </h2>
                    <h1>Neque porro quisquam</h1>
                   
                </div>
            </div>--%>
            </div>
        </header>
        <!--\\ Header Carousel -->
        <!-- About -->
        <div class="content-section section-top about-section about-home" id="about">
            <div class="container">
                <%     
                    DBConnection.cls_DBConnection obj_DbConnection = new DBConnection.cls_DBConnection();
                    System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
                    con = obj_DbConnection.getSqlConnection();
                    try
                    {
                        con.Open();
                        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                        System.Data.DataTable dtbl = new System.Data.DataTable();
                        cmd.CommandText = "sp_get_front_aboutus_details";
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Connection = con;

                        System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
                        da.Fill(dtbl);
                        if (dtbl.Rows.Count > 0)
                        {%>


                <h2 class="text-center text-uppercase"><span class="orange-txt"><% Response.Write(dtbl.Rows[0]["title"].ToString());%></span></h2>
                <div class="border-creative text-center">
                    <img src="imgs/border.png" alt="" />
                </div>
                <div class="col-xs-8">
                    <div class="col-xs-5 text-uppercase fancy-txt montserrat wow fadeInLeft" data-wow-duration="900ms" data-wow-delay="200ms"><% Response.Write(dtbl.Rows[0]["title_left"].ToString());%></div>
                    <div class="col-xs-7 top-txt wow fadeIn" data-wow-duration="900ms" data-wow-delay="400ms">
                        <p><% Response.Write(dtbl.Rows[0]["description"].ToString());%></p>

                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-4 no-padding wow fadeInRight" data-wow-duration="900ms" data-wow-delay="600ms">

                    <% Response.Write("<img class='img-responsive' src='images/about/" + dtbl.Rows[0]["image_url"].ToString() + "'/>");%>
                </div>
                <div class="clearfix"></div>



                <%}
                        if (con.State == System.Data.ConnectionState.Open)
                        {
                            con.Close();
                        }
                    }

                    catch (Exception ex)
                    {
                        if (con.State == System.Data.ConnectionState.Open)
                        {
                            con.Close();
                        }
                        throw ex;
                    }%>
            </div>
        </div>
        <!--\\ About -->
        <!-- services -->
        <div class="content-section light-bg top-tabs section-top" id="services">
            <div class="container">
                <h2 class="text-center text-uppercase">Our <span class="orange-txt">Services</span></h2>
                <div class="border-creative text-center">
                    <img src="imgs/border.png" alt="" />
                </div>
                <div class="tabs-left">
                    <div class="col-xs-3 no-padding wow fadeInLeft" data-wow-duration="900ms" data-wow-delay="200ms">
                        <ul class="nav nav-tabs mainservices">
                            <li class="active"><a href="#a" data-toggle="tab"><span class="number-div"><i class="flaticon-engineer"></i></span><span class="tab-txt">General Contracting</span></a></li>
                            <li><a href="#b" data-toggle="tab"><span class="number-div"><i class="flaticon-caution"></i></span><span class="tab-txt">Construction Services</span></a></li>
                            <li><a href="#c" data-toggle="tab"><span class="number-div"><i class="flaticon-paint"></i></span><span class="tab-txt">Building Modeling</span></a></li>
                            <li><a href="#d" data-toggle="tab"><span class="number-div"><i class="flaticon-settings"></i></span><span class="tab-txt">Pre-construction</span></a></li>
                            <li><a href="#e" data-toggle="tab"><span class="number-div"><i class="flaticon-transport"></i></span><span class="tab-txt">Management</span></a></li>
                        </ul>
                    </div>
                    <div class="col-xs-9 wow fadeInRight" data-wow-duration="900ms" data-wow-delay="400ms">
                        <div class="tab-content serviceTab">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- /col -->
            </div>
        </div>
        <!--\\ services -->
        <!-- Projects -->
        <div class="content-section projects-section section-top" id="projects">
            <div class="pattern"></div>
            <div class="container">
                <h2 class="text-center text-uppercase">Our Latest <span class="orange-txt">Projects</span></h2>
                <div class="border-creative text-center">
                    <img src="imgs/border-2.png" alt="" />
                </div>
                <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="100ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project1.jpg" alt="" class="img-responsive" />
                </div>
                <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="150ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project2.jpg" alt="" class="img-responsive" />
                </div>
                <div class="col-xs-4 wow fadeIn" data-wow-duration="900ms" data-wow-delay="200ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span></h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project-3.jpg" alt="" class="img-responsive" />
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="250ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project4.jpg" alt="" class="img-responsive" />
                </div>
                <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="300ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project5.jpg" alt="" class="img-responsive" />
                </div>
                <div class="col-xs-4 wow fadeIn" data-wow-duration="900ms" data-wow-delay="500ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project-6.jpg" alt="" class="img-responsive" />
                </div>
                <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="450ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project8.jpg" alt="" class="img-responsive" />
                </div>
                <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="400ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project-7.jpg" alt="" class="img-responsive" />
                    <div class="clearfix"></div>
                </div>
                <div class="col-xs-4 wow fadeIn" data-wow-duration="900ms" data-wow-delay="350ms">
                    <div class="gamma-description montserrat">
                        <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                        <h3>
                            <img src="imgs/search.png" alt="" />
                            <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                        <p>Design / Build</p>
                    </div>
                    <img src="imgs/project-10.jpg" alt="" class="img-responsive" />
                </div>
                <div id="demo" class="collapse">
                    <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="100ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project1.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="150ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project2.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="col-xs-4 wow fadeIn" data-wow-duration="900ms" data-wow-delay="200ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project-3.jpg" alt="" class="img-responsive" />
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="250ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project4.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="300ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project5.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="col-xs-4 wow fadeIn" data-wow-duration="900ms" data-wow-delay="500ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project-6.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="450ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project8.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="col-xs-2 wow fadeIn" data-wow-duration="900ms" data-wow-delay="400ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project-7.jpg" alt="" class="img-responsive" />
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-xs-4 wow fadeIn" data-wow-duration="900ms" data-wow-delay="350ms">
                        <div class="gamma-description montserrat">
                            <a data-toggle="modal" data-target="#myModal5" class="full-link" title=""></a>
                            <h3>
                                <img src="imgs/search.png" alt="" />
                                <span class="clearfix"></span><span class="text-n">Neque porro quisquam</span> </h3>
                            <p>Design / Build</p>
                        </div>
                        <img src="imgs/project-10.jpg" alt="" class="img-responsive" />
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="project-bottom wow fadeIn" data-wow-duration="900ms" data-wow-delay="550ms">VIEW MORE WORKS DONE BY Us <a data-toggle="collapse" data-target="#demo" class="montserrat">VIEW ALL PROJECTS <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
        </div>
        <!--\\ Projects -->
        <!-- footer -->
        <div class="footer-logos content-section section-top" id="clients">
            <div class="container">
                <h2 class="text-center text-uppercase">Our <span class="orange-txt">Clients</span></h2>
                <div class="border-creative text-center">
                    <img src="imgs/border.png" alt="" />
                </div>
                <p class="clients-para">Our Clients are super important for our well being</p>
                <div id="owl-demo" class="owl-carousel owl-carousel-2">
                    <div class="item">
                        <img src="imgs/logo-carousel/logo1.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo2.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo3.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo4.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo5.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo1.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo2.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo3.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo4.png" alt="" />
                    </div>
                    <div class="item">
                        <img src="imgs/logo-carousel/logo5.png" alt="" />
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div id="contact-us"></div>
            <div class="newsletter wow fadeInUp" data-wow-duration="900ms" data-wow-delay="100ms">
                <div class="container">
                    <div class="col-xs-6 address">
                        <div class="col-xs-2"><i class="flaticon-placeholder"></i></div>
                        <div class="nws-txt no-padding">
                            <h5>Location : </h5>
                            <p>
                                Farwaniya Dajeej,Al Arbeed Center(Old Jawazat),Mezzanine floor,
                                <br>
                                Office No-7, Kuwait,
                            </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-xs-6 phone-div">
                        <div class="col-xs-5">
                            <div class="col-xs-2"><i class="flaticon-technology"></i></div>
                            <div class="nws-txt no-padding">
                                <h5>Phone : </h5>
                                <p>
                                    00965-65998537,
                                00965-65998537
                                </p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-xs-6 pull-right">
                            <div class="col-xs-2"><i class="flaticon-email"></i></div>
                            <div class="nws-txt no-padding">
                                <h5>Mail Us : </h5>
                                <p>
                                    <a href="mailto:amanareddy@alafaqkwt.com">amanareddy@alafaqkwt.com</a>,
                                    <br>
                                    <a href="mailto:amanareddy@alafaqkwt.com">amanareddy@alafaqkwt.com</a>
                                </p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                    <!-- /.bg -->
                </div>
                <!-- /.container -->
            </div>
            <div class="footer-container">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-12 wow fadeIn" data-wow-duration="900ms" data-wow-delay="150ms">
                            <div class="foot-logo">
                                <img src="imgs/footer-logo.png" alt="" class="img-responsive" />
                            </div>
                            <div class="foot-content">
                                <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.</p>
                                <p class="no-margin">Follow us on:</p>
                                <ul class="no-margin no-padding foot-social">
                                    <li><a href="" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="" target="_blank"><i class="fa fa-tumblr"></i></a></li>
                                    <li><a href="" target="_blank"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="" target="_blank"><i class="fa fa-pinterest"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-xs-12 wow fadeIn" data-wow-duration="900ms" data-wow-delay="250ms">
                            <div class="foot-logo">
                                <h3 class="montserrat">Quick links</h3>
                            </div>
                            <ul class="no-margin no-padding quick-links">
                                <li><a class="page-scroll" href="#page-top">Home</a></li>
                                <li><a class="page-scroll" href="#about">About Us</a></li>
                                <li><a class="page-scroll" href="#services">Services</a></li>
                                <li><a class="page-scroll" href="#projects">Projects</a></li>
                                <li><a class="page-scroll" href="#news">News</a></li>
                                <li><a class="page-scroll" href="#testimonial">Testimonial</a></li>
                                <li><a class="page-scroll" href="#clients">Clients</a></li>
                                <li><a class="page-scroll" href="#contact-us">Contact Us</a></li>
                            </ul>
                            <ul class="no-margin no-padding quick-links">
                                <li><a href="#" data-toggle="modal" data-target="#term">Term &amp; Condition</a></li>
                                <li><a href="#" data-toggle="modal" data-target="#privacy">Privacy</a></li>
                                <li><a href="#" data-toggle="modal" data-target="#support">Support</a></li>
                                <li><a href="#" data-toggle="modal" data-target="#faq">FAQ</a></li>
                                <li><a href="page-not-found.html">404</a></li>
                                <li><a href="coming-soon.html">Coming Soon</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-xs-12 wow fadeIn" data-wow-duration="900ms" data-wow-delay="350ms">
                            <div class="foot-logo">
                                <h3 class="montserrat">Instagram feeds</h3>
                            </div>
                            <!-- SnapWidget -->
                            <div class="feeds">
                                <iframe src="https://snapwidget.com/embed/420078" class="snapwidget-widget snapwidget-1"></iframe>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-md-3 col-xs-12 wow fadeIn" data-wow-duration="900ms" data-wow-delay="450ms">
                            <div class="foot-logo">
                                <h3 class="montserrat">SIGN UP TO OUR NEWSLETTER</h3>
                            </div>
                            <form method="post" id="subsForm" class="footer-subscribe montserrat text-center" onsubmit="return ajaxmailsubscribe();">
                                <input type="email" name="subsemail" id="subsemail" placeholder="Enter your Email here" />
                                <input type="button" value="SUBSCRIBE" onclick="return ajaxmailsubscribe();" />
                                <p>We never spam your email <span class="orange-txt">(*)</span> </p>
                            </form>
                            <div class="clearfix"></div>
                            <div class="loader2">
                                <img src="imgs/processing.gif" alt="Processing..." id="loader2" style="display: none;">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <div class="pull-left">
                        <p>© 2018. Intl. General Construction & Contracting Co.</p>
                    </div>
                    <div class="pull-right">
                        <p>Designed & Developed by <a href="" target="_blank">Alafaqkwt</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- footer-->
        </div>
        <!-- Scroll Top Button -->
        <a href="#top"></a>
        <!-- jQuery -->
        <p data-toggle="modal" class="no-margin" data-target="#myModal" id="model2"></p>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <!--<button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>-->
                    </div>
                    <div class="modal-body">
                        <br />
                        <br />
                        <h3 class="modal-title">Thank You</h3>
                        <h4>We will get back to you as soon as possible.</h4>
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Form Script -->
        <script src="js/ajax.js"></script>
        <script src="js/formValidation.js"></script>
        <script src="js/jquery-1.12.4.min.js"></script>
        <!-- Twitter handler -->
        <script type="text/javascript" src="js/twitter/tweetie.js"></script>
        <!-- Number Counter -->
        <script type="text/javascript" src="js/numscroller-1.0.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Owl Carousel -->
        <script src="js/owlcarousel/owl.carousel.staff.js"></script>
        <!-- Scroll to Top -->
        <script type="text/javascript" src="js/scrolltopcontrol.js"></script>
        <!-- Animation JS -->
        <script src="js/wow.min.js"></script>
        <!-- Custom JS -->
        <script src="js/custom-index.js"></script>
        <!-- Custom JS -->
        <!-- Theme JavaScript -->
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/grayscale.min.js"></script>
        <script>
            $(document).ready(function () {
                $.ajax({
                    url: "/api/servicesapi.aspx/GetMainServices",
                    contentType: "application/json",

                    success: function (r) {
                        var data = r.d;
                        var html = '';
                        for (i = 0; i < data.length; i++) {
                            html = html + mainServiceTempl(data[i]);
                        }
                        $(".mainservices").html(html);
                        setTimeout(function () {
                            $(".serviceDetails").click(function () {
                                var id = $(this).attr("data-sid");
                                var name = $(this).attr("data-name");
                                getServiceDetailAjax(id,name);
                            });
                        }, 100);

                        getServiceDetailAjax(data[0].id, data[0].services_name);
                    }
                });
            });

            function getServiceDetailAjax(id,name) {
                $.ajax({
                    url: "/api/servicesapi.aspx/GetServiceDetailByServiceId?id="+id,
                    contentType: "application/json",

                    success: function (r) {
                        var data = r.d;
                        $(".serviceTab").html(serviceDetailTempl(data,name));
                    }
                });
            }

            function mainServiceTempl(s) {
                return '<li class="serviceDetails" data-sid="' + s.id + '" data-name="' + s.services_name + '"><a href="#a"  data-toggle="tab"><span class="number-div"><i class="flaticon-engineer"></i></span><span class="tab-txt">' + s.services_name + '</span></a></li>';
            }

            function serviceDetailTempl(s, name) {
                return '<div class="tab-pane active" id="a">'+
                                '<div class="col-xs-6 no-padding">'+
                                    '<img src="imgs/'+s.img_url+'" alt="" class="img-responsive" />'+
                                '</div>'+
                                '<div class="col-xs-6">'+
                                    '<h3>'+name+'</h3>'+
                                    '<p>' + s.services_description + '</p>' +
                        '</div>';
            }
        </script>
    </form>
</body>
</html>


<!---
     '<div class="icon-listing">'+
                    '<ul class="no-margin no-padding">'+
                        '<li>'+
                            '<div class="icon-cont"><i class="fa fa-university" aria-hidden="true"></i></div>'+
                           '<div class="icon-txt">'+
                                '<p class="lead">Building Modeling</p>'+
                                '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>'+
                            '</div>'+
                            '<div class="clearfix"></div>'+
                        '</li>'+
                        '<li>'+
                            '<div class="icon-cont"><i class="fa fa-users" aria-hidden="true"></i></div>'+
                            '<div class="icon-txt">'+
                                '<p class="lead">Who we are</p>'+
                                '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>'+
                            '</div>'+
                            '<div class="clearfix"></div>'+
                        '</li>'+
                        '<li>'+
                            '<div class="icon-cont"><i class="fa fa-line-chart" aria-hidden="true"></i></div>'+
                            '<div class="icon-txt">'+
                                '<p class="lead">Our Achievements</p>'+
                                '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>'+
                            '</div>'+
                            '<div class="clearfix"></div>'+
                        '</li>'+
                    '</ul>'+
                '</div>'+
            '</div>'+
            '<div class="clearfix"></div>'+
     -->
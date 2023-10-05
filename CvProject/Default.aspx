<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CvProject.Default" %>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Hoş Geldiniz</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <img src="web/images/about.jpg" alt="news image" class="img-fluid navimg">
            <h1 class="top_hd mt-2"><a href="index.html">Hakan Pekyürek</a></h1>
            <p class="top_hdp mt-2">Sofware (Test) Engineer</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Home</a></li>
                        <li class="mt-sm-3"><a href="#summary" class="scroll">Summary</a></li>
                        <li class="mt-sm-3"><a href="#education" class="scroll">Education</a></li>
                        <li class="mt-sm-3"><a href="#skills" class="scroll">Skills</a></li>
                        <li class="mt-sm-3"><a href="#experience" class="scroll">Experience</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3>Hoş Geldiniz</h3>
                    <p class="banp mx-auto mt-3">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%# Eval("Name") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                    <p class="banp mx-auto mt-3">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <%# Eval("Title") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#summary" role="button">Learn More</a>
                </div>
            </div>
        </div>
        <!-- Education -->
        <section class="slide-wrapper" id="summary">
            <h2 class="w3_head mb-4">Summary</h2>
            <p class="iner mt-md-5">
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <%# Eval("Summary")%>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </section>
        <!-- //Education -->
        <!-- Summary -->
        <section class="news" id="education">
            <h3 class="w3_head mb-4 text-left">Education</h3>
            <p class="iner mt-md-5 text-left"></p>
            <p class="iner mt-md-5">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%# Eval("SchoolName") + " " + "(" + Eval("Year")+ ")" %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </section>
        <!-- //Summary -->
        <!-- skills -->
        <section class="services" id="skills">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Skills</h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater6" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%#Eval("Skill") %> </h6>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>
                </ul>
            </div>
        </section>
        <!-- //skills -->
        <!-- Experience -->
        <div class="news" id="experience">
            <h3 class="w3_head mb-4 text-left">Experience</h3>
            <p class="iner mt-md-5 text-left"></p>
            <div>
                <p class="iner mt-md-5">
                    <asp:Repeater ID="Repeater5" runat="server">
                        <ItemTemplate>
                            <h4><%# "(" + Eval("Year") +") " + Eval("CompanyName")%><br />
                            </h4>
                            <h5><%# Eval("Title") %><br />
                            </h5>
                            <%# Eval("Description")%><br />
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </p>
            </div>
        </div>
        <!-- //Experience -->
        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left">Contact Me</h3>
            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat ="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Subject"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Message" TextMode="MultiLine" Height="50"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass ="btn btn-info" Text="Send" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" CssClass ="btn btn-warning" Text="Reset" OnClick="Button2_Click" />
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <p>
                    © 2018 Conjoint. All rights reserved | Design by
					<a href="http://w3layouts.com">W3layouts.</a>
                </p>
            </div>
        </section>
        <!-- //contact -->
    </div>

</body>
</html>

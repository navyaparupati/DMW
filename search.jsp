<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>NGO</title>
    <!-- google-fonts -->

    <!-- //google-fonts -->
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
</head>
<%
   String mm=request.getParameter("m");
if(request.getParameter("m")!=null)
	{
out.println("<script>alert('Login Fail !')</script>");
}
%>
<body>
    <!-- top header -->
    <section class="w3l-top-header">
        <div class="container">
            <div class="top-content-w3ls d-flex align-items-center justify-content-between">
                <div class="top-headers">
                    <ul>
                        <li>
                            <a href="#help" class="d-sm-block d-none">Have any question ?</a>
                        </li>
                        <li>
                            <i class="fa fa-phone"></i><a href="tel:+1(21) 234 4567">+1(21) 234 4567</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope"></i><a href="mailto:mail@example.com">mail@example.com</a>
                        </li>
                    </ul>
                </div>
                <div class="top-headers top-headers-2">
                    <ul>
                        <li>
                            <a href="#facebook"><span class="fab fa-facebook-f"></span></a>
                        </li>
                        <li>
                            <a href="#twitter"><span class="fab fa-twitter"></span></a>
                        </li>
                        <li>
                            <a href="#instagram"><span class="fab fa-instagram""></span></a>
                        </li>
                        <li class=" mr-0">
                                    <a href="#linkedin"><span class="fab fa-linkedin-in"></span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- //top header -->
    <!--header-->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg stroke">
                <h1>
                     <!-- <a class="navbar-brand" href="index.html">
                       <span>G</span>reensward
                    </a> -->
                </h1>
                <!-- if logo is image enable this   
    <a class="navbar-brand" href="#index.html">
        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
    </a> -->
                <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                    data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav ml-lg-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="usignup.jsp">User Signup</a>
                        </li>
                                <li class="nav-item">
                            <a class="nav-link" href="osignup.jsp">Organization Signup</a>
                        </li>
        
                    </ul>
                </div>
                <!-- search button -->
                <div class="search-right ml-lg-3">
                    <div class="search-container">
                        <form action="search.jsp" method="get">
                            <input class="search expandright" id="searchright" type="search" name="keys"
                                placeholder="Search Organzations">
                            <label class="button searchbutton" for="searchright"><i class="fas fa-search"></i></label>
                        </form>
                    </div>
                </div>
                <!-- //search button -->
                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!--//header-->
		  <head>
<style>
table, th, td {
border:0.2px solid;
}
th, td {
    padding: 15px;
    
	text-align: left;
}
</style>
</head>
    <!-- inner banner -->
    <section class="inner-banner py-lg-4 pt-lg-0 pt-5">
        <div class="w3l-breadcrumb py-5 mt-lg-0 mt-3">
            <div class="container py-xl-5 py-md-4">
               
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact -->
    <section class="w3l-contact pb-5" id="contact">
        <div class="container pb-md-5 pb-4">
            <div class="row contact-block">
                <div class="col-lg-5 mt-lg-0 mt-sm-5 mt-4 pr-xl-5 pr-lg-4 order-lg-first order-last">
              <br><br><br>
							<div class="services-single   ">
                           <hr>   
                         <div class="service-icon  mr-3"><center>
                             <h3 class="title-style">Sign<span>in</span></h3><center>
                                    <table align="ceter" width="70%">
									<tr>
										<td>
									<form method="post" action="login.jsp">
								<input type="text" name="uid" id="w3lName" placeholder="Email id*"    width="80%"     class="form-control"           required="" />
									<input type="password" name="pwd" id="w3lName" placeholder="Password*"    width="80%"     class="form-control"           required="" />
									Select Login Type
									<select name="type"   class="form-control"       id="w3lName"  >  
										<option value="users" selected>User
										<option value="Organizations">Organization
									</select>
								<tr><td> <br>
							<input type="submit"  class="" value="Login" >				
							</form>					</tr>
									</table><br>
                                </div>
                            </div>

					<div class="services-single d-flex p-sm-5 p-4">
                  
                                <div class="services-content">
                              
                                    <h5><a href="services.html">Tags Search</a></h5>
                
                                    <a href="tagsearch.jsp?keys=NonProfit Organization" class="btn read-button d-flex align-items-center mt-4 p-0">NonProfit Organization<i class="fas fa-angle-right"></i></a>

                                    <a href="tagsearch.jsp?keys=Charitable Organization" class="btn read-button d-flex align-items-center mt-4 p-0">Charitable Organization<i class="fas fa-angle-right"></i></a>

                                    <a href="tagsearch.jsp?keys=Cooperative" class="btn read-button d-flex align-items-center mt-4 p-0">Cooperative<i class="fas fa-angle-right"></i></a>

                                    <a href="tagsearch.jsp?keys=Alumni Association" class="btn read-button d-flex align-items-center mt-4 p-0">Alumni Association<i class="fas fa-angle-right"></i></a>

                  
                                </div>
                            </div>


                </div>
                <div class="col-lg-7 contact-right pt-5 mt-lg-4 order-lg-last order-first">
                 
<h1>Organizations</h2>
<br><br>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from organizations where name like '%"+request.getParameter("keys")+"%'  ";
	//String sss1 = " select * from organizations  ";
	ResultSet rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next()){
	%><table border cellspacing="20"  width="100%">
		<tr><td> <h3><%=rs.getString("name")%></h3>
		<%=rs.getString("about")%>
<br>

		<a href="viewprofile.jsp?email=<%=rs.getString("email")%>"><img src="assets/images/b1.png" width="272" height="52" border="0" alt=""></a>

		 </table>
<br><br>
	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>



 

                         
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //contact -->

    <!-- footer -->
    <footer class="w3l-footer-16">
       
        <div class="copy-section text-center py-4">
            <div class="container">
                <p class="copy-text">&copy; 2022 . All rights reserved. 
                        
                </p>
            </div>
        </div>
    </footer>
    <!-- //footer -->

    <!-- Js scripts -->
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- //move top -->

    <!-- common jquery plugin -->
    <script src="assets/js/jquery-3.3.1.min.js"></script>
    <!-- //common jquery plugin -->

    <!-- theme switch js (light and dark)-->
    <script src="assets/js/theme-change.js"></script>
    <script>
        function autoType(elementClass, typingSpeed) {
            var thhis = $(elementClass);
            thhis.css({
                "position": "relative",
                "display": "inline-block"
            });
            thhis.prepend('<div class="cursor" style="right: initial; left:0;"></div>');
            thhis = thhis.find(".text-js");
            var text = thhis.text().trim().split('');
            var amntOfChars = text.length;
            var newString = "";
            thhis.text("|");
            setTimeout(function () {
                thhis.css("opacity", 1);
                thhis.prev().removeAttr("style");
                thhis.text("");
                for (var i = 0; i < amntOfChars; i++) {
                    (function (i, char) {
                        setTimeout(function () {
                            newString += char;
                            thhis.text(newString);
                        }, i * typingSpeed);
                    })(i + 1, text[i]);
                }
            }, 1500);
        }

        $(document).ready(function () {
            // Now to start autoTyping just call the autoType function with the 
            // class of outer div
            // The second paramter is the speed between each letter is typed.   
            autoType(".type-js", 200);
        });
    </script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!--bootstrap-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- //bootstrap-->
    <!-- //Js scripts -->
</body>

</html>
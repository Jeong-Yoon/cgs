<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String ctx = request.getContextPath(); %>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
        <!-- Open Sans -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="<%=ctx %>/resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="<%=ctx %>/resources/css/external/jquery.selectbox.css" rel="stylesheet" />

        <!-- REVOLUTION BANNER CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="<%=ctx %>/resources/rs-plugin/css/settings.css" media="screen" />
    
        <!-- Custom -->
        <link href="<%=ctx %>/resources/css/style.css?v=1" rel="stylesheet" />


        <!-- Modernizr --> 
        <script src="<%=ctx %>/resources/js/external/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body>
    <div class="wrapper">
<!--         Banner -->
<!--         <div class="banner-top"> -->
<%--             <center><img alt='top banner' src="<%=ctx %>/resources/images/banners/1026_980x80.jpg" ></center> --%>
<!--         </div> -->

        <!-- Header section -->
        <header class="header-wrapper header-wrapper--home">
            <div class="container">
                <!-- Logo link-->
                <a href='index.html' class="logo">
                    <img alt='logo' src="<%=ctx %>/resources/images/logo.png">
                </a>
                
                <!-- Main website navigation-->
                <nav id="navigation-box">
                    <!-- Toggle for mobile menu mode -->
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                    
                    <!-- Link navigation -->
                    <ul id="navigation">
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="#">Pages</a>
                            <ul>
<!--                                 <li class="menu__nav-item"><a href="movie-page-left.html">Single movie (rigth sidebar)</a></li> -->
<!--                                 <li class="menu__nav-item"><a href="movie-page-right.html">Single movie (left sidebar)</a></li> -->
                                <li class="menu__nav-item"><a href="movie-page-full.html">Single movie (full widht)</a></li>
<!--                                 <li class="menu__nav-item"><a href="movie-list-left.html">Movies list (rigth sidebar)</a></li> -->
<!--                                 <li class="menu__nav-item"><a href="movie-list-right.html">Movies list (left sidebar)</a></li> -->
                                <li class="menu__nav-item"><a href="movie-list-full.html">Movies list (full widht)</a></li>
                                <li class="menu__nav-item"><a href="single-cinema.html">Single cinema</a></li>
                                <li class="menu__nav-item"><a href="cinema-list.html">Cinemas list</a></li>
                                <li class="menu__nav-item"><a href="trailer.html">Trailers</a></li>
<!--                                 <li class="menu__nav-item"><a href="rates-left.html">Rates (rigth sidebar)</a></li> -->
<!--                                 <li class="menu__nav-item"><a href="rates-right.html">Rates (left sidebar)</a></li> -->
                                <li class="menu__nav-item"><a href="rates-full.html">Rates (full widht)</a></li>
                                <li class="menu__nav-item"><a href="offers.html">Offers</a></li>
                                <li class="menu__nav-item"><a href="contact.html">Contact us</a></li>
<!--                                 <li class="menu__nav-item"><a href="404.html">404 error</a></li> -->
                                <li class="menu__nav-item"><a href="coming-soon.html">Coming soon</a></li>
                                <li class="menu__nav-item"><a href="login.html">Login/Registration</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements.html">Features</a>
                            <ul>
                                <li class="menu__nav-item"><a href="typography.html">Typography</a></li>
                                <li class="menu__nav-item"><a href="page-elements.html">Shortcodes</a></li>
                                <li class="menu__nav-item"><a href="column.html">Columns</a></li>
                                <li class="menu__nav-item"><a href="icon-font.html">Icons</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="page-elements.html">Booking steps</a>
                            <ul>
                                <li class="menu__nav-item"><a href="book1.html">Booking step 1</a></li>
                                <li class="menu__nav-item"><a href="book2.html">Booking step 2</a></li>
                                <li class="menu__nav-item"><a href="book3-buy.html">Booking step 3 (buy)</a></li>
                                <li class="menu__nav-item"><a href="book3-reserve.html">Booking step 3 (reserve)</a></li>
                                <li class="menu__nav-item"><a href="book-final.html">Final ticket view</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="gallery-four.html">Gallery</a>
                            <ul>
                                <li class="menu__nav-item"><a href="gallery-four.html">4 col gallery</a></li>
                                <li class="menu__nav-item"><a href="gallery-three.html">3 col gallery</a></li>
                                <li class="menu__nav-item"><a href="gallery-two.html">2 col gallery</a></li>
                            </ul>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="contact.html">Contact us</a>
<!--                                <ul class="mega-menu container"> -->
<!--                                     <li class="col-md-3 mega-menu__coloum"> -->
<!--                                         <h4 class="mega-menu__heading">Now in the cinema</h4> -->
<!--                                          <ul class="mega-menu__list"> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">The Counselor</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Bad Grandpa</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Blue Is the Warmest Color</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Capital</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Spinning Plates</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Bastards</a></li> -->
<!--                                           </ul> -->
<!--                                       </li> -->
                                        
<!--                                       <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading"> -->
<!--                                           <ul class="mega-menu__list"> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Gravity</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Captain Phillips</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Carrie</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Cloudy with a Chance of Meatballs 2</a></li> -->
<!--                                           </ul> -->
<!--                                       </li> -->
                                      
<!--                                       <li class="col-md-3 mega-menu__coloum"> -->
<!--                                         <h4 class="mega-menu__heading">Ending soon</h4> -->
<!--                                           <ul class="mega-menu__list"> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Escape Plan</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Rush</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Prisoners</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Enough Said</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">The Fifth Estate</a></li> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Runner Runner</a></li> -->
<!--                                           </ul> -->
<!--                                       </li> -->
                                    
<!--                                       <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading"> -->
<!--                                           <ul class="mega-menu__list"> -->
<!--                                             <li class="mega-menu__nav-item"><a href="#">Insidious: Chapter 2</a></li> -->
<!--                                           </ul> -->
<!--                                       </li> -->
<!--                                </ul> -->
                        </li>
                    </ul>
                </nav>
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
                    <div class="auth auth--home">
                      <div class="auth__show">
                        <span class="auth__image">
                          <img alt="" src="http://placehold.it/31x31">
                        </span>
                      </div>
                      <a href="#" class="btn btn--sign btn--singin">
                          me
                      </a>
                        <ul class="auth__function">
                            <li><a href="#" class="auth__function-item">Watchlist</a></li>
                            <li><a href="#" class="auth__function-item">Booked tickets</a></li>
                            <li><a href="#" class="auth__function-item">Discussion</a></li>
                            <li><a href="#" class="auth__function-item">Settings</a></li>
                        </ul>

                    </div>
                    <a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">Book a ticket</a>
                </div>

            </div>
        </header>

        <!-- Slider -->
            <div class="bannercontainer">
                    <div class="banner">
                        <ul>

                            <li data-transition="fade" data-slotamount="7" class="slide" data-slide='Rush.'>
                                <img alt='' src="http://placehold.it/1920x616">
                                <div class="caption slide__name margin-slider" 
                                     data-x="right" 
                                     data-y="80" 

                                     data-splitin="chars"
                                     data-elementdelay="0.1"

                                     data-speed="700" 
                                     data-start="1400" 
                                     data-easing="easeOutBack"

                                     data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"

                                    data-frames="{ typ :lines;
                                                 elementdelay :0.1;
                                                 start:1650;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 },
                                                 { typ :lines;
                                                 elementdelay :0.1;
                                                 start:2150;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:00;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 }
                                                 "


                                    data-splitout="lines"
                                    data-endelementdelay="0.1"
                                    data-customout="x:-230;y:0;z:0;rotationX:0;rotationY:0;rotationZ:90;scaleX:0.2;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%"

                                    data-endspeed="500"
                                    data-end="8400"
                                    data-endeasing="Back.easeIn"
                                     >
                                    RUSH
                                </div>

                                <div class="caption slide__time margin-slider sfr str" 
                                     data-x="right" 
                                     data-hoffset='-243' 
                                     data-y="186" 
                                     data-speed="300" 
                                     data-start="2100" 
                                     data-easing="easeOutBack"
                                     data-endspeed="300"
                                     data-end="8700"
                                     data-endeasing="Back.easeIn"
                                     >
                                     From
                                 </div>
                                <div class="caption slide__date margin-slider lfb ltb" 
                                     data-x="right" 
                                     data-hoffset='-149' 
                                     data-y="186" 
                                     data-speed="500" 
                                     data-start="2400" 
                                     data-easing="Power4.easeOut"
                                     data-endspeed="400"
                                     data-end="8200"
                                     data-endeasing="Back.easeIn"
                                     >
                                     October 18
                                 </div>
                                <div class="caption slide__time margin-slider sfr str" 
                                     data-x="right" 
                                     data-hoffset='-113' 
                                     data-y="186" 
                                     data-speed="300" 
                                     data-start="2100" 
                                     data-easing="easeOutBack"
                                     data-endspeed="300"
                                     data-end="8700"
                                     data-endeasing="Back.easeIn"
                                     >
                                     - till
                                 </div>
                                <div class="caption slide__date margin-slider lfb ltb" 
                                     data-x="right" 
                                     data-y="186" 
                                     data-speed="500" 
                                     data-start="2800" 
                                     data-easing="Power4.easeOut"
                                     data-endspeed="400"
                                     data-end="8200"
                                     data-endeasing="Back.easeIn"
                                     >
                                     November 01
                                 </div>
                                <div class="caption slide__text margin-slider customin customout" 
                                     data-x="right" 
                                     data-y="250"
                                     data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                                     data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                                     data-speed="400" 
                                     data-start="3000"
                                     data-endspeed="400"
                                     data-end="8000"
                                     data-endeasing="Back.easeIn">
                                     Two-time Academy Award winner Ron Howard, teams once again with fellow two-time Academy<br> Award nominee, writer Peter Morgan , on Rush, a spectacular big-screen re-creation of the merciless<br> 1970s rivalry between James Hunt and Niki Lauda.
                                 </div>
                                <div class="caption margin-slider skewfromright customout " 
                                     data-x="right" 
                                     data-y="324"
                                     data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                                     data-speed="400" 
                                     data-start="3300"
                                     data-easing="Power4.easeOut"
                                     data-endspeed="300"
                                     data-end="7700"
                                     data-endeasing="Power4.easeOut">
                                     <a href="#" class="slide__link">check out cinemas &amp; time</a>
                                 </div>
                            </li>

                            <li data-transition="fade" data-slotamount="7" class="slide fading-slide" data-slide='Travel worldwide.
Create trip film.'>
                                <img alt='' src="http://placehold.it/1920x616">
                                 <div class="caption slide__video" data-x="0" data-y="0" data-autoplay='true'>
                                   <video class="media-element"  autoplay="autoplay" preload='none' loop="loop" muted="" src="<%=ctx %>/resources/video/53170154.mp4" >
                                        <source type="video/webm" src="<%=ctx %>/resources/video/53170154.webm">
                                        <source type="video/mp4" src="<%=ctx %>/resources/video/53170154.mp4">
                                        <source type="video/ogg" src="<%=ctx %>/resources/video/53170154.ogv">
                                    </video>
                                </div>

                                 <div class="caption slide__name slide__name--smaller" 
                                     data-x="left" 
                                     data-y="160" 

                                     data-splitin="chars"
                                     data-elementdelay="0.1"

                                     data-speed="700" 
                                     data-start="1400" 
                                     data-easing="easeOutBack"

                                     data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"

                                    data-frames="{ typ :lines;
                                                 elementdelay :0.1;
                                                 start:1650;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 },
                                                 { typ :lines;
                                                 elementdelay :0.1;
                                                 start:2150;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:00;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 }
                                                 "


                                    data-splitout="lines"
                                    data-endelementdelay="0.1"
                                    data-customout="x:-230;y:0;z:0;rotationX:0;rotationY:0;rotationZ:90;scaleX:0.2;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%"
                                    data-endspeed="500"
                                   
                                    data-endeasing="Back.easeIn"
                                     >
                                    Travel, Admire, Remember.
                                </div>

                                <div class="caption slide__time position-center postion-place--one sfr stl" 
                                     data-x="left" 
                                      
                                     data-y="242" 
                                     data-speed="300" 
                                     data-start="2100" 
                                     data-easing="easeOutBack"
                                     data-endspeed="300"
                                     
                                     data-endeasing="Back.easeIn">
                                     From
                                 </div>
                                <div class="caption slide__date position-center postion-place--two lfb ltb" 
                                     data-x="left"                                       
                                     data-y="242" 
                                     data-speed="500" 
                                     data-start="2400" 
                                     data-easing="Power4.easeOut"
                                     data-endspeed="400"
                                     
                                     data-endeasing="Back.easeIn">
                                     April 18 
                                 </div>
                                <div class="caption slide__time position-center postion-place--three sfr stl" 
                                     data-x="left" 
                                     data-y="242" 
                                     data-speed="300" 
                                     data-start="2100" 
                                     data-easing="easeOutBack"
                                     data-endspeed="300"
                                     
                                     data-endeasing="Back.easeIn">
                                     - till
                                 </div>
                                <div class="caption slide__date position-center postion-place--four lfb ltb" 
                                     data-x="left"
                                     data-y="242" 
                                     data-speed="500" 
                                     data-start="2800" 
                                     data-easing="Power4.easeOut" 
                                     data-endspeed="400"
                                     
                                     data-endeasing="Back.easeIn">
                                     May 01
                                 </div>

                                 <div class="caption lfb slider-wrap-btn ltb" 
                                     data-x="left"
                                     data-y="310" 
                                     data-speed="400" 
                                     data-start="3300" 
                                     data-easing="Power4.easeOut"
                                     data-endspeed="500"
                                     
                                     data-endeasing="Power4.easeOut" >
                                     <a href="#" class="btn btn-md btn--danger btn--wide slider--btn">learn more</a>
                                 </div>
                            </li>

                            <li data-transition="fade" data-slotamount="7" class="slide" data-slide='Stop wishing. 
Start doing.'>
                                <img alt='' src="http://placehold.it/1920x616">
                                 <div class="caption slide__name slide__name--smaller slide__name--specific customin customout" 
                                     data-x="left" 
                                     data-y="160" 

                                     data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                                     data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"

                                     data-speed="700" 
                                     data-start="1400" 
                                     data-easing="easeOutBack"
                                     data-endspeed="500"
                                     data-end="8600"
                                     data-endeasing="Back.easeIn"

                                     >
                                    Stop <span class="highlight">wishing.</span> Start <span class="highlight">doing.</span> 
                                </div>

                                  <div class="caption slide__descript customin customout" 
                                     data-x="left" 
                                     data-y="240"
                                     data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                                     data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                                     data-speed="700" 
                                     data-start="2000"
                                     data-endspeed="500"
                                     data-end="8400"
                                     data-endeasing="Back.easeIn">
                                     find your best match movie with A.MOVIE
                                 </div>

                                 <div class="caption lfb customout slider-wrap-btn" 
                                     data-x="left" 
                                     data-y="310" 
                                     data-speed="500" 
                                     data-start="2800" 
                                     data-easing="Power4.easeOut"
                                     data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                                     data-endspeed="400"
                                     data-end="8000"
                                     data-endeasing="Power4.easeOut" >
                                     <a href="#" class="btn btn-md btn--danger slider--btn">check out movies</a>
                                 </div>
                            </li>

                        </ul>
                    </div>
                </div>

        <!--end slider -->
        
        
        <!-- Main content -->
        <section class="container">
            <div class="movie-best">
                 <div class="col-sm-10 col-sm-offset-1 movie-best__rating">Today Best choice</div>
                 <div class="col-sm-12 change--col">
                     <div class="movie-beta__item ">
                        <img alt='' src="http://placehold.it/380x600">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">169 min</p>
                                <p>Adventure | Drama | Fantasy </p>
                                <p>38 comments</p>
                             </li>
                             <li class="last-block">
                                 <a href="movie-page-left.html" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                     <div class="movie-beta__item second--item">
                         <img alt='' src="http://placehold.it/380x600">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">169 min</p>
                                <p>Adventure | Drama | Fantasy </p>
                                <p>38 comments</p>
                             </li>
                             <li class="last-block">
                                 <a href="movie-page-left.html" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                     <div class="movie-beta__item third--item">
                         <img alt='' src="http://placehold.it/380x600">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">169 min</p>
                                <p>Adventure | Drama | Fantasy </p>
                                <p>38 comments</p>
                             </li>
                             <li class="last-block">
                                 <a href="movie-page-left.html" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                     <div class="movie-beta__item hidden-xs">
                         <img alt='' src="http://placehold.it/380x600">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">169 min</p>
                                <p>Adventure | Drama | Fantasy </p>
                                <p>38 comments</p>
                             </li>
                             <li class="last-block">
                                 <a href="movie-page-left.html" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                     <div class="movie-beta__item hidden-xs hidden-sm">
                         <img alt='' src="http://placehold.it/380x600">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">169 min</p>
                                <p>Adventure | Drama | Fantasy </p>
                                <p>38 comments</p>
                             </li>
                             <li class="last-block">
                                 <a href="movie-page-left.html" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                     <div class="movie-beta__item hidden-xs hidden-sm">
                         <img alt='' src="http://placehold.it/380x600">
                         <span class="best-rate">5.0</span>

                         <ul class="movie-beta__info">
                             <li><span class="best-voted">71 people voted today</span></li>
                             <li>
                                <p class="movie__time">169 min</p>
                                <p>Adventure | Drama | Fantasy </p>
                                <p>38 comments</p>
                             </li>
                             <li class="last-block">
                                 <a href="movie-page-left.html" class="slide__link">more</a>
                             </li>
                         </ul>
                     </div>
                 </div>
                <div class="col-sm-10 col-sm-offset-1 movie-best__check">check all movies now playing</div>
            </div>

            <div class="col-sm-12">
                <div class="mega-select-present mega-select-top mega-select--full">
                    <div class="mega-select-marker">
                        <div class="marker-indecator location">
                            <p class="select-marker"><span>movie to watch now</span> <br>in your city</p>
                        </div>

                        <div class="marker-indecator cinema">
                            <p class="select-marker"><span>find your </span> <br>cinema</p>
                        </div>

                        <div class="marker-indecator film-category">
                            <p class="select-marker"><span>find movie due to </span> <br> your mood</p>
                        </div>

                        <div class="marker-indecator actors">
                            <p class="select-marker"><span> like particular stars</span> <br>find them</p>
                        </div>

                        <div class="marker-indecator director">
                            <p class="select-marker"><span>admire personalities - find </span> <br>by director</p>
                        </div>

                        <div class="marker-indecator country">
                            <p class="select-marker"><span>search for movie from certain </span> <br>country?</p>
                        </div>
                    </div>

                      <div class="mega-select pull-right">
                          <span class="mega-select__point">Search by</span>
                          <ul class="mega-select__sort">
                              <li class="filter-wrap"><a href="#" class="mega-select__filter filter--active" data-filter='location'>Location</a></li>
                              <li class="filter-wrap"><a href="#" class="mega-select__filter" data-filter='cinema'>Cinema</a></li>
                              <li class="filter-wrap"><a href="#" class="mega-select__filter" data-filter='film-category'>Category</a></li>
                              <li class="filter-wrap"><a href="#" class="mega-select__filter" data-filter='actors'>Actors</a></li>
                              <li class="filter-wrap"><a href="#" class="mega-select__filter" data-filter='director'>Director</a></li>
                              <li class="filter-wrap"><a href="#" class="mega-select__filter" data-filter='country'>Country</a></li>
                          </ul>

                          <input name="search-input" type='text' class="select__field">
                          
                          <div class="select__btn">
                            <a href="#" class="btn btn-md btn--danger location">find <span class="hidden-exrtasm">your city</span></a>
                            <a href="#" class="btn btn-md btn--danger cinema">find <span class="hidden-exrtasm">suitable cimema</span></a>
                            <a href="#" class="btn btn-md btn--danger film-category">find <span class="hidden-exrtasm">best category</span></a>
                            <a href="#" class="btn btn-md btn--danger actors">find <span class="hidden-exrtasm">talented actors</span></a>
                            <a href="#" class="btn btn-md btn--danger director">find <span class="hidden-exrtasm">favorite director</span></a>
                            <a href="#" class="btn btn-md btn--danger country">find <span class="hidden-exrtasm">produced country</span></a>
                          </div>

                          <div class="select__dropdowns">
                              <ul class="select__group location">
                                <li class="select__variant" data-value='London'>London</li>
                                <li class="select__variant" data-value='New York'>New York</li>
                                <li class="select__variant" data-value='Paris'>Paris</li>
                                <li class="select__variant" data-value='Berlin'>Berlin</li>
                                <li class="select__variant" data-value='Moscow'>Moscow</li>
                                <li class="select__variant" data-value='Minsk'>Minsk</li>
                                <li class="select__variant" data-value='Warsawa'>Warsawa</li>
                              </ul>

                              <ul class="select__group cinema">
                                <li class="select__variant" data-value='Cineworld'>Cineworld</li>
                                <li class="select__variant" data-value='Empire'>Empire</li>
                                <li class="select__variant" data-value='Everyman'>Everyman</li>
                                <li class="select__variant" data-value='Odeon'>Odeon</li>
                                <li class="select__variant" data-value='Picturehouse'>Picturehouse</li>
                              </ul>

                              <ul class="select__group film-category">
                                <li class="select__variant" data-value="Children's">Children's</li>
                                <li class="select__variant" data-value='Comedy'>Comedy</li>
                                <li class="select__variant" data-value='Drama'>Drama</li>
                                <li class="select__variant" data-value='Fantasy'>Fantasy</li>
                                <li class="select__variant" data-value='Horror'>Horror</li>
                                <li class="select__variant" data-value='Thriller'>Thriller</li>
                              </ul>

                              <ul class="select__group actors">
                                <li class="select__variant" data-value='Leonardo DiCaprio'>Leonardo DiCaprio</li>
                                <li class="select__variant" data-value='Johnny Depp'>Johnny Depp</li>
                                <li class="select__variant" data-value='Jack Nicholson'>Jack Nicholson</li>
                                <li class="select__variant" data-value='Robert De Niro'>Robert De Niro</li>
                                <li class="select__variant" data-value='Morgan Freeman'>Morgan Freeman</li>
                                <li class="select__variant" data-value='Jim Carrey'>Jim Carrey</li>
                                <li class="select__variant" data-value='Adam Sandler'>Adam Sandler</li>
                                <li class="select__variant" data-value='Ben Stiller'>Ben Stiller</li>
                              </ul>

                              <ul class="select__group director">
                                <li class="select__variant" data-value='Steven Spielberg'>Steven Spielberg</li>
                                <li class="select__variant" data-value='Martin Scorsese'>Martin Scorsese</li>
                                <li class="select__variant" data-value='Guy Ritchie'>Guy Ritchie</li>
                                <li class="select__variant" data-value='Christopher Nolan'>Christopher Nolan</li>
                                <li class="select__variant" data-value='Tim Burton'>Tim Burton</li>
                              </ul>

                              <ul class="select__group country">
                                <li class="select__variant" data-value='USA'>USA</li>
                                <li class="select__variant" data-value='Germany'>Germany</li>
                                <li class="select__variant" data-value='Australia'>Australia</li>
                                <li class="select__variant" data-value='UK'>UK</li>
                                <li class="select__variant" data-value='Japan'>Japan</li>
                                <li class="select__variant" data-value='Serbia'>Serbia</li>
                              </ul>
                          </div>
                      </div>
                  </div>
            </div>
            
            <div class="clearfix"></div>

            <h2 id='target' class="page-heading heading--outcontainer">Now in the cinema</h2>

            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-8 col-md-9">
                        <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--dark movie--test--left">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                        <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">Gravity (2013)  </a>

                                    <p class="movie__time">91 min</p>

                                    <p class="movie__option"><a href="#">Sci-Fi</a> | <a href="#">Thriller</a> | <a href="#">Drama</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">4.1</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--light movie--test--left">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">The Hobbit: The Desolation of Smaug (2013)  </a>

                                    <p class="movie__time">169 min</p>

                                    <p class="movie__option"><a href="#">Adventure</a> | <a href="#">Fantasy</a> | <a href="#">Drama</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">5.0</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--light movie--test--right">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">The Hunger Games: Catching Fire (2013)   </a>

                                    <p class="movie__time">146 min</p>

                                    <p class="movie__option"><a href="#">Action</a> | <a href="#">Adventure</a> | <a href="#">Sci-Fi</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">4.9</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--dark movie--test--right">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">Thor: The Dark World (2013) </a>

                                    <p class="movie__time">112 min</p>

                                    <p class="movie__option"><a href="#">Action</a> | <a href="#">Adventure</a> | <a href="#">Fantasy</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">5.0</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--dark movie--test--left">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">World War Z (2013)  </a>

                                    <p class="movie__time">116 min</p>

                                    <p class="movie__option"><a href="#">Action</a> | <a href="#">Adventure</a> | <a href="#">Horror</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">4.1</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--light movie--test--left">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">Prisoners (2013) </a>

                                    <p class="movie__time">153 min</p>

                                    <p class="movie__option"><a href="#">Crime</a> | <a href="#">Thriller</a> | <a href="#">Drama</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">5.0</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--light movie--test--right">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">This Is the End (2013)   </a>

                                    <p class="movie__time">107 min</p>

                                    <p class="movie__option"><a href="#">Comedy</a> | <a href="#">Fantasy</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">4.9</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->

                         <!-- Movie variant with time -->
                            <div class="movie movie--test movie--test--dark movie--test--right">
                                <div class="movie__images">
                                    <a href="movie-page-left.html" class="movie-beta__link">
                                    <img alt='' src="http://placehold.it/424x424">
                                    </a>
                                </div>

                                <div class="movie__info">
                                    <a href='movie-page-left.html' class="movie__title">The Internship (2013)  </a>

                                    <p class="movie__time">112 min</p>

                                    <p class="movie__option"><a href="#">Comedy</a></p>
                                    
                                    <div class="movie__rate">
                                        <div class="score"></div>
                                        <span class="movie__rating">5.0</span>
                                    </div>               
                                </div>
                            </div>
                         <!-- Movie variant with time -->


                        <div class="row">
                            <div class="social-group">
                                     <div class="social-group__head">Join <br>our social groups</div>
                                    <div class="social-group__content">A lot of fun, discussions, queezes and contests among members. <br class="hidden-xs"><br>Always be first to know about best offers from cinemas and our partners</div>
                            
<!--                               <div class="col-sm-6 col-md-4 col-sm-push-6 col-md-push-4"> -->
<!--                                 </div> -->

<!--                                 <div class="col-sm-6 col-md-4 col-sm-pull-6 col-md-pull-4"> -->
<!--                                      <div class="facebook-group"> -->

<!--                                         <iframe class="fgroup" src="https://www.facebook.com/bigledb/?fref=ts" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:240px; height:330px;" allowTransparency="true"></iframe> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                
                                <div class="clearfix visible-sm"></div>
<!--                                 <div class="col-sm-6 col-md-4"> -->
<!--                                     <div class="twitter-group"> -->
<!--                                         <div id="twitter-feed"></div> -->
<!--                                     </div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                    </div>

                    <aside class="col-sm-4 col-md-3">
                        <div class="sitebar first-banner--left">
                            <div class="banner-wrap first-banner--left">
                                <img alt='banner' src="http://placehold.it/500x500">
                            </div>

                             <div class="banner-wrap">
                                <img alt='banner' src="http://placehold.it/500x500">
                            </div>

                             <div class="banner-wrap banner-wrap--last">
                                <img alt='banner' src="http://placehold.it/500x500">
                            </div>

                            <div class="promo marginb-sm">
                              <div class="promo__head">A.Movie app</div>
                              <div class="promo__describe">for all smartphones<br> and tablets</div>
                              <div class="promo__content">
                                  <ul>
                                      <li class="store-variant"><a href="#"><img alt='' src="images/apple-store.svg"></a></li>
                                      <li class="store-variant"><a href="#"><img alt='' src="images/google-play.svg"></a></li>
                                      <li class="store-variant"><a href="#"><img alt='' src="images/windows-store.svg"></a></li>
                                  </ul>
                              </div>
                          </div>
    
                        </div>
                    </aside>
                </div>
            </div>

<!--             <div class="col-sm-12"> -->
<!--                 <h2 class="page-heading">Latest news</h2> -->

<!--                 <div class="col-sm-4 similar-wrap col--remove"> -->
<!--                     <div class="post post--preview post--preview--wide"> -->
<!--                         <div class="post__image"> -->
<!--                             <img alt='' src="http://placehold.it/270x330"> -->
<!--                             <div class="social social--position social--hide"> -->
<!--                                 <span class="social__name">Share:</span> -->
<!--                                 <a href='#' class="social__variant social--first fa fa-facebook"></a> -->
<!--                                 <a href='#' class="social__variant social--second fa fa-twitter"></a> -->
<!--                                 <a href='#' class="social__variant social--third fa fa-vk"></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <p class="post__date">22 October 2013 </p> -->
<!--                         <a href="single-page-left.html" class="post__title">"Thor: The Dark World" - World Premiere</a> -->
<!--                         <a href="single-page-left.html" class="btn read-more post--btn">read more</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-sm-4 similar-wrap col--remove"> -->
<!--                     <div class="post post--preview post--preview--wide"> -->
<!--                         <div class="post__image"> -->
<!--                             <img alt='' src="http://placehold.it/270x330"> -->
<!--                             <div class="social social--position social--hide"> -->
<!--                                 <span class="social__name">Share:</span> -->
<!--                                 <a href='#' class="social__variant social--first fa fa-facebook"></a> -->
<!--                                 <a href='#' class="social__variant social--second fa fa-twitter"></a> -->
<!--                                 <a href='#' class="social__variant social--third fa fa-vk"></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <p class="post__date">22 October 2013 </p> -->
<!--                         <a href="single-page-left.html" class="post__title">30th Annual Night Of Stars Presented By The Fashion Group International</a> -->
<!--                         <a href="single-page-left.html" class="btn read-more post--btn">read more</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="col-sm-4 similar-wrap col--remove"> -->
<!--                     <div class="post post--preview post--preview--wide"> -->
<!--                         <div class="post__image"> -->
<!--                             <img alt='' src="http://placehold.it/270x330"> -->
<!--                             <div class="social social--position social--hide"> -->
<!--                                 <span class="social__name">Share:</span> -->
<!--                                 <a href='#' class="social__variant social--first fa fa-facebook"></a> -->
<!--                                 <a href='#' class="social__variant social--second fa fa-twitter"></a> -->
<!--                                 <a href='#' class="social__variant social--third fa fa-vk"></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <p class="post__date">22 October 2013 </p> -->
<!--                         <a href="single-page-left.html" class="post__title">Hollywood Film Awards 2013</a> -->
<!--                         <a href="single-page-left.html" class="btn read-more post--btn">read more</a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
                
        </section>
        
        <div class="clearfix"></div>

        <footer class="footer-wrapper">
            <section class="container">
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Cities</a></li>
                        <li><a href="movie-list-left.html" class="nav-link__item">Movies</a></li>
                        <li><a href="trailer.html" class="nav-link__item">Trailers</a></li>
                        <li><a href="rates-left.html" class="nav-link__item">Rates</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="coming-soon.html" class="nav-link__item">Coming soon</a></li>
                        <li><a href="cinema-list.html" class="nav-link__item">Cinemas</a></li>
                        <li><a href="offers.html" class="nav-link__item">Best offers</a></li>
                        <li><a href="news-left.html" class="nav-link__item">News</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-md-2 footer-nav">
                    <ul class="nav-link">
                        <li><a href="#" class="nav-link__item">Terms of use</a></li>
                        <li><a href="gallery-four.html" class="nav-link__item">Gallery</a></li>
                        <li><a href="contact.html" class="nav-link__item">Contacts</a></li>
                        <li><a href="page-elements.html" class="nav-link__item">Shortcodes</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="footer-info">
                        <p class="heading-special--small">A.Movie<br><span class="title-edition">in the social media</span></p>

                        <div class="social">
                            <a href='#' class="social__variant fa fa-facebook"></a>
                            <a href='#' class="social__variant fa fa-twitter"></a>
                            <a href='#' class="social__variant fa fa-vk"></a>
                            <a href='#' class="social__variant fa fa-instagram"></a>
                            <a href='#' class="social__variant fa fa-tumblr"></a>
                            <a href='#' class="social__variant fa fa-pinterest"></a>
                        </div>
                        
                        <div class="clearfix"></div>
                        <p class="copy">&copy; A.Movie, 2013. All rights reserved. Done by Olia Gozha</p>
                    </div>
                </div>
            </section>
        </footer>
    </div>

    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
                        <input type='email' placeholder='Email' name='user-email' class="login__input">
                        <input type='password' placeholder='Password' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>remember me</label>
                         </div>
                        
                        <div class="login__control">
                            <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
                        </div>
                    </form>
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- jQuery REVOLUTION Slider -->
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Stars rate -->
        <script src="js/external/jquery.raty.js"></script>
        
        <!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Twitter feed -->
        <script src="js/external/twitterfeed.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
		
	      <script type="text/javascript">
              $(document).ready(function() {
                init_Home();
              });
		    </script>

</body>
</html>

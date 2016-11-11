<%@page import="kr.co.cgs4.dao.FilmDAO"%>
<%@page import="kr.co.cgs4.dto.FilmDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String ctx = request.getContextPath(); %>
<%!
	int pagenum2;  
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - Movie list</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
        
    <!-- icon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<%=ctx%>/resources/css/img/favicon.png" />
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="<%=ctx %>/resources/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="<%=ctx %>/resources/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="<%=ctx %>/resources/css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="<%=ctx %>/resources/js/external/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
    <script type="text/javascript">
	function prevChk(pagenum) {
// 		if(pagenum!=0){
// 			--pagenum;
// 		} else{
// 			pagenum = 0;
// 		}
		location.href = "movie_list?page="+pagenum;
		return pagenum;
// 		out.print(pagenum);
	}
	
	function nextChk(pagenum){
// 		pagenum++;
		location.href = "movie_list?page="+pagenum;
		return pagenum;
// 		out.print(pagenum);
	}
	</script>
	<style>
.page_right{
 float:right;
}


	</style>
</head>
<body>
    <div class="wrapper">
<!--         Banner -->
<!--         <div class="banner-top"> -->
<!--             <img alt='top banner' src="http://placehold.it/1600x90"> -->
<!--         </div> -->

        <!-- Header section -->
        <jsp:include page="menu.jsp" flush="false"/>
        
        <!-- Search bar -->
<!--         <div class="search-wrapper"> -->
<!--             <div class="container container--add"> -->
<!--                 <form id='search-form' method='get' class="search"> -->
<!--                     <input type="text" class="search__field" placeholder="Search"> -->
<!--                     <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0"> -->
<!--                         <option value="1" selected='selected'>By title</option> -->
<!--                         <option value="2">By year</option> -->
<!--                         <option value="3">By producer</option> -->
<!--                         <option value="4">By title</option> -->
<!--                         <option value="5">By year</option> -->
<!--                     </select> -->
<!--                     <button type='submit' class="btn btn-md btn--danger search__button">search a movie</button> -->
<!--                 </form> -->
<!--             </div> -->
<!--         </div> -->
        
        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading"><strong>Movie Chart</strong></h2>

                <div class="tags-area tags-area--thin">
                <br>
                <br>
<!--                     <form id='select' class="select" method='get'> -->
<!--                           <select name="select_item" id="select-sort" class="select__sort" tabindex="0"> -->
<!--                             <option value="1" selected='selected'>London</option> -->
<!--                             <option value="2">New York</option> -->
<!--                             <option value="3">Paris</option> -->
<!--                             <option value="4">Berlin</option> -->
<!--                             <option value="5">Moscow</option> -->
<!--                             <option value="3">Minsk</option> -->
<!--                             <option value="4">Warsawa</option> -->
<!--                             <option value="5">Kiev</option> -->
<!--                         </select> -->
<!--                     </form> -->

                </div>
			<form action="movie" method="post">
					<div class="cinema-wrap">
				<div class="row">
						<c:forEach var="dto" items="${film_list}" begin="0" end="11">
							<input type="hidden" name="film_ID" value="${dto.film_ID}">
							<div class="col-xs-6 col-sm-3 cinema-item">
								<div class="cinema">
									<a href="movie?film_ID=${dto.film_ID}" class="cinema__images">
										<img alt=''
										src="<%=ctx %>/resources/images/poster/${dto.film_ID}.jpg">
										<!--  	<span class="cinema-rating">5.0</span> -->
									</a> <a href="movie?film_ID=${dto.film_ID}" class="cinema-title">${dto.film_name}</a>
								</div>
							</div>
						</c:forEach>
					</div>

				</div>
			</form>



			<%--                     <form action="movie_list?page=<%=pagenum %>" method="get"> --%>
<%--                     <input type='hidden' name="page" value=<%=pagenum %>>  --%>
                    <%if(request.getAttribute("pagenum")!=null){
                    	pagenum2=Integer.parseInt(request.getAttribute("pagenum").toString());  }%>
                    	<%if(Integer.parseInt(request.getAttribute("pagenum").toString()) > 0){ %>
                    <div class="pagination paginatioon--full">
                    <a href="javascript:prevChk(<%=pagenum2-1 %>)" class="pagination__prev" >prev</a>
                    </div>
                    <%} %>
                    <%if(Integer.parseInt(request.getAttribute("size").toString()) > 12){ %>
					<div class="pagination paginatioon--full page_right">
                    <a href="javascript:nextChk(<%=pagenum2+1 %>)" class="pagination__next" >next</a>
                    </div>
                    <% } %>
          
            </div>
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
                        <p class="heading-special--small">CGS<br><span class="title-edition">in the social media</span></p>

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
        <script src="<%=ctx %>/resources/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="<%=ctx %>/resources/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="<%=ctx %>/resources/js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Form element -->
        <script src="<%=ctx %>/resources/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="<%=ctx %>/resources/js/form.js"></script>

        <!-- Custom -->
        <script src="<%=ctx %>/resources/js/custom.js"></script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                init_CinemaList();
            });
		</script>

</body>
</html>
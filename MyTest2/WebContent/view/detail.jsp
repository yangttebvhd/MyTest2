<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.dto.*" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Minimal |e-commerce template</title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700|Merriweather:400,400italic' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link href="${pageContext.request.contextPath}/minimal/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/minimal/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme stylesheet -->
    <link href="${pageContext.request.contextPath}/minimal/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="${pageContext.request.contextPath}/minimal/css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <script src="${pageContext.request.contextPath}/minimal/js/respond.min.js"></script>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.png">
    <!-- owl carousel css -->
    <link href="${pageContext.request.contextPath}/minimal/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/minimal/css/owl.theme.css" rel="stylesheet">

</head>

<body>
    <!-- *** NAVBAR ***_________________________________________________________ -->
    <div class="navbar navbar-default navbar-fixed-top yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.html">
                    <img src="${pageContext.request.contextPath}/minimal/img/logo.png" alt="Minimal logo" class="hidden-xs hidden-sm">
                    <img src="${pageContext.request.contextPath}/minimal/img/logo-small.png" alt="Minimal logo" class="visible-xs visible-sm"><span class="sr-only">Minimal - go to homepage</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle btn-primary" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <a class="btn btn-primary navbar-toggle" href="basket.html">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                    </a>
                    <button type="button" class="navbar-toggle btn-default" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <button type="button" class="navbar-toggle btn-default" data-toggle="modal" data-target="#login-modal">
                        <span class="sr-only">User login</span>
                        <i class="fa fa-users"></i>
                    </button>

                </div>
            </div>
            <!--/.navbar-header -->

            <!--/.nav-collapse -->

            <div class="navbar-collapse collapse right" id="basket-overview">
                <a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">3 items <span class="hidden-md">in cart</span></span></a>
            </div>
            <!--/.nav-collapse -->

            <div class="navbar-collapse collapse right">
                <button type="button" class="btn navbar-btn btn-default" data-toggle="collapse" data-target="#search">
                    <span class="sr-only">Toggle search</span>
                    <i class="fa fa-search"></i>
                </button>
            </div>

            <div class="navbar-collapse collapse right">
                <button type="button" class="btn navbar-btn btn-default" data-toggle="modal" data-target="#login-modal">
                    <span class="sr-only">User login</span>
                    <i class="fa fa-users"></i>
                </button>
            </div>

            <div class="collapse clearfix" id="search">

                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">

			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

		    </span>
                    </div>
                </form>

            </div>
            <!--/.nav-collapse -->

        </div>


    </div>
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->

    <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
        <div class="modal-dialog modal-sm">

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="Login">Customer login</h4>
                </div>
                <div class="modal-body">
                    <form action="customer-orders.html" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" id="email" placeholder="email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" placeholder="password">
                        </div>

                        <p class="text-center">
                            <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                        </p>

                    </form>

                    <p class="text-center text-muted">Not registered yet?</p>
                    <p class="text-center text-muted"><a href="register.html"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                </div>
            </div>
        </div>
    </div>

    <!-- *** LOGIN MODAL END *** -->

    <div id="all">

        <div id="content">
            <div class="container">

<!--
                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Ladies</a>
                        </li>
                        <li><a href="#">Tops</a>
                        </li>
                        <li>White Blouse Armani</li>
                    </ul>
                    <div class="box text-center">

                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <h1>COLOR</h1>
                                <p class="text-muted">
색은 어느 곳에나 존재합니다.<br>그리고 사람들은 자신의 기분을 표현하거나 분위기를 전환하기 위해 각기 다른 색을 사용하지요.<br> 나에게 하는 선물은 어떤 감정과 색을 띄고 있을까요?<br>BLOOMING에서 나를 위한 컬러를 골라보세요.</p>
                                
                            </div>
                        </div>
                    </div>


                </div>
-->

                <!-- *** LEFT COLUMN ***
		    _________________________________________________________ -->

<%
	DetailCommand prd=(DetailCommand)request.getAttribute("prd"); //${list}
    System.out.println("detail.jsp의 prd=>"+prd);
    
    		String prd_id=prd.getPrd_id();
    		System.out.println("detail.jsp의 prd_id=>"+prd_id);
    		String prd_name=prd.getPrd_name();
    		String prd_img=prd.getPrd_img();
    		String prd_intrdc=prd.getPrd_intrdc();
    		int prd_price=prd.getPrd_price();
%>

                <div class="col-md-12">

                    <div class="row" id="productMain">
                        <div class="col-sm-6">
                            <div id="mainImage">
                                <img src="${pageContext.request.contextPath}<%=prd_img%>" alt="" class="img-responsive">
                            </div>

                            <!--<div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>-->
                            <!-- /.ribbon -->

                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                        </div>
                        <div class="col-sm-6">
                            <div class="box">

                                <form name="frm" method="post" action="cart.do">
                                    <div class="sizes">

                                        <h3><%=prd_name %></h3>
                                        <p><%=prd_intrdc %></p>

                                    </div>
                                    <div class="col-md-6 col-sm-6">
										<div class="products-sort-by">
											<strong>구독주기</strong> <select required name="cart_cycle" class="form-control">
												<option value="2">2주</option>
												<option value="4">4주</option>
												<option value="6">6주</option>
											</select>
										</div>
									</div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="products-sort-by">
                                            <strong>배송시작일</strong>
                                            <input required type="date" name="cart_takedate">
                                        </div>
                                    </div>
                                    	<input type="hidden" name="mem_id" value="test1">
										<input type="hidden" name="prd_id" value=<%=prd_id %>>
                                    <p class="price"><%=prd_price %>₩</p>

                                    <p class="text-center">
                                        <button type="submit" formaction="pay.do" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="최초 2주 무료 구독"> 구매하기</button>
                                        <button type="submit" formaction="cart.do" class="btn btn-default"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                        
                                        <!--<button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="최초 2주 무료 구독"><i class="fa fa-heart-o"></i>
                                        </button>-->
                                    </p>

                                </form>
                            </div>

                            <div class="row" id="thumbs">
                                <div class="col-xs-4">
                                    <a href="img/detailbig1.jpg" class="thumb">
                                        <img src="${pageContext.request.contextPath}/minimal/img/detailsquare.jpg" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="img/detailbig2.jpg" class="thumb">
                                        <img src="${pageContext.request.contextPath}/minimal/img/detailsquare2.jpg" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="img/detailbig3.jpg" class="thumb">
                                        <img src="${pageContext.request.contextPath}/minimal/img/detailsquare3.jpg" alt="" class="img-responsive">
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="box" id="details">
                        <p>
                            <h4>Product details</h4>
                            <p>White lace top, woven, has a round neck, short sleeves, has knitted lining attached</p>
                            <h4>Material & care</h4>
                            <ul>
                                <li>Polyester</li>
                                <li>Machine wash</li>
                            </ul>
                            <h4>Size & Fit</h4>
                            <ul>
                                <li>Regular fit</li>
                                <li>The model (height 5'8" and chest 33") is wearing a size S</li>
                            </ul>

                            <blockquote>
                                <p><em>Define style this season with Armani's new range of trendy tops, crafted with intricate details. Create a chic statement look by teaming this lace number with skinny jeans and pumps.</em>
                                </p>
                            </blockquote>
                    </div>

                    
                    
                    
                    
                    
                    
                    <!--후기 글-->
                    <div class="box social" id="product-social">
                    <form method="post" action="checkout1.html">

                            <div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th align="center">글번호</th>
											<th>제목</th>
											<th>작성자 </th>
											<th>작성일</th>
										</tr>
									</thead>
									<tbody>
										<%
										List list = (List)request.getAttribute("PrdBoardList");
										System.out.println("detail.jsp의 list" + list);
										if (list != null) { //데이터가 존재한다면
											Iterator iter = list.iterator();//ArrayList->iterator()이용,Enumeration객체
											while (iter.hasNext()) {//꺼낼 데이터가 존재한다면
												//Board data=(Board)iter.next();//Object->(Board)형으로 형변환
												BoardCommand data = (BoardCommand)iter.next();
												int num = data.getAft_num();
												String title = data.getAft_title();
												String author = data.getMem_id(); //작성자
												String content = data.getAft_content();//글 내용
												String writeday = data.getAft_date();
										%>
										<tr>
											<td text-align="center">
												<!-- 글번호  --> <%=num%>
											</td>
											<td>
												<!-- 글제목 --> <a href="#"><%=title%></a>
											</td>
											<td>
												<!-- 글작성자 --> <%=author%>
											</td>
											<td>
												<!-- 글작성일 --> <%=writeday.substring(0, 10)%>
											</td>
											<!-- <td><a href="#"><i class="fa fa-trash-o"></i></a></td> -->
										</tr>
										<%
											} //end while
										} //end if
										%>
									</tbody>
									<!-- <tfoot>
                                        <tr>
                                            <th colspan="5">Total</th>
                                            <th colspan="2">$446.00</th>
                                        </tr>
                                    </tfoot> -->
								</table>
							</div>
						</form>
                    </div>
                    
                    
                    
                    
                    
                    

                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product">
                                <div class="image">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/minimal/img/product7.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product">
                                <div class="image">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/minimal/img/product8.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product">
                                <div class="image">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/minimal/img/product9.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>
                    </div>
                </div>
                <!-- /.col-md-9 -->
                <!-- *** LEFT COLUMN END *** -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
_________________________________________________________ -->

        <div id="footer">
            <div class="container">
                <div class="col-md-3 col-sm-6">
                    <h4>Pages</h4>

                    <ul>
                        <li><a href="text.html">About us</a>
                        </li>
                        <li><a href="text-left.html">Terms and conditions</a>
                        </li>
                        <li><a href="faq.html">FAQ</a>
                        </li>
                        <li><a href="contact.html">Contact us</a>
                        </li>
                    </ul>

                    <hr>

                    <h4>User section</h4>

                    <ul>
                        <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                        </li>
                        <li><a href="register.html">Regiter</a>
                        </li>
                    </ul>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>Top categories</h4>

                    <h5>Men</h5>

                    <ul>
                        <li><a href="category.html">T-shirts</a>
                        </li>
                        <li><a href="category.html">Shirts</a>
                        </li>
                        <li><a href="category.html">Accessories</a>
                        </li>
                    </ul>

                    <h5>Ladies</h5>
                    <ul>
                        <li><a href="category.html">T-shirts</a>
                        </li>
                        <li><a href="category.html">Skirts</a>
                        </li>
                        <li><a href="category.html">Pants</a>
                        </li>
                        <li><a href="category.html">Accessories</a>
                        </li>
                    </ul>

                    <hr class="hidden-md hidden-lg">

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>Where to find us</h4>

                    <p><strong>Obaju Ltd.</strong>
                        <br>13/25 New Avenue
                        <br>New Heaven
                        <br>45Y 73J
                        <br>England
                        <br>
                        <strong>Great Britain</strong>
                    </p>

                    <a href="contact.html">Go to contact page</a>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->



                <div class="col-md-3 col-sm-6">

                    <h4>Get the news</h4>

                    <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>

                    <form>
                        <div class="input-group">

                            <input type="text" class="form-control">

                            <span class="input-group-btn">

			<button class="btn btn-default" type="button">Subscribe!</button>

		    </span>

                        </div>
                        <!-- /input-group -->
                    </form>

                    <hr>

                    <h4>Stay in touch</h4>

                    <p class="social">
                        <a href="#"><i class="fa fa-facebook-square"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-envelope"></i></a>
                    </p>


                </div>
                <!-- /.col-md-3 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->

        <!-- *** COPYRIGHT ***
_________________________________________________________ -->

        <div id="copyright">
            <div class="container">
                <div class="col-md-12">
                    <p class="pull-left">&copy; 2014. Minimal is responsive template by <a href="http://www.ondrejsvestka.cz" class="external">Ondrej Svestka</a>.</p>
                    <p class="pull-right">
                        <img src="img/payment.png" alt="payments accepted">
                    </p>

                </div>
            </div>
        </div>
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->

    <!-- #### JAVASCRIPT FILES ### -->

    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/front.js"></script>





</body></html>

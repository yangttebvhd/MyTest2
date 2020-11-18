<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,lee.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <link href="${pageContext.request.contextPath}/minimal/css/font-awesome.css"  rel="stylesheet">
    <link href="${pageContext.request.contextPath}/minimal/css/bootstrap.min.css"  rel="stylesheet">
    <!-- Theme stylesheet -->
    <link href="${pageContext.request.contextPath}/minimal/css/style.default.css"  rel="stylesheet" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes -->
    <link href="${pageContext.request.contextPath}/minimal/css/custom.css"  rel="stylesheet">
    <!-- Responsivity for older IE -->
    <script  src="${pageContext.request.contextPath}/minimal/js/respond.min.js"></script>
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.png">
    <!-- owl carousel css -->
    <link href="${pageContext.request.contextPath}/minimal/css/owl.carousel.css"  rel="stylesheet">
    <link href="${pageContext.request.contextPath}/minimal/css/owl.theme.css"  rel="stylesheet">

</head>
<body>
	<table class="tg" border="1">
		<tr>
			<td align="center" colspan="5">*** 장바구니 목록 ***</td>
		</tr>
		<c:if test="${count==0}">
			<tr>
				<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>
		<c:forEach var="article" items="${list}">
			<tr>
				<th class="tg-8n49" rowspan="2">${article.cart_num}</th>
				<th height="0" class="tg-z4i2" rowspan="2"><div style="height:50px"><img src=${article.detailCommand.prd_img} height = "100%"></div></th>
				<th class="tg-z4i2" colspan="3">${article.detailCommand.prd_name}</th>
			</tr>
			<tr>
				<td class="tg-z4i2">최초수령일 : ${fn:substring(article.cart_takedate,0,10)}</td>
				<td class="tg-z4i2">배송 주기 : ${article.cart_cycle}</td>
				<td class="tg-z4i2"><a href="cartCancle.do?cart_num=${article.cart_num}">장바구니에서 삭제</a></td>
			</tr>
						
		</c:forEach>
	</table>
	<a href="pay.do">결제하기</a>
	
	
	
	
	    <!-- *** NAVBAR ***
_________________________________________________________ -->

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

                <div class="col-md-12">
                    <ul class="breadcrumb">

                        <li><a href="index.html">Home</a>
                        </li>
                        <li>Shopping cart</li>
                    </ul>


                    <div class="box text-center">

                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <h1>Shopping cart</h1>
                                <p class="text-muted">You currently have 3 item(s) in your cart.</p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-md-12 clearfix" id="basket">

                    <div class="box">

                        <form method="post" action="checkout1.html">

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th align="center">장바구니 번호</th>
                                            <th colspan="2">제품명</th>
                                            <th>가격</th>
                                            <th>배송 주기</th>
                                            <th>최초 수령일</th>
                                            <th colspan="2">결제 가격</th>
                                        </tr>
                                    </thead>                                
                                    
                                    
                                    <tbody>
										<c:if test="${count==0}">
											<tr>
												<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
											</tr>
										</c:if>
										<c:forEach var="article" items="${list}">
                                        <tr>
                                        	<!-- 장바구니 번호 --><td>${article.cart_num}</td> 
                                        	<!-- 제품명 --><td><a href="#">${article.detailCommand.prd_name}</a></td>
                                            <!-- 사진 --><td>
                                                <a href="#">
                                                    <img src="${pageContext.request.contextPath}${article.detailCommand.prd_img}" alt="White Blouse Armani" style="width: 150px">
                                                </a>
                                            </td>
                                            <!-- 배송주기 --><td>${article.cart_cycle}</td>
                                            <!-- 최초 수령일 --><td>${fn:substring(article.cart_takedate,0,10)}</td>
                                            <!-- 결제 가격 --><td>blank</td>
                                            <!-- 삭제 --><td><a href="cartCancle.do?cart_num=${article.cart_num}"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="5">총 상품 금액</th>
                                            <th colspan="2">blank</th>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="category.html" class="btn btn-default"><i class="fa fa-chevron-left"></i>쇼핑 계속하기</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">주문하기<i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>

                        </form>

                    </div>
                    <!-- /.box -->

                    <div class="row">
                        <div class="col-md-3">
                            <div class="box">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="product">
                                <div class="image">
                                    <a href="detail.html">
                                        <img src="img/product2.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3">
                            <div class="product">
                                <div class="image">
                                    <a href="detail.html">
                                        <img src="img/product3.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3">
                            <div class="product">
                                <div class="image">
                                    <a href="detail.html">
                                        <img src="img/product1.jpg" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>

                </div>
                <!-- /.col-md-9 -->
                <!-- /.col-md-3 -->

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>
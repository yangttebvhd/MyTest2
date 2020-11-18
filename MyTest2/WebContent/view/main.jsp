<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,com.dto.*"%>
<html lang="kr">


<head>
<title>main</title>
<!-- <style>
body {	color: #fefefe}
.prd_box {border: 5px solid black;background-color: white;width: 500px;height: 250px}
.btn {border: 1px solid grey;	border-radius: 5px;	background-color: yellow;	width: 150px;
	height: 50px;}
</style> -->
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
    <div class="navbar navbar-default navbar-fixed-top yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="main.jsp">
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

    <!-- *** LOGIN MODAL 로그인 모달 ***
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
                            <input type="text" class="form-control" id="email" placeholder="e-mail">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" placeholder="password">
                        </div>

                        <p class="text-center">
                            <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                        </p>

                    </form>

                    <p class="text-center text-muted">아직 회원이 아니신가요?</p>
                    <p class="text-center text-muted"><a href="register.html"><strong>회원가입</strong></a></p>
                    <p class="text-center text-muted">아직 Blooming.com의 회원이 아니시라면 <br> 이메일로 간편하게 가입하실 수 있습니다.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- *** LOGIN MODAL END *** -->
    <!-- *** INTRO IMAGE 시작 *** -->
    <div id="intro">
        <div class="item">
            <div class="container">
                <div class="row">
                    <div class="carousel-caption">
                        <h1>Welcome to BLOOMING<br>E-commerce Template</h1>
                        <h3>This template contains 23 precisely crafted HTML templates, has great typography, is SEO friendly and 100% responsive.</h3>

                        <!-- <p><a class="btn btn-lg btn-primary scroll-to" href="#content" role="button">꽃 정기 배달 시작하기<br class="hidden-md hidden-lg"></a> -->
                        </p>
                        <!--<p><a class="btn btn-lg btn-default" href="index.html" role="button">View alternative homepage</a>
                        </p>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- *** INTRO IMAGE END *** -->
    <div id="all">
        <!-- *** ADVANTAGES *** -->

        <div id="advantages">
            <div class="container">
                <div class="col-md-12">
                    <div class="box text-center">
                        <h3 class="text-uppercase">About Blooming</h3>
                        <p>2주에 한 번 씩 향기와 기쁨을 배달 받으세요.<br> Blooming은<strong>행복과 기쁨을</strong>여러분들께 선물해드립니다.</p>
                        <div class="same-height-row row">
                            <div class="col-sm-3">
                                <div class="box same-height no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-heart-o"></i>
                                    </div>
                                    <h4>높은 만족도</h4>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="box same-height no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-tags"></i>
                                    </div>
                                    <h4>합리적 가격</h4>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="box same-height no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-send-o"></i>
                                    </div>
                                    <h4>당일 배송</h4>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="box same-height no-border text-center-xs text-center-sm">
                                    <div class="icon"><i class="fa fa-refresh"></i>
                                    </div>
                                    <h4>신선도 보증</h4>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                    </div>

                </div>


            </div>
            <!-- /.container -->

        </div>
        <!-- /#advantages -->

        <!-- *** ADVANTAGES END *** -->

        <!-- *** CONTENT ***
	    _________________________________________________________
	    _________________________________________________________
	    -->

        
        <div id="content">
            <div class="container">
                <div class="col-sm-12">
                
                    <div class="box text-center">
                        <h3 class="text-uppercase">인기 상품</h3>
                        <h4 class="text-muted">인기 상품 <span class="accent">첫 번째 구독 무료</span></h4>
                    </div>



                    <div class="row products">
                    
<%
	/* 전체 테이블의 레코드 로드 */
    ArrayList prd_list=(ArrayList)request.getAttribute("prd_list");
    System.out.println("main.jsp의 prd_list=>"+prd_list);
    if(prd_list!=null){
    	Iterator iter=prd_list.iterator();
    	while(iter.hasNext()){
    		DetailCommand data=(DetailCommand)iter.next();
    		String prd_id=data.getPrd_id();
    		String prd_name=data.getPrd_name();
    		int  prd_price=data.getPrd_price();
    		String prd_img=data.getPrd_img();
    		System.out.println("main.jsp의 prd_id=>"+prd_id);

%>
                        <div class="col-md-4 col-sm-4">
                            <div class="product">
                                <div class="image">
                                    <a href="to<%=prd_id%>.do?prd_id=<%=prd_id%>">
                                        <%-- <img src="${pageContext.request.contextPath}/minimal/img/product1.jpg" alt="" class="img-responsive image1"> --%>
                                        <img src="${pageContext.request.contextPath}<%=prd_img%>" alt="" class="img-responsive image1">
                                    </a>
                                </div>
                                <!-- /.image -->
                                <div class="text">
                                    <h3><a href="to<%=prd_id%>.do?prd_id=<%=prd_id%>"><%=prd_name%></a></h3>
                                    <p class="price"><%=prd_price%></p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>
<%
	} //end while
} //end if
%>                    

                    </div>
                    <!-- /.products -->

                </div>
                <!-- /.col-sm-12 -->

            </div>
            <!-- /.container -->

            <!-- *** PROMO BAR ***
_________________________________________________________ -->

            <div class="bar background-image-fixed-2 no-mb color-white text-center">
                <div class="dark-mask"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="icon icon-lg"><i class="fa fa-file-code-o"></i>
                            </div>
                            <h1>궁금하신 사항이 있으신가요?</h1>
                            <p class="lead">배송 중 꽃이 시들면 어쩔지 고민되시나요? 저희가 다 방책이 있습니다.</p>
                            <p class="text-center">
                                <a href="index2.html" class="btn btn-primary btn-lg">FAQ 확인하기</a>
                            </p>
                        </div>

                    </div>
                </div>
            </div>

            <!-- *** PROMO BAR END *** -->


            <div class="container">
                <div class="col-sm-12">
                    <!-- *** BLOG HOMEPAGE ***
_________________________________________________________ -->

                    <div class="box text-center">
                        <h3 class="text-uppercase">From our Instagram</h3>

                        <p class="text-italic text-large">홈에 등록되기 전에 먼저 신상 시즌꽃을 예약하고 싶나요? <span class="accent">Check our Instagram!</span>
                        </p>
                    </div>

                    <div id="blog-homepage" class="row">
                        <div class="col-sm-6">
                            <div class="post">
                                <h4><a href="post.html">Flower now</a></h4>
                                <p class="author-category">By <a href="#">김혜림</a> in <a href="">전문 플로리스트</a>
                                </p>
                                <hr>
                                <p class="intro">어쩌고저쩌고에서 어쩌고저쩌고한 경력을 인정 받은 전문 플로리스트 김혜림의 초이스를 믿어보세요</p>
                                <p class="read-more"><a href="post.html" class="btn btn-primary">@innn.0194</a>
                                </p>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="post">
                                <h4><a href="post.html">Blooming</a></h4>
                                <p class="author-category">By <a href="#">이유리</a> in <a href="">About Blooming</a>
                                </p>
                                <hr>
                                <p class="intro">고객분들께 매일 한 송이의 기쁨을 전달하고자하는 전문 쇼퍼 이유리의 Blooming 소식을 가장 먼저 들어보세요</p>
                                <p class="read-more"><a href="post.html" class="btn btn-primary">@2you_re</a>
                                </p>
                            </div>

                        </div>

                    </div>
                    <!-- /#blog-homepage -->

                    <!-- *** BLOG HOMEPAGE END *** -->
                </div>
            </div>

        </div>
        <!-- /#content -->

        <!-- *** FOOTER ***
_________________________________________________________ -->

        <div id="footer">
            <div class="container">
                <div class="col-md-3 col-sm-6">
                    <h4>Pages</h4>

                    <ul>
                        <li><a href="text-left.html">Terms and conditions</a>
                        </li>
                        <li><a href="faq.html">FAQ</a>
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
<!--

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
-->

                </div>
                <!-- /.col-md-3 -->

                <div class="col-md-3 col-sm-6">

                    <h4>오프라인 매장</h4>

                    <p>경기도 고양시 덕양구 화신로 76
                    <br>우편번호 <strong>10519</strong>
                    <br>전화번호 <strong>010-2292-1124</strong>
                    <br>사업자 등록 번호 <strong>192931-12931</strong>
                    </p>

                    <hr class="hidden-md hidden-lg hidden-sm">

                </div>
                <!-- /.col-md-3 -->



                <div class="col-md-3 col-sm-6">

                    <h4>24시간 실시간 상담 받기</h4>

                    <p class="text-muted">전문 상담가가 24시간 대기 중인 24시간 실시간 상담을 받아보세요</p>

                    <form>
                        <div class="input-group">
			<button class="btn btn-default" type="button">카카오톡 1:1 질문하기</button>

                        </div>
                        <!-- /input-group -->
                    </form>


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

    <script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>

    <!-- owl carousel -->
    <script src="${pageContext.request.contextPath}/minimal/js/owl.carousel.min.js"></script>



</body>
</html>

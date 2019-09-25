<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yonetici.aspx.cs" Inherits="TeknikServis.TeknikServis.yonetici" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="Free HTML5 Website Template by GetTemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="GetTemplates.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet"/>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css"/>
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css"/>
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css"/>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css"/>

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css"/>

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="css/owl.theme.default.min.css"/>

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css"/>

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
    <style type="text/css">
        .newStyle1 {
            background-color: #FCF8E3;
            font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande", "Lucida Sans", Arial, sans-serif;
        }
        .auto-style2 {
            left: 0px;
            top: 0px;
            height: 478px;
        }
        .auto-style3 {
            max-width: 1100px;
            position: relative;
            margin: 0 auto;
            padding-left: 15px;
            padding-right: 15px;
            left: 0px;
            top: 0px;
            height: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
	
	<div id="page" class="auto-style2">

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-xs-6">
					</div>
					
						<div id="gtco-logo" class="text-right"><a href="yonetici.aspx">Teknik Servis Yönetim <em>.<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/TeknikServis/images/Login_out.png" OnClick="ImageButton1_Click1" />
                            </em></a></div>
					
				</div>
			</div>	
		</div>
		<nav class="gtco-nav sticky-banner" role="navigation">
			<div class="auto-style3">
				
				<div class="row">
					<div class="col-xs-12 text-center menu-1">
						<ul>
							<li class="active"><a href="yonetici.aspx">Anasayfa</a></li>
							<li class="has-dropdown">
								<a href="onay.aspx">Onay Listesi</a>
							</li>
                            <li class="has-dropdown">
								<a>Bilgiler</a>
								<ul class="dropdown">
									<li><a href="CalisanEkle.aspx">Personel Bilgileri</a></li>
									<li><a href="tedarik.aspx">Tedarikçi bilgileri</a></li>
									
								</ul>
							</li>
							<li><a href="Rapor.aspx">Rapor</a></li>
                                <li class="has-dropdown">
								<a>Ekle</a>
								<ul class="dropdown">
									<li><a href="StokEkle.aspx">Stok Ekle</a></li>
									
                                    <li><a href="HizmetEkle.aspx">Hizmet Ekle</a></li>
                                    <li><a href="KullaniciEkle.aspx">Kullanici Ekle</a></li>
								</ul>
							</li>
							
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
	</div>
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 100%; height: 261px;" data-stellar-background-ratio="0.5">
		<div class="overlay" style="left: 0; right: 0; top: 0; bottom: -31px"></div>
		<div class="gtco-container">
			<div class="row row-mt-15em">
				
			</div>
		</div>
	</header>



	
<%--	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					
				</div>

				<div class="col-md-4 col-md-push-1">
					<div class="gtco-widget">
						
					
					</div>
				</div>

				

				<div class="col-md-3 col-md-push-1">
					<div class="gtco-widget">
						
					</div>
				</div>

			</div>

			<div class="row copyright">
				<div class="col-md-12">
					
				</div>
			</div>

		</div>
	</footer>--%>
	</div>

	</div>

<%--	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	--%>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/sticky.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Main -->
	<script src="js/main.js"></script>


    </div>
    </form>
    <h1 class="text-center"><span class="newStyle1">Hoş Geldiniz</span></h1>
</body>
</html>


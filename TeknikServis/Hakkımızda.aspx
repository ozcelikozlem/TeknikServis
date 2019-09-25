﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="TeknikServis.Hakkımızda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Multi-purpose theme</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
    <form id="form1" runat="server">
    <div>
    <header>		
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="left: 0px; top: 0px">
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="auto-style2">
							<a href="default.aspx"><h1 class="auto-style4"><span class="auto-style3">DESTEK</span></h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="default.aspx" class="active">Hakkımızda</a></li>
								<li role="presentation"><a href="hizmetler.aspx">Hizmetler</a></li>
								<li role="presentation"><a href="destek.aspx">Destek</a></li>
								<li role="presentation"><a href="ServisUcretlendirme.aspx">Servis Ücretlendirmesi</a></li>
								<li role="presentation"><a href="iletisim.aspx">İletişim</a></li>						
							</ul>
						</div>
					</div>						
				</div>
			</div>	
		</nav>		
	</header>
   
	<div class="auto-style1">
		<div class="img-responsive">
			<ul class="bxslider">				
				<li><img src="images/slider/1.png" alt=""/></li>								
				<li><img src="images/slider/2.jpg" alt=""/></li>	
				<li><img src="images/slider/3.jpg" alt=""/></li>			
			</ul>
		</div>	
    </div>
	

	<div class="features">
		<div class="container">
			<div class="text-center">
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
					<h2>Teknik Destek</h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p>Cihazınızı yanlış ellere teslim etmeyin. Daha ciddi arızalara sebep olabilir. Pcburada Bilgisayarda profesyonel çözüm ve hizmet sunulur, kısa sürede cihazını teslim edilir.<br></p>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="col-lg-6 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.5s">
			<img src="images/6.jpg" class="img-responsive" >
		</div>
		
		<div class="col-lg-6 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.5s">
			<img src="images/5.jpg" class="img-responsive" >
		</div>
	</div>
	
	<div class="main-feature">
		<div class="container">
			<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
				<div class="media">
					<div class="media-left">					
						<i class="fa fa-rocket fa-3x"></i>
					</div>
					
					<div class="media-body">
						<h4 class="media-heading">Hızlı Onarım Süreci</h4>
						<p>Cihazınızın tamir süreci onay vermeniz ile başlar.Tamir işlemi mümkün olan en kısa sürede tamamlanır.</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
				<div class="media">
					<div class="media-left">					
						<i class="fa fa-camera fa-3x"></i>
					</div>
					
					<div class="media-body">
                        <h4 class="media-heading">Ücretsiz Arıza Tespiti</h4>
						<p>Cihazınızın arıza durumu ücretsiz belirlenir.Cihazınız onay vermeniz durumunda tamir edilir.</p>
				
					</div>
				</div>
			</div>
			
			<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">
				<div class="media">
					<div class="media-left">					
						<i class="fa fa-heart-o fa-3x"></i>
					</div>
					
					<div class="media-body">
						<h4 class="media-heading">90 gün İşçilik Garantisi</h4>
						<p>Cihazınızın tamirinde kullanılan parça ve işçilikte 90 gün garanti kapsamında teslim edilmektedir.</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="text-center">
			<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
				<h2>Sınırsız Destek &amp; Hızlı Çözüm </h2>
			</div>
			<div class="wow bounceInUp" data-wow-offset="0" data-wow-delay="0.6s">
                
			</div>
			
		</div>	
		
	</div>
	
	
	
	<footer>
		<div class="footer">
			<div class="container">
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
					<h2>DESTEKTEAM</h2>
					<p>Amacımız siz müşterilerimize gerek iş yerinde gerekse uzaktan tüm sorunlarınızı sizinle birlikte gidermektir.</p>
					
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
					</ul>
				</div>
			
                <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.4s">

                   
				    </div>
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
					<h3>İletişim</h3>
					<ul>
						<li><i class="fa fa-home fa-2x"></i> Office # 38, Suite 54 Elizebth Street, Victoria State Newyork, USA 33026</li><hr>
						<li><i class="fa fa-phone fa-2x"></i> +90 534 523 1118</li><hr>
						<li><i class="fa fa-envelope fa-2x"></i> info@domain.net</li>
					</ul>
				</div>
				
			</div>
		</div>
		
		<div class="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						&copy; 2018.All Rights Reserved.
					</div>
                    <!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Multi
                    -->
					<div class="col-md-6">
						<ul class="pull-right">
							<li><a href="default.aspx">Hakkımızda</a></li>
							<li><a href="hizmetler.aspx">Hizmetler</a></li>
							<li><a href="destek.aspx">Destek</a></li>
							<li><a href="ServisUcretlendirme.aspx">Servis Ücretlendirmesi</a></li>
							<li><a href="iletisim.aspx">İletişim</a></li>
						</ul>
					</div>
				</div>
				<div class="pull-right">
					<a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
				</div>
			</div>
		</div>		
	</footer>
   
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->	
    <script src="js/jquery-2.1.1.min.js"></script>	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script> 
	<script src="js/functions.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
    </div>
    </form>
</body>
</html>


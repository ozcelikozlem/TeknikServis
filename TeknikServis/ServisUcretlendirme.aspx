<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServisUcretlendirme.aspx.cs" Inherits="TeknikServis.ServisUcretlendirme" %>

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
   
  </head>
     <style type="text/css">
         .auto-style1 {
             float: left;
             height: 71px;
             padding: 15px 15px;
             font-size: 18px;
             line-height: 20px;
             width: 71px;
         }
         .auto-style2 {
             color: #FF3300;
         }
         .auto-style3 {
             width: 72px;
             height: 38px;
             position: absolute;
             top: -6px;
             left: 12px;
             z-index: 1;
         }
         .auto-style4 {
             text-decoration: underline;
             color: #FF0000;
         }
     </style>

<body>
    <form id="form1" runat="server">
    <div>
    	<header>		
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<div class="auto-style1">
							<a href="index.html"><h1 class="auto-style3"><span class="auto-style2">DESTEK</span></h1></a>
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
   <section id="portfolio">
        <div class="container">
			<div class="col-lg-12">
				<div class="text-center">
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
						<h2>Servis Ücretlendirmesi</h2>					
					</div>
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
						<p class="auto-style4"><strong><em>Fiyatlar bilgilendirme amaçlıdır.Detaylı bilgi için bizi arayın.</em></strong></p>
					</div>
				</div>
			

				<ul class="portfolio-filter text-center">
					<li><a class="btn btn-default active" href="#" data-filter="*">Tümü</a></li>
					<li><a class="btn btn-default" href="#" data-filter=".bootstrap">Pc&Imac Tamiri</a></li>
					<li><a class="btn btn-default" href="#" data-filter=".html">Dizüstü Tamiri</a></li>
					<li><a class="btn btn-default" href="#" data-filter=".wordpress">Tablet Tamiri</a></li>
                    <li><a class="btn btn-default" href="#" data-filter=".htmll">Projeksiyon Tamiri</a></li>
					
				</ul>

				<div class="row">
					
						</div>
                	<div class="portfolio-items">
						<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive" src="images/portfolio/recent/item1.png" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Business theme</a></h3>
										<p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
										<a class="preview" href="images/portfolio/full/item1.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>
						</div><!--/.portfolio-item-->
						<div class="portfolio-item joomla html col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive" src="images/portfolio/recent/dzustutmrfyt.PNG" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Business theme</a></h3>
										<p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
										<a class="preview" href="images/portfolio/full/dzustutmrfyt.PNG" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>          
						</div>

						<div class="portfolio-item  wordpress col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive" src="images/portfolio/recent/tblttmrfyt.PNG" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Business theme</a></h3>
										<p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
										<a class="preview" href="images/portfolio/full/tblttmrfyt.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>        
						</div>
						
			  
						<div class="portfolio-item joomla bootstrap col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive" src="images/portfolio/recent/pctmrfyt.PNG" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Business theme</a></h3>
										<p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
										<a class="preview" href="images/portfolio/full/pctmrfyt.PNG" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>      
						</div>

						<div class="portfolio-item  htmll apps col-xs-12 col-sm-4 col-md-3">
							<div class="recent-work-wrap">
								<img class="img-responsive" src="images/portfolio/recent/projejtmrfyt.PNG" alt="">
								<div class="overlay">
									<div class="recent-work-inner">
										<h3><a href="#">Business theme</a></h3>
										<p>There are many variations of passages of Lorem Ipsum available, but the majority</p>
										<a class="preview" href="images/portfolio/full/projejtmrfyt.PNG" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>
									</div> 
								</div>
							</div>         
						</div>

			
					</div>
				</div>
			</div>
        </div>
    </section>
        <footer>
		<div class="footer">
			<div class="container">
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
					<h2>Multi</h2>
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
              
                
					<div class="col-md-6">
						<ul class="pull-right">
							<li><a href="default.aspx">Hakkımızda</a></li>
							<li><a href="hizmetler.aspx">Hizmetler</a></li>
							<li><a href="destek.aspx">Destek</a></li>
							<li><a href="ServisUcretlendirme">Servis Ücretlendirmesi</a></li>
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
   
	
  
    <script src="js/jquery-2.1.1.min.js"></script>	

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

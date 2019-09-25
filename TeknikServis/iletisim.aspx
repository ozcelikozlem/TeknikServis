<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="TeknikServis.contact" %>

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
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            text-align: center;
            top: 0px;
            left: 0px;
            float: left;
            width: 100%;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-bottom: 15px;
            text-align: center;
        }
        .auto-style4 {
            position: relative;
            min-height: 1px;
            top: -31px;
            left: 3px;
            float: left;
            width: 96%;
            height: 347px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            width: 80px;
            height: 38px;
            font-size: xx-large;
            position: absolute;
            top: -3px;
            left: 10px;
            z-index: 1;
        }
        .auto-style6 {
            float: left;
            height: 68px;
            padding: 15px 15px;
            font-size: 18px;
            line-height: 20px;
            width: 77px;
        }
        .auto-style7 {
            color: #FF3300;
        }
    </style>
  </head><body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    <header>		
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="navigation">
				<div class="container">					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
						</button>
						<div class="auto-style6">
							<a href="index.html"><h1 class="auto-style5"><span class="auto-style7">M</span>ulti</h1>
                            </a></div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								
								<li role="presentation"><a href="hizmetler.aspx">Hizmetler</a></li>
								<li role="presentation"><a href="destek.aspx">Destek</a></li>
								<li role="presentation"><a href="ServisUcretlendirme.aspx">Servis Ücretlendirmesi</a></li>
								<li role="presentation"><a href="iletisim.aspx">İletişim</a></li>	</ul>		
						</div>
					</div>						
				</div>
			</div>	
		</nav>		
	</header>
	
	<div class="contact">
		<div class="container">
			<div class="text-center">
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
					<h2>Bizimle İletişime Geçin</h2>					
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><span style="color: rgb(90, 95, 97); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Gerekli bilgileri bizimle paylaşın &amp; Size en kısa zamanda dönüş yapalım.</span></p>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		
		<div class="contact-info">
			<div class="auto-style4">
				<h2>Teknik Destek </h2>
				<h3>That Inspires Our Customers & Clients</h3>
				<ul>
					<li><i class="fa fa-home fa-2x"></i> Office # 38, Suite 54 Elizebth Street</li>
					<li><i class="fa fa-phone fa-2x"></i>+90 534 523 1118</li>
                    <li><i class="fa fa-envelope fa-2x"></i>info@domain.net</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="contact-form">
		<div class="container">
			<div class="col-md-4">
				<div class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="290px" class="form-control">Adınız</asp:TextBox>
					<%--<input type="email" class="form-control" id="exampleInputName" placeholder="name">--%><div class="auto-style2">
                    </div>

                    &nbsp;</div>
			</div>
			<div class="col-md-4">
				<div class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="291px" class="form-control" TextMode="Email">Mail</asp:TextBox>
					<%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="email">--%><div class="auto-style2">
                    </div>

				&nbsp;</div>
			</div>
		</div>
		
		<div class="container">
			<div class="auto-style1">	
                <asp:TextBox ID="TextBox4" runat="server" Height="120px" TextMode="MultiLine" Width="933px" class="form-control"></asp:TextBox>
				<%--<textarea class="form-control" rows="5"></textarea>	--%>		
				<div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Mesaj Gönder" class="btn btn-primary btn-lg" OnClick="Button1_Click"/>
                    
				</div>
			</div>
		</div>
		
	</div>
	
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
				
				<%--<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.4s">
					<h3>Sayfa Haritası</h3>
					<ul>
						<li>Anasayfa</li><hr>
						<li>Destek</li><hr>
						<li>Hizmetler </li><hr>
						<li>Servis Ücretlendirmesi</li>
					</ul>
				</div>
				--%>
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
							<li><a href="default.aspx">Anasayfa</a></li>
							<li><a href="services.html">Hizmetler</a></li>
							<li><a href="support.aspx">Destek</a></li>
							<li><a href="portfolio.html">Servis Ücretlendirmesi</a></li>
							<li><a href="contact.aspx">İletişim</a></li>
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

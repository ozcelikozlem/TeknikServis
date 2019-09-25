<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunKayitt.aspx.cs" Inherits="TeknikServis.TeknikServis.Personel.UrunKayitt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head width="400" aria-multiselectable="False">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>Honest &mdash; Free Website Template, Free HTML5 Template by GetTemplates.co</title>
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
        .auto-style1 {
            width: 1215px;
            height: 235px;
        }
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
        .auto-style4 {
            left: 0px;
            top: 0px;
            width: 1197px;
        }
        .auto-style5 {
            width: 821px;
        }
        .auto-style6 {
            width: 1086px;
        }
        .auto-style7 {
            position: absolute;
            width: 100%;
            top: -12px;
            left: 10px;
        }
    </style>

	</head>
<body>
    	<form runat ="server">
			

	
	<div id="page" class="auto-style3">

	
	<div class="page-inner">

	<div id="head-top" class="auto-style7">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="row">
						<div id="gtco-logo"><a href="PersonelGiris.aspx">Teknik Servis <em>.<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/TeknikServis/images/Login_out.png" OnClick="ImageButton1_Click" />
                            </em></a></div>
					<div class="col-md-6 col-xs-6">
					</div>
					<div class="col-md-6 col-xs-6 social-icons">
						
					</div>
				</div>
			</div>	
		</div>
			<nav class="gtco-nav sticky-banner" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-xs-12 text-center menu-1">
						<ul>

							<li class="active"><a href="PersonelGiris.aspx">Anasayfa</a></li>
                            <li class="active"><a href="StokBilgi.aspx">Stok Kontrolü</a></li>
							<li class="has-dropdown">
								<a href="TalepBilgi.aspx">Talep Bilgileri(Yeni Talep oluşturma)</a>
							</li>
                            <li class="has-dropdown">
								<a>İşlemler</a>
								<ul class="dropdown">
									<li><a href="Mail.aspx">Mail İşlemleri</a></li>
									<li><a href="Fatura.aspx">Fatura İşlemleri</a></li>
								</ul>
							</li>
							<li><a href="MusteriKayit.aspx">Müşteri kayıt</a></li>
                                	
						</ul>
					</div>
				</div>
				
			</div>
           
               
				
		</nav>

	</div>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 116%; height: 189px;" data-stellar-background-ratio="0.5">
		
	</header>

        
	<div class="flex-section gtco-gray-bg" style="width: 138%">
	   <div>
        <div class="auto-style1">
            
                      <table  title="Müşteri Kayıt" class="auto-style6">
                   
                    <tr>
                        <td class="auto-style5">ÜRÜN ADI: <asp:TextBox ID="TextBox7" runat="server" Height="24px"  ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">ÜRÜN TÜRÜ: <asp:TextBox ID="TextBox9" runat="server" Height="24px"></asp:TextBox></td>
                  
                   
                    </tr>
                    <tr>
                        <td class="auto-style5">ÜRÜN MARKA:<asp:TextBox ID="TextBox10" runat="server" Height="24px"></asp:TextBox></td>
                       
                    </tr>
                    <tr>
                        <td class="auto-style5">ÜRÜN SORUNU: <asp:TextBox ID="TextBox11" runat="server" Height="24px"></asp:TextBox></td>
                       
                    </tr>
                     <tr>
                        <td class="auto-style5">UYGULANACAK HİZMET:
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="HIZMETTURU" DataValueField="HIZMETTURU">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT &quot;HIZMETTURU&quot; FROM &quot;HIZMET&quot;"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT &quot;HIZMETADI&quot; FROM &quot;HIZMET&quot;"></asp:SqlDataSource>
                         </td>
                       
                    </tr>
                     <tr>
                        <td class="auto-style5">HİZMET ADI :
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="HIZMETADI" DataValueField="HIZMETADI">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT &quot;HIZMETADI&quot; FROM &quot;HIZMET&quot;"></asp:SqlDataSource>
                         </td>
                     
                    </tr>
                  
                         <tr>
                     
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                            </td>
                    </tr>
                    
                </table>
               <br />
      <br /> <br />
    
  
       
    
        </div>
    
	<div class="flex-section gtco-gray-bg">
	   <div>
        <div>
          

        </div>
     
	
	</div>
	</div>

	</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
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
  </form>
</body>
</html>

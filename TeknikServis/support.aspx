<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="support.aspx.cs" Inherits="TeknikServis.support" %>

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
              color: #FF6600;
              text-align: center;
          }
          .auto-style2 {
              width: 472px;
          }
          .auto-style3 {
              height: 502px;
          }
          .auto-style4 {
              color: #FF0000;
          }
          .auto-style5 {
              float: left;
              height: 48px;
              padding: 15px 15px;
              font-size: 18px;
              line-height: 20px;
              width: 66px;
          }
          .auto-style6 {
              font-size: x-large;
              width: 68px;
              height: 35px;
              position: absolute;
              top: -2px;
              left: 8px;
              z-index: 1;
          }
          .auto-style7 {
              color: #FF0000;
              font-size: xx-large;
          }
          .auto-style8 {
              font-size: xx-large;
          }
      </style>
  </head>
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
						<div class="auto-style5">
							<a href="index.html"><h1 class="auto-style6"><span class="auto-style7">M</span><span class="auto-style8">ulti</span></h1></a>
						</div>
					</div>
					
					<div class="navbar-collapse collapse">							
						<div class="menu">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation"><a href="default.aspx" class="active">Anasayfa</a></li>
								<li role="presentation"><a href="services.aspx">Hizmetler</a></li>
								<li role="presentation"><a href="support.aspx">Destek</a></li>
								<li role="presentation"><a href="ServisUcretlendirme.aspx">Servis Ücretlendirmesi</a></li>
								<li role="presentation"><a href="contact.aspx">İletişim</a></li>				
							</ul>
						</div>
					</div>						
				</div>
			</div>	
		</nav>		
	</header>
   

          <div>

           <h1 class="auto-style1">Servis Talebinde Bulunun</h1> 
              <div class="text-center">
         Cihazınızın her türlü sorununda sizin yanınızda yardımcı olmaya hazırız.

              </div>

        </div>

        <div style="color: #003366">
         <table align="center" class="auto-style3">
             <tr> 
                 <td class="auto-style2"> Adınız *</td>
                 <td> Soyadınız * </td>
             </tr>
             <tr> 
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator> </td> 
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
             </tr>
              <tr> 
                 <td class="auto-style2">E-posta *</td>
                 <td>Telefon *</td>
             </tr>
              <tr> 
                   <td class="auto-style2">
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
             </tr>
              <tr> 
                 <td class="auto-style2">Cihazınız</td>
                 <td>Uygulanacak Hizmet *</td>
             </tr>
              <tr> 
                 <td class="auto-style2">
                     <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
                 <td>
                     <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="DropDownList4" ForeColor="Red" ValidateRequestMode="Enabled" ViewStateMode="Enabled">*</asp:RequiredFieldValidator></td>
                 
             </tr>
              <tr> 
                 <td class="auto-style2">Cihazınızın Sorunu</td>
                
             </tr>
              <tr> 
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox5" runat="server" Height="81px" TextMode="MultiLine" Width="454px"></asp:TextBox></td>
                 
             </tr>
              <tr> 
                 <td class="auto-style2">
                     <asp:Button ID="Button1" runat="server" Text="Talep Et" class="btn btn-default" /></td>
                 <td class="text-right">&nbsp; <span class="auto-style4">&nbsp;</span> * Boş Bırakmayınız.</td>
             </tr>



         </table>


        </div>

	    <!--/#blog-->
	
	
	
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

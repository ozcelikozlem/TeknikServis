<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="destek.aspx.cs" Inherits="TeknikServis.support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Multi-purpose theme</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/jquery.bxslider.css"/>
	<link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
	<link href="css/prettyPhoto.css" rel="stylesheet"/>
	<link href="css/style.css" rel="stylesheet"/>	
   
      <style type="text/css">
          .auto-style1 {
              color: #FF6600;
              text-align: center;
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
          .auto-style10 {
              margin-left:1;
          }
          .auto-style21 {
              left: 0px;
              top: 0px;
          }
          .auto-style45 {
              margin-right: 35;
          }
          .auto-style47 {
              width: 352px;
          }
          .auto-style49 {
              width: 374px;
          }
          .auto-style50 {
              width: 268435520px;
          }
          .auto-style51 {
              height: 354px;
          }
          .auto-style52 {
              width: 835px;
          }
          .auto-style53 {
              width: 114%;
              margin-right: 66px;
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
							<a href="default.aspx"><h1 class="auto-style6"><span class="auto-style7">DESTEK</span></h1></a>
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
   

          <div>

           <h1 class="auto-style1">Servis Talebinde Bulunun</h1> 
              <div class="text-center">
         Cihazınızın her türlü sorununda sizin yanınızda yardımcı olmaya hazırız.

                  <br />
                  <br />
                  <table class="auto-style53">
                      <tr>
                          <td class="auto-style49">Adınız *&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          <td class="auto-style52">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style45" Height="23px" Width="214px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                          <td>&nbsp;</td>
                          <td>Ürün Adı *</td>
                          <td class="auto-style47" colspan="4">Ürün Markası*</td>
                      </tr>
                      <tr>
                          <td class="auto-style49">
                              Soyadınız*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                          <td class="auto-style52">
               <asp:TextBox ID="TextBox2" runat="server" Width="257px" ></asp:TextBox> </td>
                          <td>
                              &nbsp;</td>
                          <td>
                     <asp:TextBox ID="TextBox6" runat="server" Width="192px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                          <td class="auto-style47" colspan="4">
                     <asp:TextBox ID="TextBox8" runat="server" Width="190px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="auto-style49">E-Posta*</td>
                          <td class="auto-style52">
                     <asp:TextBox ID="TextBox3" runat="server"  Width="233px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                          <td>&nbsp;</td>
                          <td>Ürün Türü *</td>
                          <td class="auto-style47" colspan="4">Cihazınız*</td>
                      </tr>
                      <tr>
                          <td class="auto-style49">
                              Telefon*</td>
                          <td class="auto-style52">
                     <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style10" OnTextChanged="TextBox4_TextChanged" TextMode="Number" Width="175px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                          <td>
                              &nbsp;</td>
                          <td>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                          <td class="auto-style47" colspan="4">
                     <asp:DropDownList ID="DropDownList3" runat="server" Height="24px" Width="118px">
                         <asp:ListItem>PC&amp;iMac</asp:ListItem>
                         <asp:ListItem>Dizüstü</asp:ListItem>
                         <asp:ListItem>Tablet</asp:ListItem>
                         <asp:ListItem>Projeksiyon</asp:ListItem>
                     </asp:DropDownList></td>
                      </tr>
                      <tr>
                          <td class="auto-style51" colspan="2">Uygulanacak Hizmet*</td>
                          <td class="auto-style51" colspan="2">
                     <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="HIZMETADI" DataValueField="HIZMETADI" Height="29px" Width="107px"></asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılmaz." ControlToValidate="DropDownList4" ForeColor="Red" ValidateRequestMode="Enabled" ViewStateMode="Enabled">*</asp:RequiredFieldValidator>
                          </td>
                          <td class="auto-style51" colspan="4">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;HIZMETADI&quot; FROM &quot;HIZMET&quot;"></asp:SqlDataSource>
                          </td>
                      </tr>
                      <tr>
                          <td colspan="2">Cihazınızın Sorunu :</td>
                          <td colspan="2">
                     <asp:TextBox ID="TextBox5" runat="server" Height="67px" TextMode="MultiLine" Width="412px"></asp:TextBox>
                          </td>
                          <td>
                              &nbsp;</td>
                          <td class="auto-style50">
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Talep Et" Height="24px" />
                          </td>
                          <td class="auto-style50">
                              <asp:Label ID="Label1" runat="server"></asp:Label>
                          </td>
                          <td class="auto-style50">
                              &nbsp;</td>
                      </tr>
                  </table>
                  <br />
                  <br />
                  <br />

              </div>

        </div>

        <div style="color: #003366">


        </div>

	    
	
	
	
	<footer>
		<div class="footer">
			<div class="container">
				<div class="auto-style21" data-wow-offset="0" data-wow-delay="0.2s">
					<h2>DESTEKTEAMz siz müşterilerimize gerek iş yerinde gerekse uzaktan tüm sorunlarınızı sizinle birlikte gidermektir.</p>
					
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

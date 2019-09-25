<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciEkle.aspx.cs" Inherits="TeknikServis.TeknikServis.KullaniciEkle" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Teknik Servis Yönetim &mdash; </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by GetTemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="GetTemplates.co" />

  	<!-- Facebook and Twitter integration -->
<%--	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />--%>

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	 <style type="text/css">
         .auto-style1 {
             height: 27px;
         }
     </style>

	</head>
	<body>
        
    <form id="form1" runat="server">
   
	
	
	<div id="page">

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="row">
						<div id="gtco-logo" class="text-right"><a href="yonetici.aspx">Teknik Servis Yönetim <em>.</em></a>&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/TeknikServis/images/Login_out.png" OnClick="ImageButton1_Click" />
                    </div>
					<div class="col-md-6 col-xs-6">
					    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="KULLANICIID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="KULLANICIID" HeaderText="KULLANICIID" ReadOnly="True" SortExpression="KULLANICIID" />
                                <asp:BoundField DataField="KULLANICIADI" HeaderText="KULLANICIADI" SortExpression="KULLANICIADI" />
                                <asp:BoundField DataField="KULLANICISIFRE" HeaderText="KULLANICISIFRE" SortExpression="KULLANICISIFRE" />
                                <asp:BoundField DataField="TEKNIKSERVISID" HeaderText="TEKNIKSERVISID" SortExpression="TEKNIKSERVISID" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" DeleteCommand="DELETE FROM &quot;TSKULLANICI&quot; WHERE &quot;KULLANICIID&quot; = :original_KULLANICIID AND ((&quot;KULLANICIADI&quot; = :original_KULLANICIADI) OR (&quot;KULLANICIADI&quot; IS NULL AND :original_KULLANICIADI IS NULL)) AND ((&quot;KULLANICISIFRE&quot; = :original_KULLANICISIFRE) OR (&quot;KULLANICISIFRE&quot; IS NULL AND :original_KULLANICISIFRE IS NULL)) AND ((&quot;TEKNIKSERVISID&quot; = :original_TEKNIKSERVISID) OR (&quot;TEKNIKSERVISID&quot; IS NULL AND :original_TEKNIKSERVISID IS NULL))" InsertCommand="INSERT INTO &quot;TSKULLANICI&quot; (&quot;KULLANICIID&quot;, &quot;KULLANICIADI&quot;, &quot;KULLANICISIFRE&quot;, &quot;TEKNIKSERVISID&quot;) VALUES (:KULLANICIID, :KULLANICIADI, :KULLANICISIFRE, :TEKNIKSERVISID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM &quot;TSKULLANICI&quot;" UpdateCommand="UPDATE &quot;TSKULLANICI&quot; SET &quot;KULLANICIADI&quot; = :KULLANICIADI, &quot;KULLANICISIFRE&quot; = :KULLANICISIFRE, &quot;TEKNIKSERVISID&quot; = :TEKNIKSERVISID WHERE &quot;KULLANICIID&quot; = :original_KULLANICIID AND ((&quot;KULLANICIADI&quot; = :original_KULLANICIADI) OR (&quot;KULLANICIADI&quot; IS NULL AND :original_KULLANICIADI IS NULL)) AND ((&quot;KULLANICISIFRE&quot; = :original_KULLANICISIFRE) OR (&quot;KULLANICISIFRE&quot; IS NULL AND :original_KULLANICISIFRE IS NULL)) AND ((&quot;TEKNIKSERVISID&quot; = :original_TEKNIKSERVISID) OR (&quot;TEKNIKSERVISID&quot; IS NULL AND :original_TEKNIKSERVISID IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_KULLANICIID" Type="Decimal" />
                                <asp:Parameter Name="original_KULLANICIADI" Type="String" />
                                <asp:Parameter Name="original_KULLANICISIFRE" Type="String" />
                                <asp:Parameter Name="original_TEKNIKSERVISID" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="KULLANICIID" Type="Decimal" />
                                <asp:Parameter Name="KULLANICIADI" Type="String" />
                                <asp:Parameter Name="KULLANICISIFRE" Type="String" />
                                <asp:Parameter Name="TEKNIKSERVISID" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="KULLANICIADI" Type="String" />
                                <asp:Parameter Name="KULLANICISIFRE" Type="String" />
                                <asp:Parameter Name="TEKNIKSERVISID" Type="Decimal" />
                                <asp:Parameter Name="original_KULLANICIID" Type="Decimal" />
                                <asp:Parameter Name="original_KULLANICIADI" Type="String" />
                                <asp:Parameter Name="original_KULLANICISIFRE" Type="String" />
                                <asp:Parameter Name="original_TEKNIKSERVISID" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
					</div>
					<%--<div class="col-md-6 col-xs-6 social-icons" style="left: 42px; top: 105px; height: 50px">
						<ul class="gtco-social-top">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-instagram"></i></a></li>
						</ul>
					</div>--%>
				</div>
			</div>	
		</div>
		<nav class="gtco-nav sticky-banner" role="navigation">
			<div class="gtco-container">
				
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
                                    <li><a href="KullaniciEkle.aspx">Kullanıcı Ekle</a></li>
								</ul>
							</li>
							
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
	</div>
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 100%; height: 124px;" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
	</header>

	<div><br />
        <br />
        </div>
        <div> 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="TEKNIKSERVISAD" HeaderText="TEKNIKSERVISAD" SortExpression="TEKNIKSERVISAD" />
                    <asp:BoundField DataField="TEKNIKSERVISSOYAD" HeaderText="TEKNIKSERVISSOYAD" SortExpression="TEKNIKSERVISSOYAD" />
                    <asp:BoundField DataField="TEKNIKSERVISEPOSTA" HeaderText="TEKNIKSERVISEPOSTA" SortExpression="TEKNIKSERVISEPOSTA" />
                    <asp:BoundField DataField="TEKNIKSERVISTELEFON" HeaderText="TEKNIKSERVISTELEFON" SortExpression="TEKNIKSERVISTELEFON" />
                    <asp:BoundField DataField="TEKNIKSERVISUNVAN" HeaderText="TEKNIKSERVISUNVAN" SortExpression="TEKNIKSERVISUNVAN" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT &quot;TEKNIKSERVISAD&quot;, &quot;TEKNIKSERVISSOYAD&quot;, &quot;TEKNIKSERVISEPOSTA&quot;, &quot;TEKNIKSERVISTELEFON&quot;, &quot;TEKNIKSERVISUNVAN&quot; FROM &quot;TEKNIKSERVIS&quot; WHERE (&quot;TEKNIKSERVISUNVAN&quot; = :TEKNIKSERVISUNVAN)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Personel" Name="TEKNIKSERVISUNVAN" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
        <div>
	
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1">Teknik Servis Ad :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Teknik Servis Mail :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="192px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Kullanıcı Adı:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Şifre:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="195px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
	
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

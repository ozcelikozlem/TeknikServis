﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StokEkle.aspx.cs" Inherits="TeknikServis.TeknikServis.Ekle" %>

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
		<div class="gtco-container">
			<div class="row row-mt-15em">


			</div>
		</div>
	</header>

	<div><br />
        <br />
        </div>
	
	<div class="flex-section gtco-gray-bg">
	   <div>
        <div>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STOKID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="STOKID" HeaderText="STOKID" ReadOnly="True" SortExpression="STOKID" />
                <asp:BoundField DataField="STOKMALZEMEADI" HeaderText="STOKMALZEMEADI" SortExpression="STOKMALZEMEADI" />
                <asp:BoundField DataField="STOKADET" HeaderText="STOKADET" SortExpression="STOKADET" />
                <asp:BoundField DataField="STOKFIYAT" HeaderText="STOKFIYAT" SortExpression="STOKFIYAT" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEDARIKSTOK&quot; WHERE &quot;STOKID&quot; = :original_STOKID AND ((&quot;STOKMALZEMEADI&quot; = :original_STOKMALZEMEADI) OR (&quot;STOKMALZEMEADI&quot; IS NULL AND :original_STOKMALZEMEADI IS NULL)) AND ((&quot;STOKADET&quot; = :original_STOKADET) OR (&quot;STOKADET&quot; IS NULL AND :original_STOKADET IS NULL)) AND ((&quot;STOKFIYAT&quot; = :original_STOKFIYAT) OR (&quot;STOKFIYAT&quot; IS NULL AND :original_STOKFIYAT IS NULL)) AND ((&quot;STOKFIRMAID&quot; = :original_STOKFIRMAID) OR (&quot;STOKFIRMAID&quot; IS NULL AND :original_STOKFIRMAID IS NULL))" InsertCommand="INSERT INTO &quot;TEDARIKSTOK&quot; (&quot;STOKID&quot;, &quot;STOKMALZEMEADI&quot;, &quot;STOKADET&quot;, &quot;STOKFIYAT&quot;, &quot;STOKFIRMAID&quot;) VALUES (:STOKID, :STOKMALZEMEADI, :STOKADET, :STOKFIYAT, :STOKFIRMAID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEDARIKSTOK&quot;" UpdateCommand="UPDATE &quot;TEDARIKSTOK&quot; SET &quot;STOKMALZEMEADI&quot; = :STOKMALZEMEADI, &quot;STOKADET&quot; = :STOKADET, &quot;STOKFIYAT&quot; = :STOKFIYAT, &quot;STOKFIRMAID&quot; = :STOKFIRMAID WHERE &quot;STOKID&quot; = :original_STOKID AND ((&quot;STOKMALZEMEADI&quot; = :original_STOKMALZEMEADI) OR (&quot;STOKMALZEMEADI&quot; IS NULL AND :original_STOKMALZEMEADI IS NULL)) AND ((&quot;STOKADET&quot; = :original_STOKADET) OR (&quot;STOKADET&quot; IS NULL AND :original_STOKADET IS NULL)) AND ((&quot;STOKFIYAT&quot; = :original_STOKFIYAT) OR (&quot;STOKFIYAT&quot; IS NULL AND :original_STOKFIYAT IS NULL)) AND ((&quot;STOKFIRMAID&quot; = :original_STOKFIRMAID) OR (&quot;STOKFIRMAID&quot; IS NULL AND :original_STOKFIRMAID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STOKID" Type="Decimal" />
                <asp:Parameter Name="original_STOKMALZEMEADI" Type="String" />
                <asp:Parameter Name="original_STOKADET" Type="Decimal" />
                <asp:Parameter Name="original_STOKFIYAT" Type="Decimal" />
                <asp:Parameter Name="original_STOKFIRMAID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STOKID" Type="Decimal" />
                <asp:Parameter Name="STOKMALZEMEADI" Type="String" />
                <asp:Parameter Name="STOKADET" Type="Decimal" />
                <asp:Parameter Name="STOKFIYAT" Type="Decimal" />
                <asp:Parameter Name="STOKFIRMAID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STOKMALZEMEADI" Type="String" />
                <asp:Parameter Name="STOKADET" Type="Decimal" />
                <asp:Parameter Name="STOKFIYAT" Type="Decimal" />
                <asp:Parameter Name="STOKFIRMAID" Type="Decimal" />
                <asp:Parameter Name="original_STOKID" Type="Decimal" />
                <asp:Parameter Name="original_STOKMALZEMEADI" Type="String" />
                <asp:Parameter Name="original_STOKADET" Type="Decimal" />
                <asp:Parameter Name="original_STOKFIYAT" Type="Decimal" />
                <asp:Parameter Name="original_STOKFIRMAID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

           
        </div>
           <div class="flex-section gtco-gray-bg">
	   <div>
        <div>
             <div>
                 <table class="auto-style1" title="Personel Kayıt">
                     <panel>Stok Ekle
                          <tr>
                        <td class="auto-style5">MALZEME ADI:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox8" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">ADET:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">FİYAT:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox2" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    
                         <tr>
                     
                        <td class="auto-style4">
                   <asp:Button ID="Kayit" runat="server" Text="Kaydet" OnClick="Kayit_Click"  />
                            </td>
                    </tr>
                    </panel>
                </table>
                
                

            
           </div>

         </div>
     
	
	</div>
	</div>
	
	</div>
	</div>


	
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
  </form>
</body>
</html>


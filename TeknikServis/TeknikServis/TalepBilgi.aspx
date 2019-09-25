<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TalepBilgi.aspx.cs" Inherits="TeknikServis.TeknikServis.Personel.TalepBilgi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
    	<form runat ="server">
	

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-xs-6">
					</div>
					
						<div id="gtco-logo" class="text-right"><a href="PersonelGiris.aspx">Teknik Servis <em>.<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/TeknikServis/images/Login_out.png" OnClick="ImageButton1_Click" />
                            </em></a></div>
					
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
								<a href="TalepBilgi.aspx">Talep Onay</a>
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 100%; height: 182px;" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
		</div>
	</header>

	<div class="flex-section gtco-gray-bg" style="height: 41px">
	   <div>

           <br />
           Ürün Talebi Onaylamak için Ürün Durumunu Onay Alındı yapınız.<br />
           Onaylanmadı ise Ürün Durumunu Reddedildi olarak güncelleyiniz.<br />
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="URUNID" DataSourceID="SqlDataSource3">
               <Columns>
                   <asp:CommandField ShowEditButton="True" />
                   <asp:BoundField DataField="URUNID" HeaderText="URUNID" ReadOnly="True" SortExpression="URUNID" />
                   <asp:BoundField DataField="URUNAD" HeaderText="URUNAD" SortExpression="URUNAD" />
                   <asp:BoundField DataField="URUNTURU" HeaderText="URUNTURU" SortExpression="URUNTURU" />
                   <asp:BoundField DataField="URUNMARKA" HeaderText="URUNMARKA" SortExpression="URUNMARKA" />
                   <asp:BoundField DataField="URUNSORUNU" HeaderText="URUNSORUNU" SortExpression="URUNSORUNU" />
                   <asp:BoundField DataField="URUNDURUMU" HeaderText="URUNDURUMU" SortExpression="URUNDURUMU" />
                   <asp:BoundField DataField="URUNHIZMETID" HeaderText="URUNHIZMETID" SortExpression="URUNHIZMETID" />
                   <asp:BoundField DataField="URUNMUSTERIID" HeaderText="URUNMUSTERIID" SortExpression="URUNMUSTERIID" />
                   <asp:BoundField DataField="URUNFATURAID" HeaderText="URUNFATURAID" SortExpression="URUNFATURAID" />
                   <asp:BoundField DataField="URUNKAYITTARIHI" HeaderText="URUNKAYITTARIHI" SortExpression="URUNKAYITTARIHI" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;URUN&quot; WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNTURU&quot; = :original_URUNTURU) OR (&quot;URUNTURU&quot; IS NULL AND :original_URUNTURU IS NULL)) AND ((&quot;URUNMARKA&quot; = :original_URUNMARKA) OR (&quot;URUNMARKA&quot; IS NULL AND :original_URUNMARKA IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNHIZMETID&quot; = :original_URUNHIZMETID) OR (&quot;URUNHIZMETID&quot; IS NULL AND :original_URUNHIZMETID IS NULL)) AND ((&quot;URUNMUSTERIID&quot; = :original_URUNMUSTERIID) OR (&quot;URUNMUSTERIID&quot; IS NULL AND :original_URUNMUSTERIID IS NULL)) AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL)) AND ((&quot;URUNKAYITTARIHI&quot; = :original_URUNKAYITTARIHI) OR (&quot;URUNKAYITTARIHI&quot; IS NULL AND :original_URUNKAYITTARIHI IS NULL))" InsertCommand="INSERT INTO &quot;URUN&quot; (&quot;URUNID&quot;, &quot;URUNAD&quot;, &quot;URUNTURU&quot;, &quot;URUNMARKA&quot;, &quot;URUNSORUNU&quot;, &quot;URUNDURUMU&quot;, &quot;URUNHIZMETID&quot;, &quot;URUNMUSTERIID&quot;, &quot;URUNFATURAID&quot;, &quot;URUNKAYITTARIHI&quot;) VALUES (:URUNID, :URUNAD, :URUNTURU, :URUNMARKA, :URUNSORUNU, :URUNDURUMU, :URUNHIZMETID, :URUNMUSTERIID, :URUNFATURAID, :URUNKAYITTARIHI)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;URUN&quot; WHERE (&quot;URUNDURUMU&quot; = :URUNDURUMU)" UpdateCommand="UPDATE &quot;URUN&quot; SET &quot;URUNAD&quot; = :URUNAD, &quot;URUNTURU&quot; = :URUNTURU, &quot;URUNMARKA&quot; = :URUNMARKA, &quot;URUNSORUNU&quot; = :URUNSORUNU, &quot;URUNDURUMU&quot; = :URUNDURUMU, &quot;URUNHIZMETID&quot; = :URUNHIZMETID, &quot;URUNMUSTERIID&quot; = :URUNMUSTERIID, &quot;URUNFATURAID&quot; = :URUNFATURAID, &quot;URUNKAYITTARIHI&quot; = :URUNKAYITTARIHI WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNTURU&quot; = :original_URUNTURU) OR (&quot;URUNTURU&quot; IS NULL AND :original_URUNTURU IS NULL)) AND ((&quot;URUNMARKA&quot; = :original_URUNMARKA) OR (&quot;URUNMARKA&quot; IS NULL AND :original_URUNMARKA IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNHIZMETID&quot; = :original_URUNHIZMETID) OR (&quot;URUNHIZMETID&quot; IS NULL AND :original_URUNHIZMETID IS NULL)) AND ((&quot;URUNMUSTERIID&quot; = :original_URUNMUSTERIID) OR (&quot;URUNMUSTERIID&quot; IS NULL AND :original_URUNMUSTERIID IS NULL)) AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL)) AND ((&quot;URUNKAYITTARIHI&quot; = :original_URUNKAYITTARIHI) OR (&quot;URUNKAYITTARIHI&quot; IS NULL AND :original_URUNKAYITTARIHI IS NULL))">
               <DeleteParameters>
                   <asp:Parameter Name="original_URUNID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNAD" Type="String" />
                   <asp:Parameter Name="original_URUNTURU" Type="String" />
                   <asp:Parameter Name="original_URUNMARKA" Type="String" />
                   <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                   <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                   <asp:Parameter Name="original_URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNKAYITTARIHI" Type="DateTime" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="URUNID" Type="Decimal" />
                   <asp:Parameter Name="URUNAD" Type="String" />
                   <asp:Parameter Name="URUNTURU" Type="String" />
                   <asp:Parameter Name="URUNMARKA" Type="String" />
                   <asp:Parameter Name="URUNSORUNU" Type="String" />
                   <asp:Parameter Name="URUNDURUMU" Type="String" />
                   <asp:Parameter Name="URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="URUNKAYITTARIHI" Type="DateTime" />
               </InsertParameters>
               <SelectParameters>
                   <asp:Parameter DefaultValue="Onay Bekliyor" Name="URUNDURUMU" Type="String" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="URUNAD" Type="String" />
                   <asp:Parameter Name="URUNTURU" Type="String" />
                   <asp:Parameter Name="URUNMARKA" Type="String" />
                   <asp:Parameter Name="URUNSORUNU" Type="String" />
                   <asp:Parameter Name="URUNDURUMU" Type="String" />
                   <asp:Parameter Name="URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="URUNKAYITTARIHI" Type="DateTime" />
                   <asp:Parameter Name="original_URUNID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNAD" Type="String" />
                   <asp:Parameter Name="original_URUNTURU" Type="String" />
                   <asp:Parameter Name="original_URUNMARKA" Type="String" />
                   <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                   <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                   <asp:Parameter Name="original_URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNKAYITTARIHI" Type="DateTime" />
               </UpdateParameters>
           </asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM &quot;URUN&quot; WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNTURU&quot; = :original_URUNTURU) OR (&quot;URUNTURU&quot; IS NULL AND :original_URUNTURU IS NULL)) AND ((&quot;URUNMARKA&quot; = :original_URUNMARKA) OR (&quot;URUNMARKA&quot; IS NULL AND :original_URUNMARKA IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNHIZMETID&quot; = :original_URUNHIZMETID) OR (&quot;URUNHIZMETID&quot; IS NULL AND :original_URUNHIZMETID IS NULL)) AND ((&quot;URUNMUSTERIID&quot; = :original_URUNMUSTERIID) OR (&quot;URUNMUSTERIID&quot; IS NULL AND :original_URUNMUSTERIID IS NULL)) AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL)) AND ((&quot;URUNKAYITTARIHI&quot; = :original_URUNKAYITTARIHI) OR (&quot;URUNKAYITTARIHI&quot; IS NULL AND :original_URUNKAYITTARIHI IS NULL))" InsertCommand="INSERT INTO &quot;URUN&quot; (&quot;URUNID&quot;, &quot;URUNAD&quot;, &quot;URUNTURU&quot;, &quot;URUNMARKA&quot;, &quot;URUNSORUNU&quot;, &quot;URUNDURUMU&quot;, &quot;URUNHIZMETID&quot;, &quot;URUNMUSTERIID&quot;, &quot;URUNFATURAID&quot;, &quot;URUNKAYITTARIHI&quot;) VALUES (:URUNID, :URUNAD, :URUNTURU, :URUNMARKA, :URUNSORUNU, :URUNDURUMU, :URUNHIZMETID, :URUNMUSTERIID, :URUNFATURAID, :URUNKAYITTARIHI)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM &quot;URUN&quot; WHERE (&quot;URUNDURUMU&quot; = :URUNDURUMU)" UpdateCommand="UPDATE &quot;URUN&quot; SET &quot;URUNAD&quot; = :URUNAD, &quot;URUNTURU&quot; = :URUNTURU, &quot;URUNMARKA&quot; = :URUNMARKA, &quot;URUNSORUNU&quot; = :URUNSORUNU, &quot;URUNDURUMU&quot; = :URUNDURUMU, &quot;URUNHIZMETID&quot; = :URUNHIZMETID, &quot;URUNMUSTERIID&quot; = :URUNMUSTERIID, &quot;URUNFATURAID&quot; = :URUNFATURAID, &quot;URUNKAYITTARIHI&quot; = :URUNKAYITTARIHI WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNTURU&quot; = :original_URUNTURU) OR (&quot;URUNTURU&quot; IS NULL AND :original_URUNTURU IS NULL)) AND ((&quot;URUNMARKA&quot; = :original_URUNMARKA) OR (&quot;URUNMARKA&quot; IS NULL AND :original_URUNMARKA IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNHIZMETID&quot; = :original_URUNHIZMETID) OR (&quot;URUNHIZMETID&quot; IS NULL AND :original_URUNHIZMETID IS NULL)) AND ((&quot;URUNMUSTERIID&quot; = :original_URUNMUSTERIID) OR (&quot;URUNMUSTERIID&quot; IS NULL AND :original_URUNMUSTERIID IS NULL)) AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL)) AND ((&quot;URUNKAYITTARIHI&quot; = :original_URUNKAYITTARIHI) OR (&quot;URUNKAYITTARIHI&quot; IS NULL AND :original_URUNKAYITTARIHI IS NULL))">
               <DeleteParameters>
                   <asp:Parameter Name="original_URUNID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNAD" Type="String" />
                   <asp:Parameter Name="original_URUNTURU" Type="String" />
                   <asp:Parameter Name="original_URUNMARKA" Type="String" />
                   <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                   <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                   <asp:Parameter Name="original_URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNKAYITTARIHI" Type="DateTime" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="URUNID" Type="Decimal" />
                   <asp:Parameter Name="URUNAD" Type="String" />
                   <asp:Parameter Name="URUNTURU" Type="String" />
                   <asp:Parameter Name="URUNMARKA" Type="String" />
                   <asp:Parameter Name="URUNSORUNU" Type="String" />
                   <asp:Parameter Name="URUNDURUMU" Type="String" />
                   <asp:Parameter Name="URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="URUNKAYITTARIHI" Type="DateTime" />
               </InsertParameters>
               <SelectParameters>
                   <asp:Parameter DefaultValue="Onay Bekliyor" Name="URUNDURUMU" Type="String" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="URUNAD" Type="String" />
                   <asp:Parameter Name="URUNTURU" Type="String" />
                   <asp:Parameter Name="URUNMARKA" Type="String" />
                   <asp:Parameter Name="URUNSORUNU" Type="String" />
                   <asp:Parameter Name="URUNDURUMU" Type="String" />
                   <asp:Parameter Name="URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="URUNKAYITTARIHI" Type="DateTime" />
                   <asp:Parameter Name="original_URUNID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNAD" Type="String" />
                   <asp:Parameter Name="original_URUNTURU" Type="String" />
                   <asp:Parameter Name="original_URUNMARKA" Type="String" />
                   <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                   <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                   <asp:Parameter Name="original_URUNHIZMETID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNMUSTERIID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                   <asp:Parameter Name="original_URUNKAYITTARIHI" Type="DateTime" />
               </UpdateParameters>
           </asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
           <br />
           <br />
           <br />

        </div>
     
	
	</div>
	


	
	<%--<footer id="gtco-footer" role="contentinfo" class="auto-style1">
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tedarik.aspx.cs" Inherits="TeknikServis.TeknikServis.tedarik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>Teknik Servis Yönetim &mdash; </title>
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

	</head>
	<body>
        
    <form id="form1" runat="server">
   
		
	<div class="gtco-loader">
      
        
      
        </div>
	
	<div id="page">

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-xs-6">
						<div id="gtco-logo"><a href="yonetici.aspx">Teknik Servis Yönetim <em>.</em></a></div>
					</div>
					
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
									<li><a href="CalisanEkle.aspx">Çalışan Bilgileri</a></li>
									<li><a href="tedarik.aspx">Tedarikçi bilgileri</a></li>
									
								</ul>
							</li>
							<li><a href="Rapor.aspx">Rapor</a></li>
                                <li class="has-dropdown">
								<a>Ekle</a>
								<ul class="dropdown">
									<li><a href="StokEkle.aspx">Stok Ekle</a></li>
									<li><a href="CalisanEkle.aspx">Personel Ekle</a></li>
                                    <li><a href="HizmetEkle.aspx">Hizmet Ekle</a></li>
								</ul>
							</li>
							
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
	</div>
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 100%; height: 125px;" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row row-mt-15em">
				
			</div>
		</div>
	</header>
        <div class="flex-section gtco-gray-bg" style="width: 138%">
	   <div>
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEDARIKCIID" DataSourceID="SqlDataSource1" Width="808px">
            <Columns>
                <asp:BoundField DataField="TEDARIKCIID" HeaderText="TEDARIKCIID" ReadOnly="True" SortExpression="TEDARIKCIID" />
                <asp:BoundField DataField="TEDARIKCIFIRMAADI" HeaderText="TEDARIKCIFIRMAADI" SortExpression="TEDARIKCIFIRMAADI" />
                <asp:BoundField DataField="TEDARIKCISORUMLUADI" HeaderText="TEDARIKCISORUMLUADI" SortExpression="TEDARIKCISORUMLUADI" />
                <asp:BoundField DataField="TEDARIKCISORUMLUSOYADI" HeaderText="TEDARIKCISORUMLUSOYADI" SortExpression="TEDARIKCISORUMLUSOYADI" />
                <asp:BoundField DataField="TEDARIKCITELEFON" HeaderText="TEDARIKCITELEFON" SortExpression="TEDARIKCITELEFON" />
                <asp:BoundField DataField="TEDARIKCIMAIL" HeaderText="TEDARIKCIMAIL" SortExpression="TEDARIKCIMAIL" />
                <asp:BoundField DataField="TEDARIKCIADRES" HeaderText="TEDARIKCIADRES" SortExpression="TEDARIKCIADRES" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEDARIKCI&quot; WHERE &quot;TEDARIKCIID&quot; = :original_TEDARIKCIID AND ((&quot;TEDARIKCIFIRMAADI&quot; = :original_TEDARIKCIFIRMAADI) OR (&quot;TEDARIKCIFIRMAADI&quot; IS NULL AND :original_TEDARIKCIFIRMAADI IS NULL)) AND ((&quot;TEDARIKCISORUMLUADI&quot; = :original_TEDARIKCISORUMLUADI) OR (&quot;TEDARIKCISORUMLUADI&quot; IS NULL AND :original_TEDARIKCISORUMLUADI IS NULL)) AND ((&quot;TEDARIKCISORUMLUSOYADI&quot; = :original_TEDARIKCISORUMLUSOYADI) OR (&quot;TEDARIKCISORUMLUSOYADI&quot; IS NULL AND :original_TEDARIKCISORUMLUSOYADI IS NULL)) AND ((&quot;TEDARIKCITELEFON&quot; = :original_TEDARIKCITELEFON) OR (&quot;TEDARIKCITELEFON&quot; IS NULL AND :original_TEDARIKCITELEFON IS NULL)) AND ((&quot;TEDARIKCIMAIL&quot; = :original_TEDARIKCIMAIL) OR (&quot;TEDARIKCIMAIL&quot; IS NULL AND :original_TEDARIKCIMAIL IS NULL)) AND ((&quot;TEDARIKCIADRES&quot; = :original_TEDARIKCIADRES) OR (&quot;TEDARIKCIADRES&quot; IS NULL AND :original_TEDARIKCIADRES IS NULL))" InsertCommand="INSERT INTO &quot;TEDARIKCI&quot; (&quot;TEDARIKCIID&quot;, &quot;TEDARIKCIFIRMAADI&quot;, &quot;TEDARIKCISORUMLUADI&quot;, &quot;TEDARIKCISORUMLUSOYADI&quot;, &quot;TEDARIKCITELEFON&quot;, &quot;TEDARIKCIMAIL&quot;, &quot;TEDARIKCIADRES&quot;) VALUES (:TEDARIKCIID, :TEDARIKCIFIRMAADI, :TEDARIKCISORUMLUADI, :TEDARIKCISORUMLUSOYADI, :TEDARIKCITELEFON, :TEDARIKCIMAIL, :TEDARIKCIADRES)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEDARIKCI&quot;" UpdateCommand="UPDATE &quot;TEDARIKCI&quot; SET &quot;TEDARIKCIFIRMAADI&quot; = :TEDARIKCIFIRMAADI, &quot;TEDARIKCISORUMLUADI&quot; = :TEDARIKCISORUMLUADI, &quot;TEDARIKCISORUMLUSOYADI&quot; = :TEDARIKCISORUMLUSOYADI, &quot;TEDARIKCITELEFON&quot; = :TEDARIKCITELEFON, &quot;TEDARIKCIMAIL&quot; = :TEDARIKCIMAIL, &quot;TEDARIKCIADRES&quot; = :TEDARIKCIADRES WHERE &quot;TEDARIKCIID&quot; = :original_TEDARIKCIID AND ((&quot;TEDARIKCIFIRMAADI&quot; = :original_TEDARIKCIFIRMAADI) OR (&quot;TEDARIKCIFIRMAADI&quot; IS NULL AND :original_TEDARIKCIFIRMAADI IS NULL)) AND ((&quot;TEDARIKCISORUMLUADI&quot; = :original_TEDARIKCISORUMLUADI) OR (&quot;TEDARIKCISORUMLUADI&quot; IS NULL AND :original_TEDARIKCISORUMLUADI IS NULL)) AND ((&quot;TEDARIKCISORUMLUSOYADI&quot; = :original_TEDARIKCISORUMLUSOYADI) OR (&quot;TEDARIKCISORUMLUSOYADI&quot; IS NULL AND :original_TEDARIKCISORUMLUSOYADI IS NULL)) AND ((&quot;TEDARIKCITELEFON&quot; = :original_TEDARIKCITELEFON) OR (&quot;TEDARIKCITELEFON&quot; IS NULL AND :original_TEDARIKCITELEFON IS NULL)) AND ((&quot;TEDARIKCIMAIL&quot; = :original_TEDARIKCIMAIL) OR (&quot;TEDARIKCIMAIL&quot; IS NULL AND :original_TEDARIKCIMAIL IS NULL)) AND ((&quot;TEDARIKCIADRES&quot; = :original_TEDARIKCIADRES) OR (&quot;TEDARIKCIADRES&quot; IS NULL AND :original_TEDARIKCIADRES IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TEDARIKCIID" Type="Decimal" />
                <asp:Parameter Name="original_TEDARIKCIFIRMAADI" Type="String" />
                <asp:Parameter Name="original_TEDARIKCISORUMLUADI" Type="String" />
                <asp:Parameter Name="original_TEDARIKCISORUMLUSOYADI" Type="String" />
                <asp:Parameter Name="original_TEDARIKCITELEFON" Type="Decimal" />
                <asp:Parameter Name="original_TEDARIKCIMAIL" Type="String" />
                <asp:Parameter Name="original_TEDARIKCIADRES" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEDARIKCIID" Type="Decimal" />
                <asp:Parameter Name="TEDARIKCIFIRMAADI" Type="String" />
                <asp:Parameter Name="TEDARIKCISORUMLUADI" Type="String" />
                <asp:Parameter Name="TEDARIKCISORUMLUSOYADI" Type="String" />
                <asp:Parameter Name="TEDARIKCITELEFON" Type="Decimal" />
                <asp:Parameter Name="TEDARIKCIMAIL" Type="String" />
                <asp:Parameter Name="TEDARIKCIADRES" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TEDARIKCIFIRMAADI" Type="String" />
                <asp:Parameter Name="TEDARIKCISORUMLUADI" Type="String" />
                <asp:Parameter Name="TEDARIKCISORUMLUSOYADI" Type="String" />
                <asp:Parameter Name="TEDARIKCITELEFON" Type="Decimal" />
                <asp:Parameter Name="TEDARIKCIMAIL" Type="String" />
                <asp:Parameter Name="TEDARIKCIADRES" Type="String" />
                <asp:Parameter Name="original_TEDARIKCIID" Type="Decimal" />
                <asp:Parameter Name="original_TEDARIKCIFIRMAADI" Type="String" />
                <asp:Parameter Name="original_TEDARIKCISORUMLUADI" Type="String" />
                <asp:Parameter Name="original_TEDARIKCISORUMLUSOYADI" Type="String" />
                <asp:Parameter Name="original_TEDARIKCITELEFON" Type="Decimal" />
                <asp:Parameter Name="original_TEDARIKCIMAIL" Type="String" />
                <asp:Parameter Name="original_TEDARIKCIADRES" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>

	   </div>

        </div>
	
	
	<div class="flex-section gtco-gray-bg">
	   <div>
       <div>
                 <table class="auto-style1" title="Personel Kayıt">
                     <panel>Tedarikçi Kayıt
                        
                    <tr>
                        <td class="auto-style5">FİRMA ADI:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">SORUMLU ADI:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox2" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">SORUMLU SOYADI:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox5" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">TELEFON:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox4" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                     <tr>
                        <td class="auto-style5">MAİL:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox3" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                     <tr>
                        <td class="auto-style5">ADRES:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox6" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    
                         <tr>
                     
                        <td class="auto-style4">
                   <asp:Button ID="Kayitt" runat="server" Text="Kaydet" OnClick="Kaydet_Click" />
                            </td>
                    </tr>
                    </panel>
                </table>
                
                

            
           </div>
     
	
	</div>
	</div>


	
	<footer id="gtco-footer" role="contentinfo">
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
	</footer>
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

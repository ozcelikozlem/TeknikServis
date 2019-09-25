<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalisanEkle.aspx.cs" Inherits="TeknikServis.TeknikServis.CalisanEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
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
   
		
	<div class="auto-style2">
     
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

	
	
	<div class="flex-section gtco-gray-bg">
	   <div>
        <div class="auto-style1">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEKNIKSERVISID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="TEKNIKSERVISID" HeaderText="TEKNIKSERVISID" ReadOnly="True" SortExpression="TEKNIKSERVISID" />
                    <asp:BoundField DataField="TEKNIKSERVISAD" HeaderText="TEKNIKSERVISAD" SortExpression="TEKNIKSERVISAD" />
                    <asp:BoundField DataField="TEKNIKSERVISSOYAD" HeaderText="TEKNIKSERVISSOYAD" SortExpression="TEKNIKSERVISSOYAD" />
                    <asp:BoundField DataField="TEKNIKSERVISADRES" HeaderText="TEKNIKSERVISADRES" SortExpression="TEKNIKSERVISADRES" />
                    <asp:BoundField DataField="TEKNIKSERVISEPOSTA" HeaderText="TEKNIKSERVISEPOSTA" SortExpression="TEKNIKSERVISEPOSTA" />
                    <asp:BoundField DataField="TEKNIKSERVISTELEFON" HeaderText="TEKNIKSERVISTELEFON" SortExpression="TEKNIKSERVISTELEFON" />
                    <asp:BoundField DataField="TEKNIKSERVISUNVAN" HeaderText="TEKNIKSERVISUNVAN" SortExpression="TEKNIKSERVISUNVAN" />
                    <asp:BoundField DataField="TEKNIKSERVISMAAS" HeaderText="TEKNIKSERVISMAAS" SortExpression="TEKNIKSERVISMAAS" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEKNIKSERVIS&quot; WHERE &quot;TEKNIKSERVISID&quot; = :original_TEKNIKSERVISID AND ((&quot;TEKNIKSERVISAD&quot; = :original_TEKNIKSERVISAD) OR (&quot;TEKNIKSERVISAD&quot; IS NULL AND :original_TEKNIKSERVISAD IS NULL)) AND ((&quot;TEKNIKSERVISSOYAD&quot; = :original_TEKNIKSERVISSOYAD) OR (&quot;TEKNIKSERVISSOYAD&quot; IS NULL AND :original_TEKNIKSERVISSOYAD IS NULL)) AND ((&quot;TEKNIKSERVISADRES&quot; = :original_TEKNIKSERVISADRES) OR (&quot;TEKNIKSERVISADRES&quot; IS NULL AND :original_TEKNIKSERVISADRES IS NULL)) AND ((&quot;TEKNIKSERVISEPOSTA&quot; = :original_TEKNIKSERVISEPOSTA) OR (&quot;TEKNIKSERVISEPOSTA&quot; IS NULL AND :original_TEKNIKSERVISEPOSTA IS NULL)) AND ((&quot;TEKNIKSERVISTELEFON&quot; = :original_TEKNIKSERVISTELEFON) OR (&quot;TEKNIKSERVISTELEFON&quot; IS NULL AND :original_TEKNIKSERVISTELEFON IS NULL)) AND ((&quot;TEKNIKSERVISUNVAN&quot; = :original_TEKNIKSERVISUNVAN) OR (&quot;TEKNIKSERVISUNVAN&quot; IS NULL AND :original_TEKNIKSERVISUNVAN IS NULL)) AND ((&quot;TEKNIKSERVISMAAS&quot; = :original_TEKNIKSERVISMAAS) OR (&quot;TEKNIKSERVISMAAS&quot; IS NULL AND :original_TEKNIKSERVISMAAS IS NULL))" InsertCommand="INSERT INTO &quot;TEKNIKSERVIS&quot; (&quot;TEKNIKSERVISID&quot;, &quot;TEKNIKSERVISAD&quot;, &quot;TEKNIKSERVISSOYAD&quot;, &quot;TEKNIKSERVISADRES&quot;, &quot;TEKNIKSERVISEPOSTA&quot;, &quot;TEKNIKSERVISTELEFON&quot;, &quot;TEKNIKSERVISUNVAN&quot;, &quot;TEKNIKSERVISMAAS&quot;) VALUES (:TEKNIKSERVISID, :TEKNIKSERVISAD, :TEKNIKSERVISSOYAD, :TEKNIKSERVISADRES, :TEKNIKSERVISEPOSTA, :TEKNIKSERVISTELEFON, :TEKNIKSERVISUNVAN, :TEKNIKSERVISMAAS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEKNIKSERVIS&quot;" UpdateCommand="UPDATE &quot;TEKNIKSERVIS&quot; SET &quot;TEKNIKSERVISAD&quot; = :TEKNIKSERVISAD, &quot;TEKNIKSERVISSOYAD&quot; = :TEKNIKSERVISSOYAD, &quot;TEKNIKSERVISADRES&quot; = :TEKNIKSERVISADRES, &quot;TEKNIKSERVISEPOSTA&quot; = :TEKNIKSERVISEPOSTA, &quot;TEKNIKSERVISTELEFON&quot; = :TEKNIKSERVISTELEFON, &quot;TEKNIKSERVISUNVAN&quot; = :TEKNIKSERVISUNVAN, &quot;TEKNIKSERVISMAAS&quot; = :TEKNIKSERVISMAAS WHERE &quot;TEKNIKSERVISID&quot; = :original_TEKNIKSERVISID AND ((&quot;TEKNIKSERVISAD&quot; = :original_TEKNIKSERVISAD) OR (&quot;TEKNIKSERVISAD&quot; IS NULL AND :original_TEKNIKSERVISAD IS NULL)) AND ((&quot;TEKNIKSERVISSOYAD&quot; = :original_TEKNIKSERVISSOYAD) OR (&quot;TEKNIKSERVISSOYAD&quot; IS NULL AND :original_TEKNIKSERVISSOYAD IS NULL)) AND ((&quot;TEKNIKSERVISADRES&quot; = :original_TEKNIKSERVISADRES) OR (&quot;TEKNIKSERVISADRES&quot; IS NULL AND :original_TEKNIKSERVISADRES IS NULL)) AND ((&quot;TEKNIKSERVISEPOSTA&quot; = :original_TEKNIKSERVISEPOSTA) OR (&quot;TEKNIKSERVISEPOSTA&quot; IS NULL AND :original_TEKNIKSERVISEPOSTA IS NULL)) AND ((&quot;TEKNIKSERVISTELEFON&quot; = :original_TEKNIKSERVISTELEFON) OR (&quot;TEKNIKSERVISTELEFON&quot; IS NULL AND :original_TEKNIKSERVISTELEFON IS NULL)) AND ((&quot;TEKNIKSERVISUNVAN&quot; = :original_TEKNIKSERVISUNVAN) OR (&quot;TEKNIKSERVISUNVAN&quot; IS NULL AND :original_TEKNIKSERVISUNVAN IS NULL)) AND ((&quot;TEKNIKSERVISMAAS&quot; = :original_TEKNIKSERVISMAAS) OR (&quot;TEKNIKSERVISMAAS&quot; IS NULL AND :original_TEKNIKSERVISMAAS IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TEKNIKSERVISID" Type="Decimal" />
                    <asp:Parameter Name="original_TEKNIKSERVISAD" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISSOYAD" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISADRES" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISEPOSTA" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISTELEFON" Type="Decimal" />
                    <asp:Parameter Name="original_TEKNIKSERVISUNVAN" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISMAAS" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TEKNIKSERVISID" Type="Decimal" />
                    <asp:Parameter Name="TEKNIKSERVISAD" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISSOYAD" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISADRES" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISEPOSTA" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISTELEFON" Type="Decimal" />
                    <asp:Parameter Name="TEKNIKSERVISUNVAN" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISMAAS" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TEKNIKSERVISAD" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISSOYAD" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISADRES" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISEPOSTA" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISTELEFON" Type="Decimal" />
                    <asp:Parameter Name="TEKNIKSERVISUNVAN" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISMAAS" Type="Decimal" />
                    <asp:Parameter Name="original_TEKNIKSERVISID" Type="Decimal" />
                    <asp:Parameter Name="original_TEKNIKSERVISAD" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISSOYAD" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISADRES" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISEPOSTA" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISTELEFON" Type="Decimal" />
                    <asp:Parameter Name="original_TEKNIKSERVISUNVAN" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISMAAS" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
     <div class="flex-section gtco-gray-bg">
	   <div>
        <div>
             <div>
                 <table class="auto-style1" title="Personel Kayıt">
                     <panel>Personel kayit
                          <tr>
                        <td class="auto-style5">ID:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox8" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">AD:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">SOYAD:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox2" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">ADRES:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox5" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">EPOSTA:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox4" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                     <tr>
                        <td class="auto-style5">TELEFON:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox3" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                     <tr>
                        <td class="auto-style5">UNVAN:</td>
                        <td class="auto-style4">
                     <asp:TextBox ID="TextBox6" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                     <tr>
                        <td class="auto-style5">MAAŞ:</td>
                        <td class="auto-style4">
                    <asp:TextBox ID="TextBox7" runat="server" Height="24px"></asp:TextBox>
                            </td>
                    </tr>
                         <tr>
                     
                        <td class="auto-style4">
                   <asp:Button ID="Kayit" runat="server" Text="Kaydet" OnClick="Kaydet_Click" />
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


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mail.aspx.cs" Inherits="TeknikServis.TeknikServis.Personel.Mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Honest &mdash; Free Website Template, Free HTML5 Template by GetTemplates.co</title>
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

	<style type="text/css">
        .auto-style1 {
            width: 463px;
        }
        .auto-style2 {
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            color: #003366;
        }
        .auto-style4 {
            width: 463px;
            color: #003366;
        }
        .auto-style5 {
            width: 100%;
            height: 158px;
        }
        .auto-style6 {
            color: #003366;
            margin-left: 30;
        }
        .auto-style7 {
            max-width: 1100px;
            position: relative;
            margin: 0 auto;
            padding-left: 15px;
            padding-right: 15px;
            left: 1px;
            top: 0px;
        }
    </style>

	</head>
<body>
    	<form runat ="server">

	<div id="page" class="auto-style2">

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
                <div id="gtco-logo" class="text-right"><span class="auto-style3"><a href="PersonelGiris.aspx">Teknik Servis </a></span><a href="PersonelGiris.aspx"> <em class="auto-style3">.&nbsp;</em></a> <a href="PersonelGiris.aspx" class="auto-style3"><em>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/TeknikServis/images/Login_out.png" OnClick="ImageButton2_Click" Width="33px" Height="36px" />
				<div class="row">
					
                    </em></a>
					
				    </div>
					<span class="auto-style3"></span>
					
				</div>
			</div>	
		</div>
			<nav class="gtco-nav sticky-banner" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-xs-12 text-center menu-1">
						<ul>

							<li class="active"><a href="PersonelGiris.aspx" class="auto-style3">Anasayfa</a></li>
                            <li class="active"><a href="StokBilgi.aspx" class="auto-style3">Stok Kontrolü</a></li>
							<li class="has-dropdown">
								<a href="TalepBilgi.aspx" class="auto-style3">Talep Onay</a><span class="auto-style3"> </span>
							</li>
                            <li class="has-dropdown">
								<a class="auto-style3">İşlemler</a>
								<ul class="dropdown">
									<li><a href="Mail.aspx" class="auto-style3">Mail İşlemleri</a></li>
									<li><a href="Fatura.aspx" class="auto-style3">Fatura İşlemleri</a></li>
								</ul>
							</li>
							<li><a href="MusteriKayit.aspx" class="auto-style3">Müşteri kayıt</a></li>
                                
							
							
						</ul>
					</div>
				</div>
				
			</div>
		</nav>
	</div>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 98%; height: 182px;" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="auto-style7">
			<div class="row row-mt-15em">
			</div>
		</div>
	</header>

	<div class="flex-section gtco-gray-bg">
	   <div>
        <div>
            <div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="MAILID" DataSourceID="SqlDataSource2" Height="16px" Width="16px" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="MAILID" HeaderText="MAILID" ReadOnly="True" SortExpression="MAILID" />
                        <asp:BoundField DataField="MAILAD" HeaderText="MAILAD" SortExpression="MAILAD" />
                        <asp:BoundField DataField="MAILMESAJ" HeaderText="MAILMESAJ" SortExpression="MAILMESAJ" />
                        <asp:BoundField DataField="MAILEPOSTA" HeaderText="MAILEPOSTA" SortExpression="MAILEPOSTA" />
                        <asp:BoundField DataField="MAILGONDEREN" HeaderText="MAILGONDEREN" SortExpression="MAILGONDEREN" />
                        <asp:BoundField DataField="MAILALICI" HeaderText="MAILALICI" SortExpression="MAILALICI" />
                        <asp:BoundField DataField="MAILMUSTERIID" HeaderText="MAILMUSTERIID" SortExpression="MAILMUSTERIID" />
                        <asp:BoundField DataField="MAILTEKNIKSERVISID" HeaderText="MAILTEKNIKSERVISID" SortExpression="MAILTEKNIKSERVISID" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MAIL&quot; WHERE &quot;MAILID&quot; = :original_MAILID AND ((&quot;MAILAD&quot; = :original_MAILAD) OR (&quot;MAILAD&quot; IS NULL AND :original_MAILAD IS NULL)) AND ((&quot;MAILMESAJ&quot; = :original_MAILMESAJ) OR (&quot;MAILMESAJ&quot; IS NULL AND :original_MAILMESAJ IS NULL)) AND ((&quot;MAILEPOSTA&quot; = :original_MAILEPOSTA) OR (&quot;MAILEPOSTA&quot; IS NULL AND :original_MAILEPOSTA IS NULL)) AND ((&quot;MAILGONDEREN&quot; = :original_MAILGONDEREN) OR (&quot;MAILGONDEREN&quot; IS NULL AND :original_MAILGONDEREN IS NULL)) AND ((&quot;MAILALICI&quot; = :original_MAILALICI) OR (&quot;MAILALICI&quot; IS NULL AND :original_MAILALICI IS NULL)) AND ((&quot;MAILMUSTERIID&quot; = :original_MAILMUSTERIID) OR (&quot;MAILMUSTERIID&quot; IS NULL AND :original_MAILMUSTERIID IS NULL)) AND ((&quot;MAILTEKNIKSERVISID&quot; = :original_MAILTEKNIKSERVISID) OR (&quot;MAILTEKNIKSERVISID&quot; IS NULL AND :original_MAILTEKNIKSERVISID IS NULL))" InsertCommand="INSERT INTO &quot;MAIL&quot; (&quot;MAILID&quot;, &quot;MAILAD&quot;, &quot;MAILMESAJ&quot;, &quot;MAILEPOSTA&quot;, &quot;MAILGONDEREN&quot;, &quot;MAILALICI&quot;, &quot;MAILMUSTERIID&quot;, &quot;MAILTEKNIKSERVISID&quot;) VALUES (:MAILID, :MAILAD, :MAILMESAJ, :MAILEPOSTA, :MAILGONDEREN, :MAILALICI, :MAILMUSTERIID, :MAILTEKNIKSERVISID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MAIL&quot; WHERE (&quot;MAILGONDEREN&quot; = :MAILGONDEREN)" UpdateCommand="UPDATE &quot;MAIL&quot; SET &quot;MAILAD&quot; = :MAILAD, &quot;MAILMESAJ&quot; = :MAILMESAJ, &quot;MAILEPOSTA&quot; = :MAILEPOSTA, &quot;MAILGONDEREN&quot; = :MAILGONDEREN, &quot;MAILALICI&quot; = :MAILALICI, &quot;MAILMUSTERIID&quot; = :MAILMUSTERIID, &quot;MAILTEKNIKSERVISID&quot; = :MAILTEKNIKSERVISID WHERE &quot;MAILID&quot; = :original_MAILID AND ((&quot;MAILAD&quot; = :original_MAILAD) OR (&quot;MAILAD&quot; IS NULL AND :original_MAILAD IS NULL)) AND ((&quot;MAILMESAJ&quot; = :original_MAILMESAJ) OR (&quot;MAILMESAJ&quot; IS NULL AND :original_MAILMESAJ IS NULL)) AND ((&quot;MAILEPOSTA&quot; = :original_MAILEPOSTA) OR (&quot;MAILEPOSTA&quot; IS NULL AND :original_MAILEPOSTA IS NULL)) AND ((&quot;MAILGONDEREN&quot; = :original_MAILGONDEREN) OR (&quot;MAILGONDEREN&quot; IS NULL AND :original_MAILGONDEREN IS NULL)) AND ((&quot;MAILALICI&quot; = :original_MAILALICI) OR (&quot;MAILALICI&quot; IS NULL AND :original_MAILALICI IS NULL)) AND ((&quot;MAILMUSTERIID&quot; = :original_MAILMUSTERIID) OR (&quot;MAILMUSTERIID&quot; IS NULL AND :original_MAILMUSTERIID IS NULL)) AND ((&quot;MAILTEKNIKSERVISID&quot; = :original_MAILTEKNIKSERVISID) OR (&quot;MAILTEKNIKSERVISID&quot; IS NULL AND :original_MAILTEKNIKSERVISID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MAILID" Type="Decimal" />
                        <asp:Parameter Name="original_MAILAD" Type="String" />
                        <asp:Parameter Name="original_MAILMESAJ" Type="String" />
                        <asp:Parameter Name="original_MAILEPOSTA" Type="String" />
                        <asp:Parameter Name="original_MAILGONDEREN" Type="String" />
                        <asp:Parameter Name="original_MAILALICI" Type="String" />
                        <asp:Parameter Name="original_MAILMUSTERIID" Type="Decimal" />
                        <asp:Parameter Name="original_MAILTEKNIKSERVISID" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MAILID" Type="Decimal" />
                        <asp:Parameter Name="MAILAD" Type="String" />
                        <asp:Parameter Name="MAILMESAJ" Type="String" />
                        <asp:Parameter Name="MAILEPOSTA" Type="String" />
                        <asp:Parameter Name="MAILGONDEREN" Type="String" />
                        <asp:Parameter Name="MAILALICI" Type="String" />
                        <asp:Parameter Name="MAILMUSTERIID" Type="Decimal" />
                        <asp:Parameter Name="MAILTEKNIKSERVISID" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Ziyaretci" Name="MAILGONDEREN" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MAILAD" Type="String" />
                        <asp:Parameter Name="MAILMESAJ" Type="String" />
                        <asp:Parameter Name="MAILEPOSTA" Type="String" />
                        <asp:Parameter Name="MAILGONDEREN" Type="String" />
                        <asp:Parameter Name="MAILALICI" Type="String" />
                        <asp:Parameter Name="MAILMUSTERIID" Type="Decimal" />
                        <asp:Parameter Name="MAILTEKNIKSERVISID" Type="Decimal" />
                        <asp:Parameter Name="original_MAILID" Type="Decimal" />
                        <asp:Parameter Name="original_MAILAD" Type="String" />
                        <asp:Parameter Name="original_MAILMESAJ" Type="String" />
                        <asp:Parameter Name="original_MAILEPOSTA" Type="String" />
                        <asp:Parameter Name="original_MAILGONDEREN" Type="String" />
                        <asp:Parameter Name="original_MAILALICI" Type="String" />
                        <asp:Parameter Name="original_MAILMUSTERIID" Type="Decimal" />
                        <asp:Parameter Name="original_MAILTEKNIKSERVISID" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MAIL&quot; WHERE &quot;MAILID&quot; = :original_MAILID AND ((&quot;MAILAD&quot; = :original_MAILAD) OR (&quot;MAILAD&quot; IS NULL AND :original_MAILAD IS NULL)) AND ((&quot;MAILMESAJ&quot; = :original_MAILMESAJ) OR (&quot;MAILMESAJ&quot; IS NULL AND :original_MAILMESAJ IS NULL)) AND ((&quot;MAILEPOSTA&quot; = :original_MAILEPOSTA) OR (&quot;MAILEPOSTA&quot; IS NULL AND :original_MAILEPOSTA IS NULL)) AND ((&quot;MAILGONDEREN&quot; = :original_MAILGONDEREN) OR (&quot;MAILGONDEREN&quot; IS NULL AND :original_MAILGONDEREN IS NULL)) AND ((&quot;MAILALICI&quot; = :original_MAILALICI) OR (&quot;MAILALICI&quot; IS NULL AND :original_MAILALICI IS NULL)) AND ((&quot;MAILMUSTERIID&quot; = :original_MAILMUSTERIID) OR (&quot;MAILMUSTERIID&quot; IS NULL AND :original_MAILMUSTERIID IS NULL)) AND ((&quot;MAILTEKNIKSERVISID&quot; = :original_MAILTEKNIKSERVISID) OR (&quot;MAILTEKNIKSERVISID&quot; IS NULL AND :original_MAILTEKNIKSERVISID IS NULL))" InsertCommand="INSERT INTO &quot;MAIL&quot; (&quot;MAILID&quot;, &quot;MAILAD&quot;, &quot;MAILMESAJ&quot;, &quot;MAILEPOSTA&quot;, &quot;MAILGONDEREN&quot;, &quot;MAILALICI&quot;, &quot;MAILMUSTERIID&quot;, &quot;MAILTEKNIKSERVISID&quot;) VALUES (:MAILID, :MAILAD, :MAILMESAJ, :MAILEPOSTA, :MAILGONDEREN, :MAILALICI, :MAILMUSTERIID, :MAILTEKNIKSERVISID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MAIL&quot;" UpdateCommand="UPDATE &quot;MAIL&quot; SET &quot;MAILAD&quot; = :MAILAD, &quot;MAILMESAJ&quot; = :MAILMESAJ, &quot;MAILEPOSTA&quot; = :MAILEPOSTA, &quot;MAILGONDEREN&quot; = :MAILGONDEREN, &quot;MAILALICI&quot; = :MAILALICI, &quot;MAILMUSTERIID&quot; = :MAILMUSTERIID, &quot;MAILTEKNIKSERVISID&quot; = :MAILTEKNIKSERVISID WHERE &quot;MAILID&quot; = :original_MAILID AND ((&quot;MAILAD&quot; = :original_MAILAD) OR (&quot;MAILAD&quot; IS NULL AND :original_MAILAD IS NULL)) AND ((&quot;MAILMESAJ&quot; = :original_MAILMESAJ) OR (&quot;MAILMESAJ&quot; IS NULL AND :original_MAILMESAJ IS NULL)) AND ((&quot;MAILEPOSTA&quot; = :original_MAILEPOSTA) OR (&quot;MAILEPOSTA&quot; IS NULL AND :original_MAILEPOSTA IS NULL)) AND ((&quot;MAILGONDEREN&quot; = :original_MAILGONDEREN) OR (&quot;MAILGONDEREN&quot; IS NULL AND :original_MAILGONDEREN IS NULL)) AND ((&quot;MAILALICI&quot; = :original_MAILALICI) OR (&quot;MAILALICI&quot; IS NULL AND :original_MAILALICI IS NULL)) AND ((&quot;MAILMUSTERIID&quot; = :original_MAILMUSTERIID) OR (&quot;MAILMUSTERIID&quot; IS NULL AND :original_MAILMUSTERIID IS NULL)) AND ((&quot;MAILTEKNIKSERVISID&quot; = :original_MAILTEKNIKSERVISID) OR (&quot;MAILTEKNIKSERVISID&quot; IS NULL AND :original_MAILTEKNIKSERVISID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MAILID" Type="Decimal" />
                    <asp:Parameter Name="original_MAILAD" Type="String" />
                    <asp:Parameter Name="original_MAILMESAJ" Type="String" />
                    <asp:Parameter Name="original_MAILEPOSTA" Type="String" />
                    <asp:Parameter Name="original_MAILGONDEREN" Type="String" />
                    <asp:Parameter Name="original_MAILALICI" Type="String" />
                    <asp:Parameter Name="original_MAILMUSTERIID" Type="Decimal" />
                    <asp:Parameter Name="original_MAILTEKNIKSERVISID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MAILID" Type="Decimal" />
                    <asp:Parameter Name="MAILAD" Type="String" />
                    <asp:Parameter Name="MAILMESAJ" Type="String" />
                    <asp:Parameter Name="MAILEPOSTA" Type="String" />
                    <asp:Parameter Name="MAILGONDEREN" Type="String" />
                    <asp:Parameter Name="MAILALICI" Type="String" />
                    <asp:Parameter Name="MAILMUSTERIID" Type="Decimal" />
                    <asp:Parameter Name="MAILTEKNIKSERVISID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MAILAD" Type="String" />
                    <asp:Parameter Name="MAILMESAJ" Type="String" />
                    <asp:Parameter Name="MAILEPOSTA" Type="String" />
                    <asp:Parameter Name="MAILGONDEREN" Type="String" />
                    <asp:Parameter Name="MAILALICI" Type="String" />
                    <asp:Parameter Name="MAILMUSTERIID" Type="Decimal" />
                    <asp:Parameter Name="MAILTEKNIKSERVISID" Type="Decimal" />
                    <asp:Parameter Name="original_MAILID" Type="Decimal" />
                    <asp:Parameter Name="original_MAILAD" Type="String" />
                    <asp:Parameter Name="original_MAILMESAJ" Type="String" />
                    <asp:Parameter Name="original_MAILEPOSTA" Type="String" />
                    <asp:Parameter Name="original_MAILGONDEREN" Type="String" />
                    <asp:Parameter Name="original_MAILALICI" Type="String" />
                    <asp:Parameter Name="original_MAILMUSTERIID" Type="Decimal" />
                    <asp:Parameter Name="original_MAILTEKNIKSERVISID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br class="auto-style3" />
            <table class="auto-style5">
                <tr class="auto-style3">
                    <td class="auto-style1">Gönderilecek Ad/Mail</td>
                    <td>Gönderilecek Mesaj</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="158px"></asp:TextBox>
&nbsp;/
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Height="29px" TextMode="Email" Width="263px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6" Height="74px" TextMode="MultiLine" Width="490px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="text-left">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" style="width: 78px" Text="Gönder" />
                    </td>
                </tr>
            </table>
            <span class="auto-style3">
            <br />
            <br />
            <br />
            </span>
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

	<%--<div class="gototop js-top">
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

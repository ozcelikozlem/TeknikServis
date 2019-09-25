<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fatura.aspx.cs" Inherits="TeknikServis.TeknikServis.Personel.Fatura" %>

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
            width: 391px;
        }
        .auto-style2 {
            margin-left: -15px;
            margin-right: -15px;
            text-align: right;
        }
    </style>

	</head>
<body>
    	<form runat ="server">
			

	<div id="page">

	
	<div class="page-inner">

	<div id="head-top" style="position: absolute; width: 100%; top: 0; ">
		<div class="gtco-top">
			<div class="container-fluid">
				<div class="auto-style2">
						<div id="gtco-logo"><a href="PersonelGiris.aspx">Teknik Servis 
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" ImageUrl="~/TeknikServis/images/Login_out.png" OnClick="ImageButton1_Click" Width="29px" />
                            <em>.</em></a></div>
					<div class="col-md-6 col-xs-6">
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url('images/img_bg_4.jpg'); left: 0px; top: 0; width: 98%; height: 182px;" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row row-mt-15em">
			</div>
		</div>
	</header>

	<div class="flex-section gtco-gray-bg">
	   <div>
        <div>
  
            <br />
            <table class="nav-justified">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FATURAID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FATURAID" HeaderText="FATURAID" ReadOnly="True" SortExpression="FATURAID" />
                    <asp:BoundField DataField="FATURATARIHI" HeaderText="FATURATARIHI" SortExpression="FATURATARIHI" />
                    <asp:BoundField DataField="TESLIMTARIHI" HeaderText="TESLIMTARIHI" SortExpression="TESLIMTARIHI" />
                    <asp:BoundField DataField="FATURATUTAR" HeaderText="FATURATUTAR" SortExpression="FATURATUTAR" />
                    <asp:BoundField DataField="TESLIMBILGISI" HeaderText="TESLIMBILGISI" SortExpression="TESLIMBILGISI" />
                    <asp:BoundField DataField="TEKNIKSERVISFID" HeaderText="TEKNIKSERVISFID" SortExpression="TEKNIKSERVISFID" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;FATURABILGILERI&quot; WHERE &quot;FATURAID&quot; = :original_FATURAID AND ((&quot;FATURATARIHI&quot; = :original_FATURATARIHI) OR (&quot;FATURATARIHI&quot; IS NULL AND :original_FATURATARIHI IS NULL)) AND ((&quot;TESLIMTARIHI&quot; = :original_TESLIMTARIHI) OR (&quot;TESLIMTARIHI&quot; IS NULL AND :original_TESLIMTARIHI IS NULL)) AND ((&quot;FATURATUTAR&quot; = :original_FATURATUTAR) OR (&quot;FATURATUTAR&quot; IS NULL AND :original_FATURATUTAR IS NULL)) AND ((&quot;TESLIMBILGISI&quot; = :original_TESLIMBILGISI) OR (&quot;TESLIMBILGISI&quot; IS NULL AND :original_TESLIMBILGISI IS NULL)) AND ((&quot;TEKNIKSERVISFID&quot; = :original_TEKNIKSERVISFID) OR (&quot;TEKNIKSERVISFID&quot; IS NULL AND :original_TEKNIKSERVISFID IS NULL))" InsertCommand="INSERT INTO &quot;FATURABILGILERI&quot; (&quot;FATURAID&quot;, &quot;FATURATARIHI&quot;, &quot;TESLIMTARIHI&quot;, &quot;FATURATUTAR&quot;, &quot;TESLIMBILGISI&quot;, &quot;TEKNIKSERVISFID&quot;) VALUES (:FATURAID, :FATURATARIHI, :TESLIMTARIHI, :FATURATUTAR, :TESLIMBILGISI, :TEKNIKSERVISFID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;FATURABILGILERI&quot;" UpdateCommand="UPDATE &quot;FATURABILGILERI&quot; SET &quot;FATURATARIHI&quot; = :FATURATARIHI, &quot;TESLIMTARIHI&quot; = :TESLIMTARIHI, &quot;FATURATUTAR&quot; = :FATURATUTAR, &quot;TESLIMBILGISI&quot; = :TESLIMBILGISI, &quot;TEKNIKSERVISFID&quot; = :TEKNIKSERVISFID WHERE &quot;FATURAID&quot; = :original_FATURAID AND ((&quot;FATURATARIHI&quot; = :original_FATURATARIHI) OR (&quot;FATURATARIHI&quot; IS NULL AND :original_FATURATARIHI IS NULL)) AND ((&quot;TESLIMTARIHI&quot; = :original_TESLIMTARIHI) OR (&quot;TESLIMTARIHI&quot; IS NULL AND :original_TESLIMTARIHI IS NULL)) AND ((&quot;FATURATUTAR&quot; = :original_FATURATUTAR) OR (&quot;FATURATUTAR&quot; IS NULL AND :original_FATURATUTAR IS NULL)) AND ((&quot;TESLIMBILGISI&quot; = :original_TESLIMBILGISI) OR (&quot;TESLIMBILGISI&quot; IS NULL AND :original_TESLIMBILGISI IS NULL)) AND ((&quot;TEKNIKSERVISFID&quot; = :original_TEKNIKSERVISFID) OR (&quot;TEKNIKSERVISFID&quot; IS NULL AND :original_TEKNIKSERVISFID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_FATURAID" Type="Decimal" />
                    <asp:Parameter Name="original_FATURATARIHI" Type="DateTime" />
                    <asp:Parameter Name="original_TESLIMTARIHI" Type="DateTime" />
                    <asp:Parameter Name="original_FATURATUTAR" Type="Decimal" />
                    <asp:Parameter Name="original_TESLIMBILGISI" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISFID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FATURAID" Type="Decimal" />
                    <asp:Parameter Name="FATURATARIHI" Type="DateTime" />
                    <asp:Parameter Name="TESLIMTARIHI" Type="DateTime" />
                    <asp:Parameter Name="FATURATUTAR" Type="Decimal" />
                    <asp:Parameter Name="TESLIMBILGISI" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISFID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FATURATARIHI" Type="DateTime" />
                    <asp:Parameter Name="TESLIMTARIHI" Type="DateTime" />
                    <asp:Parameter Name="FATURATUTAR" Type="Decimal" />
                    <asp:Parameter Name="TESLIMBILGISI" Type="String" />
                    <asp:Parameter Name="TEKNIKSERVISFID" Type="Decimal" />
                    <asp:Parameter Name="original_FATURAID" Type="Decimal" />
                    <asp:Parameter Name="original_FATURATARIHI" Type="DateTime" />
                    <asp:Parameter Name="original_TESLIMTARIHI" Type="DateTime" />
                    <asp:Parameter Name="original_FATURATUTAR" Type="Decimal" />
                    <asp:Parameter Name="original_TESLIMBILGISI" Type="String" />
                    <asp:Parameter Name="original_TEKNIKSERVISFID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
  
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="URUNID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="URUNID" HeaderText="URUNID" ReadOnly="True" SortExpression="URUNID" />
                    <asp:BoundField DataField="URUNAD" HeaderText="URUNAD" SortExpression="URUNAD" />
                    <asp:BoundField DataField="URUNTURU" HeaderText="URUNTURU" SortExpression="URUNTURU" />
                    <asp:BoundField DataField="URUNDURUMU" HeaderText="URUNDURUMU" SortExpression="URUNDURUMU" />
                    <asp:BoundField DataField="URUNSORUNU" HeaderText="URUNSORUNU" SortExpression="URUNSORUNU" />
                    <asp:BoundField DataField="URUNFATURAID" HeaderText="URUNFATURAID" SortExpression="URUNFATURAID" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;URUN&quot; WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNTURU&quot; = :original_URUNTURU) OR (&quot;URUNTURU&quot; IS NULL AND :original_URUNTURU IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL))" InsertCommand="INSERT INTO &quot;URUN&quot; (&quot;URUNID&quot;, &quot;URUNAD&quot;, &quot;URUNTURU&quot;, &quot;URUNDURUMU&quot;, &quot;URUNSORUNU&quot;, &quot;URUNFATURAID&quot;) VALUES (:URUNID, :URUNAD, :URUNTURU, :URUNDURUMU, :URUNSORUNU, :URUNFATURAID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;URUNID&quot;, &quot;URUNAD&quot;, &quot;URUNTURU&quot;, &quot;URUNDURUMU&quot;, &quot;URUNSORUNU&quot;, &quot;URUNFATURAID&quot; FROM &quot;URUN&quot; WHERE (&quot;URUNDURUMU&quot; = :URUNDURUMU)" UpdateCommand="UPDATE &quot;URUN&quot; SET &quot;URUNAD&quot; = :URUNAD, &quot;URUNTURU&quot; = :URUNTURU, &quot;URUNDURUMU&quot; = :URUNDURUMU, &quot;URUNSORUNU&quot; = :URUNSORUNU, &quot;URUNFATURAID&quot; = :URUNFATURAID WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNTURU&quot; = :original_URUNTURU) OR (&quot;URUNTURU&quot; IS NULL AND :original_URUNTURU IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_URUNID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNAD" Type="String" />
                    <asp:Parameter Name="original_URUNTURU" Type="String" />
                    <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                    <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                    <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="URUNID" Type="Decimal" />
                    <asp:Parameter Name="URUNAD" Type="String" />
                    <asp:Parameter Name="URUNTURU" Type="String" />
                    <asp:Parameter Name="URUNDURUMU" Type="String" />
                    <asp:Parameter Name="URUNSORUNU" Type="String" />
                    <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Onay Alındı" Name="URUNDURUMU" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="URUNAD" Type="String" />
                    <asp:Parameter Name="URUNTURU" Type="String" />
                    <asp:Parameter Name="URUNDURUMU" Type="String" />
                    <asp:Parameter Name="URUNSORUNU" Type="String" />
                    <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNAD" Type="String" />
                    <asp:Parameter Name="original_URUNTURU" Type="String" />
                    <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                    <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                    <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;URUN&quot; WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL)) AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNKAYITTARIHI&quot; = :original_URUNKAYITTARIHI) OR (&quot;URUNKAYITTARIHI&quot; IS NULL AND :original_URUNKAYITTARIHI IS NULL))" InsertCommand="INSERT INTO &quot;URUN&quot; (&quot;URUNFATURAID&quot;, &quot;URUNID&quot;, &quot;URUNAD&quot;, &quot;URUNDURUMU&quot;, &quot;URUNSORUNU&quot;, &quot;URUNKAYITTARIHI&quot;) VALUES (:URUNFATURAID, :URUNID, :URUNAD, :URUNDURUMU, :URUNSORUNU, :URUNKAYITTARIHI)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;URUNFATURAID&quot;, &quot;URUNID&quot;, &quot;URUNAD&quot;, &quot;URUNDURUMU&quot;, &quot;URUNSORUNU&quot;, &quot;URUNKAYITTARIHI&quot; FROM &quot;URUN&quot; WHERE (&quot;URUNDURUMU&quot; = :URUNDURUMU)" UpdateCommand="UPDATE &quot;URUN&quot; SET &quot;URUNFATURAID&quot; = :URUNFATURAID, &quot;URUNAD&quot; = :URUNAD, &quot;URUNDURUMU&quot; = :URUNDURUMU, &quot;URUNSORUNU&quot; = :URUNSORUNU, &quot;URUNKAYITTARIHI&quot; = :URUNKAYITTARIHI WHERE &quot;URUNID&quot; = :original_URUNID AND ((&quot;URUNFATURAID&quot; = :original_URUNFATURAID) OR (&quot;URUNFATURAID&quot; IS NULL AND :original_URUNFATURAID IS NULL)) AND ((&quot;URUNAD&quot; = :original_URUNAD) OR (&quot;URUNAD&quot; IS NULL AND :original_URUNAD IS NULL)) AND ((&quot;URUNDURUMU&quot; = :original_URUNDURUMU) OR (&quot;URUNDURUMU&quot; IS NULL AND :original_URUNDURUMU IS NULL)) AND ((&quot;URUNSORUNU&quot; = :original_URUNSORUNU) OR (&quot;URUNSORUNU&quot; IS NULL AND :original_URUNSORUNU IS NULL)) AND ((&quot;URUNKAYITTARIHI&quot; = :original_URUNKAYITTARIHI) OR (&quot;URUNKAYITTARIHI&quot; IS NULL AND :original_URUNKAYITTARIHI IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_URUNID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNAD" Type="String" />
                    <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                    <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                    <asp:Parameter Name="original_URUNKAYITTARIHI" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                    <asp:Parameter Name="URUNID" Type="Decimal" />
                    <asp:Parameter Name="URUNAD" Type="String" />
                    <asp:Parameter Name="URUNDURUMU" Type="String" />
                    <asp:Parameter Name="URUNSORUNU" Type="String" />
                    <asp:Parameter Name="URUNKAYITTARIHI" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="Onay Alındı" Name="URUNDURUMU" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="URUNFATURAID" Type="Decimal" />
                    <asp:Parameter Name="URUNAD" Type="String" />
                    <asp:Parameter Name="URUNDURUMU" Type="String" />
                    <asp:Parameter Name="URUNSORUNU" Type="String" />
                    <asp:Parameter Name="URUNKAYITTARIHI" Type="DateTime" />
                    <asp:Parameter Name="original_URUNID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNFATURAID" Type="Decimal" />
                    <asp:Parameter Name="original_URUNAD" Type="String" />
                    <asp:Parameter Name="original_URUNDURUMU" Type="String" />
                    <asp:Parameter Name="original_URUNSORUNU" Type="String" />
                    <asp:Parameter Name="original_URUNKAYITTARIHI" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <em><strong>ÜrünID :&nbsp; </strong></em>&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1">Fatura Tarihi</td>
                    <td>Teslim Tarihi</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Fatura Tutar</td>
                    <td>Teslim Bilgisi</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Kargo Teslim</asp:ListItem>
                            <asp:ListItem>Elden Teslim</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fatura Kes" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>

        </div>
     
	
	</div>
	</div>


<%--	
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


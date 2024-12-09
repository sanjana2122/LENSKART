<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <div>
    <html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Standout</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Slider
    ================================================== -->
<link href="css/owl.carousel.css" rel="stylesheet" media="screen">
<link href="css/owl.theme.css" rel="stylesheet" media="screen">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
        <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">Lenskart</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<!-- Header -->
<header id="header">
    <div id="footer">
        <div id="footer">
    <div class="overlay">
      <div class="container text-center">
            <div class="row">
              
    </div>
          </div>
        </div>
   </div>
  </div>
</header>
            <body>
<form id="form1" runat="server">
             <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Font-Size="XX-Large" ForeColor="purple"></asp:Label>
         <Center>
        <br /><br /><br /><br /><br /><br />
        <h1><font color="purple">ADMIN LOGIN PAGE</font></h1>
             <br /><br /><br />
        <asp:Label ID="Label1" runat="server"  Text="USERNAME :" ForeColor="Purple" Font-Bold="true"></asp:Label>
             &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" style="border-radius:7px 7px;" BorderColor="purple" BorderStyle="Solid"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="PASSWORD :" ForeColor="Purple" Font-Bold="true"></asp:Label>
             &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="border-radius:7px 7px;" BorderColor="purple" BorderStyle="Solid"></asp:TextBox><br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" BackColor="#e8bcf0" BorderColor="purple" BorderStyle="Solid" style="border-radius:7px 7px;" Font-Size="Large" Width="100px" Font-Bold="true" ForeColor="purple"></asp:Button>
    </Center>

    </div>
        <br /><br /><br /><br /><br /><br />
       <br /><br />
    
    <div id="footer">
  <div class="container text-center">
    <p>Design & Devloped by:Sanjanan Dudhagara</a></p>
  </div>
        </div>
    </div>
   
    </form>
  
</body>
    
</html>

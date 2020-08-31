<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">


  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">
  <style>
body{
padding:0;
margin:0;

}
h2{
color:black;
  font-size: 30px; 
}
input[type=text], input[type=password] {
  width: 50%;
  padding: 5px;
  margin: 5px 0 15px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: white;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.registerbtn {
  background-color: cyan;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
.registbtn {
  background-color:cyan;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 15%;
  opacity: 0.9;
}
.main{
background:url("https://uctangerine.com/wp-content/uploads/2017/10/Online-education.jpg");
background-position:relative;
background-size:cover;
height:170vh;
color:black;
}

a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
  
</head>
<body>
<div class="site-navbar py-2">

      

      <div class="container2">
        <div class="d-flex align-items-center justify-content-between">
          <div class="logo">
            <div class="site-logo">
              <a class="js-logo-clone">edutrain</a>
            </div>
          </div>
          <div class="main-nav d-none d-lg-block">
            <nav class="site-navigation text-right text-md-center" role="navigation">
              <ul class="site-menu js-clone-nav d-none d-lg-block">
                <li class="active"><a href="Homepage.html">Home</a></li>
                <li><a href="careers.html">what's next??</a></li>
                <li class="has-children">
                  <a href="#">our Courses</a>
                  <ul class="dropdown">
                    <li><a href="jee.html">IIT-JEE</a></li>
                    <li><a href="neet.html">NEET</a></li>               
                  </ul>
                </li>
                <li class="has-children">
                <a href="#">partners</a>
                <ul class="dropdown">
                <li><a href="index.html">Bala Org.</a></li>
                <li><a href="Home.html">R.I.D.S</a></li>
                <li><a href="https://www.sonatech.ac.in/">SCT</a></li>
                </ul>
                </li>
                <li><a href="about_us.html">About</a></li>
              </ul>
            </nav>
          </div>
        
        </div>
      </div>
    </div>
    <div class="main">
<pre>
<form action="Stuverify" method="post">
Student ID: <input type="text" name="StuId">
Password:  <input type="password" name="password">
<input type="submit" class="btn btn-primary px-5 py-3" value="sign in">
</form>
</pre>
</div>
<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

            <div class="block-7">
              <h3 class="footer-heading mb-4">About Us</h3>
              <p>We provide Online courses for all school students.<br>
              Guide them to choose their field of interest after 12.</p>
            </div>

          </div>
          <div class="col-lg-3 mx-auto mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">Quick Links</h3>
            <ul class="list-unstyled">
              <li><a href="jee.html">IIT-JEE</a></li>
              <li><a href="neet.html">NEET</a></li>
              <li><a href="index.html">Bala Org.</a></li>
              <li><a href="Home.html">R.I.D.S</a></li>
              <li><a href="https://www.sonatech.ac.in/">SCT</a></li>
            </ul>
          </div>

          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address">2, Central Park, Kilpauk Garden Road, Kilpauk, Chennai-600010</li>
                <li class="phone"><a href="tel://9877463611">+91 987 7463 611</a></li>
                <li class="email">emailaddress@domain.com</li>
              </ul>
            </div>


          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
              Copyright &copy;
              <script>document.write(new Date().getFullYear());</script> | This is a project
              by Naveen K | Themes and Styling Courtesy Colorlib
            </p>
          </div>

        </div>
      </div>
    </footer>
</body>
</html>
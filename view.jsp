<!DOCTYPE html>
<html>
<head>

<title>Student Details</title>
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
.heading {
  background-color: #102029;
  height: 200px;
  width: 100%;
  font-family: "Times New Roman", Times, serif; 
}
.heading a {
  float: left;
  font-size: 16px;
  color: white;
  padding: 10px 16px;
  font-family: inherit;
  text-decoration: none;
  
}
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 100px;
  width: 100%;
  text-align: center;
}
.main{
background:url("images/viewchecklst.png");
background-position:relative;
background-size:cover;
color:black;
font-size:20px;
text-align: center;
color: red;
line-height: 2;
padding-left: 80px;
padding-right: 80px;
}
a:hover {
  color: yellow;
}

h2{
  color:white;
  text-align: center;
  padding-left: 150px;
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
<br> <br>
	<p>Name               : <b>${Name}</b> </p>
    <p>Student ID         : <b>${Id}</b> </p>
    <p>Age                : <b>${Age}</b> </p>
    <p>Gender             : <b>${Gender}</b> </p>
    <p>Course Enrolled    : <b>${Mobile}</b> </p>
    <p>12th Score         : <b>${Score}</b> </p>
    <p>Board of Study     : <b>${Board}</b> </p>
    <p>Mobile Number      : <b>${Mobile}</b></p>
    <p>Residential Address : <b>${Address}</b> </p> 
<br><br> <br> <br>
<hr style="width:75%">
<br> <br>
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
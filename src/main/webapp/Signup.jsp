<%@ page import="java.sql.*" %>
<%@ page  session="true" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- PAGE settings -->
  <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
  <title>Secret Party Reservation</title>
  <meta name="description" content="Free Bootstrap 4 Pingendo Neon template for restaurant and food">
  <meta name="keywords" content="Pingendo restaurant food neon free template bootstrap 4">
  <!-- CSS dependencies -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="neon.css" type="text/css">
  <!-- Script: Make my navbar transparent when the document is scrolled to top -->
  <script src="js/navbar-ontop.js"></script>
  <!-- Script: Animated entrance -->
  <script src="js/animate-in.js"></script>
</head>

<body>
  <!-- Navbar -->
  <!-- Cover -->
  <div class="text-center px-1 py-2">
    <div class="container">
      <div class="row">
      </div>
    </div>
  </div>
  <div class="py-2" style="">
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="">
          <h1 class="">You wanna throw a party or go to a party!&nbsp;<br>Come join us!&nbsp;</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="align-items-center d-flex py-5 cover section-fade-in-out" style="">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 align-self-center text-lg-left text-center offset-md-2" style="">
          <form class="p-4" method="post" action="SERVERSIGNUP">
            <h4 class="mb-4 text-center"><mark class="secondary shadowed bg-success">Sign Up</mark></h4>
            <div class="form-group"> <label>First Name</label>
              <input class="form-control" name="txtfname" placeholder="Type here" required>
              <div class="form-group"><label>Last name</label>
              	<input class="form-control" name="txtlname" placeholder="Type here" required>
                <div class="form-group"><br/><label>Choose Type of User you are:&nbsp;</label>
                <select class="form-control"  name="txttypeuser"  placeholder="Type here" required>
                    <option value="HOST">Host</option>
                    <option value="GUEST">Guest</option>
                  </select></div>
              </div>
            </div>
            <div class="form-group"> <label>Date of Birth</label>
              <input type="date" name="txtbirthday" class="form-control" placeholder="13" required> </div>
            <div class="form-group"> <label>Email</label>
              <input type="email" name="txtemail" class="form-control" placeholder="2" required> </div>
            <div class="form-group"> <label>Password</label>
              <input type="password" name="txtpassword" class="form-control" placeholder="2" required> </div>
            <p><b style="">Address</b></p>
            <div class="form-group"> <label><i>Street</i></label>
              <input type="text" name="txtstreet"  class="form-control form-control-sm m-0 mx-0 ml-0" placeholder="2" required> </div>
            <div class="form-group" style=""> <label><i>City</i></label>
              <input type="text" name="txtcity" class="form-control form-control-sm" placeholder="2" style="" required> </div>
            <div class="form-group" style=""> <label><i>State</i></label>
              <input type="text"  name="txtstate" class="form-control form-control-sm" placeholder="2" style="" required> </div>
            <div class="form-group" style=""> <label><i>Zip</i></label>
              <input type="text"   name="txtzip"  class="form-control form-control-sm" placeholder="2" style="" required> </div>
            <div class="form-group"> <label></label>
            </div>
            <button type="submit" name="btnsingup" class="btn mt-4 btn-block p-2 btn-info shadowed" contenteditable="true">Sign up</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!-- JavaScript dependencies -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous" style=""></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous" style=""></script>
  <!-- Script: Smooth scrolling between anchors in the same page -->
</body>

</html>
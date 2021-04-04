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

<body class="cover">
  <!-- Navbar -->
  <!-- Cover -->
  <div class="text-center px-1 py-2">
    <div class="container">
      <div class="row">
      </div>
    </div>
  </div>
  <div class="py-5" style="">
    <div class="container">
      <div class="row">
        <div class="col-md-12" style="">
          <h1 class="">You wanna throw a party or go to a party!&nbsp;<br>Come join us!&nbsp;</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <form id="c_form-h" class="" method="POST" action="SERVERLOGIN">
            <div class="form-group row"> <label for="inputmailh" class="col-2 col-form-label">E-mail</label>
              <div class="col-10">
                <input type="email" name="email" class="form-control" id="inputmailh" placeholder="mail@example.com"> </div>
            </div>
            <div class="form-group row"> <label for="inputpasswordh" class="col-2 col-form-label">Password</label>
              <div class="col-10">
                <input type="password" name="password" class="form-control" id="inputpasswordh" placeholder="Password"> </div>
            </div>
            <button type="submit" name="signupbtn"  class="btn btn-info">Log In</button>
            <a href="Signup.jsp"  class="btn btn-success">Register here</a>
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

<% 
	HttpSession ses = request.getSession();
	String typeuser = "";
	String email = "";
	System.out.println(request.getAttribute("typeuser"));
	if(request.getAttribute("typeuser")!=null){
		typeuser = (String)request.getAttribute("typeuser");
		email = (String)request.getAttribute("email");
		
		if(typeuser.equals("HOST")){
			session.setAttribute("email", request.getAttribute("email"));
			session.setAttribute("typeuser", typeuser);
			response.sendRedirect("Host.jsp");
		}
		
	}
	if(request.getParameter("close") !=null){
		System.out.println("close");
		session.invalidate();
	}
%>
</html>
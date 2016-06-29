
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>myDrive</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/index.js"></script>

<style>
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}

p {
	font-size: 16px;
}

.error{
	 color: #7B2826;
}



.segoefont{
			font: 70px Segoe UI Light;
			font-weight: bold;
			
}

.toppadding {
	padding-top: 50px;
}

.margin {
	margin-bottom: 45px;
}

.bg-1 {
	background-color: rgb(15, 75, 128); /* Green */
	background-image: url(static/images/main.png);
	background-repeat: no-repeat;
	background-size: 100% auto;
	color: #ffffff;
	background-size: 100% auto;
}

.bg-2 {
	background-color: #363545; /* Dark Blue */
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}

.bg-4 {
	background-color: #363545; /* Black Gray */
	color: #fff;
}

.container {
	
}

.container-fluid {
	padding-top: 100px;
	padding-bottom: 100px;
}

.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}

.navbar-nav  li a:hover {
	color: #1abc9c !important;
}

.signuprow {
	margin-top: 8px;
	margin-bottom: 8px;
}

.navbar-inverse {
	background-color: #363545;
	border-color: #080808;
}

.navbar-inverse .navbar-brand {
	color: #31708f;
}

.navbar-brand {
	float: left;
	height: 50px;
	padding: 15px 15px;
	font-size: 25px;
	line-height: 20px;
}



placeholdererror {
	color: red;
}
</style>
</head>
<body>

	<div class="container">
		<nav class="navbar navbar-inverse navbar-fixed-top">

			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index">My Drive</a>
				</div>


				<div id="navbar" class="navbar-collapse collapse">

					<form method="post" class="navbar-form navbar-right" id="loginForm" role="form"
						action="/login" onSubmit="return validateLoginForm(event);">
						<div class="form-group">

							<input type="email" class="form-control " id="login_email"l
								placeholder="email" name="email">
						</div>
						<div class="form-group">

							<input type="password" class="form-control" id="login_password"
								placeholder="password" name="password">
						</div>

						<button type="submit" class="btn btn-primary">Sign In</button>
					</form>


				</div>





			</div>
		</nav>

	</div>

	<!-- First Container -->
	<div class="container-fluid bg-1 ">



		<div class="col-sm-8">
		<div class="col-sm-6 toppadding"><h6 class="margin segoefont">Do more wherever you go..</h6></div>
		
		
		</div>
		<div class="col-sm-3">
			<form method="post" name="registrationform" id="registrationform" onSubmit="return validateRegistrationForm(event);" action="/register" role="form">
				<div class="col-sm-12 signuprow">
					<h1>Get started now</h1>
				</div>

				<div class="form-group">
					<div class="col-sm-6 signuprow">
						<input type="text" class="form-control input-lg" id="firstname"
							placeholder="First name" name="firstname">
					</div>

					<div class="col-sm-6 signuprow">
						<input type="text" class="form-control input-lg" id="lastname"
							placeholder="Last name" name="lastname">
					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-12 signuprow">
						<input type="text" class="form-control input-lg" id="registeremail"
							placeholder="E-mail" name="registeremail">
					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-12 signuprow">
						<input type="password" class="form-control input-lg" id="registerpassword"
							placeholder="New password" name="registerpassword">
					</div>

				</div>
				<div class="form-group">
					<div class="col-sm-12 signuprow">
						<input type="password" class="form-control input-lg" id="registerconfirmpassword"
							placeholder="Confirm password" name="registerconfirmpassword">
					</div>

				</div>

				<div class="form-group">
					<div class="col-sm-12 signuprow">Birthday</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4 signuprow">
						<select class="form-control input-lg" id ="day" name="day">
							<option value="" selected>Day</option>
							<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
						</select>
					</div>
					<div class="col-sm-4 signuprow">
						<select class="form-control input-lg" id="month" name="month">
							<option value="" selected>Month</option>
							<option value="1">January</option>
					<option value="2">February</option>
					<option value="3">March</option>
					<option value="4">April</option>
					<option value="5">May</option>
					<option value="6">June</option>
					<option value="7">July</option>
					<option value="8">August</option>
					<option value="9">September</option>
					<option value="10">October</option>
					<option value="11">November</option>
					<option value="12">December</option>
						</select>
					</div>
					<div class="col-sm-4 signuprow">
						<select class="form-control input-lg" id="year" name="year">
							<option value="" selected>Year</option>
							<option value="2013">2013</option>
					<option value="2012">2012</option>
					<option value="2011">2011</option>
					<option value="2010">2010</option>
					<option value="2009">2009</option>
					<option value="2008">2008</option>
					<option value="2007">2007</option>
					<option value="2006">2006</option>
					<option value="2005">2005</option>
					<option value="2004">2004</option>
					<option value="2003">2003</option>
					<option value="2002">2002</option>
					<option value="2001">2001</option>
					<option value="2000">2000</option>
					<option value="1999">1999</option>
					<option value="1998">1998</option>
					<option value="1997">1997</option>
					<option value="1996">1996</option>
					<option value="1995">1995</option>
					<option value="1994">1994</option>
					<option value="1994">1994</option>
					<option value="1993">1993</option>
					<option value="1992">1992</option>
					<option value="1991">1991</option>
					<option value="1990">1990</option>
					<option value="1989">1989</option>
					<option value="1988">1988</option>
					<option value="1987">1987</option>
					<option value="1986">1986</option>
					<option value="1985">1985</option>
					<option value="1984">1984</option>
					<option value="1984">1984</option>
					<option value="1983">1983</option>
					<option value="1982">1982</option>
					<option value="1981">1981</option>
					<option value="1980">1980</option>
						</select>
					</div>

				</div>



				<div class="form-group">
					<div class="col-sm-4 signuprow">
						<label class="radio-inline"> <input type="radio"
							name="gender" value="male" checked="checked">Male 
					</div>
					<div class="col-sm-8 signuprow">
						</label> <label class="radio-inline"> <input type="radio"
							name="gender" value="female">Female
						</label>
					</div>


				</div>
				<div class="col-sm-12 signuprow">
					<button type="submit" class="btn btn-primary btn-lg">Sign
						Up</button>
				</div>
				<div class="col-sm-12 signuprow error" id="errordiv">
					${message}
				</div>

			</form>
		</div>
		<div class="col-sm-2"></div>
			

	</div>



	<!-- Second Container -->
	<div class="container-fluid bg-2 text-center">
		<h3 class="margin segoefont">What Am I?</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
			eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
			ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
			aliquip ex ea commodo consequat.</p>
		<a href="#" class="btn btn-default btn-lg"> <span
			class="glyphicon glyphicon-search"></span> Search
		</a>
	</div>

	<!-- Third Container (Grid) -->
	<div class="container-fluid bg-3 text-center">
		
		<div class="row">
			<div class="col-sm-4">
				<h3 class="margin segoefont">Keep your photos safe</h3>
				<p>Back up vacation photos automatically from your phone or
					computer. That way, memories are safe as soon as you make them, and
					you can relive them from any device.</p>
				<img src="static/images/safe.png" class="img-responsive margin"
					style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<h3 class="margin  segoefont">Take your docs anywhere</h3>
				<p>Save files on your computer, then access them on your phone
					from the road. Everything you keep in My Drive is synced
					automatically to all your devices.</p>
				<img src="static/images/anywhere.jpg" class="img-responsive margin"
					style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<h3 class="margin segoefont">Never lose a file again</h3>
				<p>Left your phone on the train? Your photos, docs, and videos
					are safe. Just sign in to My Drive from any device, and your files
					will be there waiting for you.</p>
				<img src="static/images/never.jpg" class="img-responsive margin"
					style="width: 100%" alt="Image">
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="container-fluid bg-4 text-center">
		<p>
			<a href="">www.mydrive.com</a>
		</p>
	</footer>

</body>
</html>
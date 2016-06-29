<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
<title>My Drive</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet" href="static/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript" src="static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/home.js"></script>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
body {
	
}

.row.content {
	height: 1500px;
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.toppadding {
	padding-top: 45px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">My Drive</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">Settings</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
	</nav>

	<div class="container-fluid toppadding navbar-static">
		<div class="row content">
			<div class="col-sm-2 sidenav ">
				<h3>${user}'s Drive</h3>
				<ul class="nav nav-pills nav-stacked ">
					<li id="home" class="active"><a href="javascript:void(0)"><h4>Home</h4></a></li>
					<li id="files"><a href="javascript:void(0)"><h4>Files</h4></a></li>
					<li id="recents"><a href="javascript:void(0)"><h4>Recents</h4></a></li>
					<li id="photos"><a href="javascript:void(0)"><h4>Photos</h4></a></li>
					<li id="shared"><a href="javascript:void(0)"><h4>Shared</h4></a></li>
					<li id="bin"><a href="javascript:void(0)"><h4>Recycle
								bin</h4></a></li>
				</ul>
				<br>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search File..">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>

			<div class="col-sm-10 " id="contentdiv">
				<nav class="navbar navbar-inverse  navbar-static-top">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Basic Topnav</a></li>
						<ul class="nav navbar-nav navbar-right">

							<li><a href="#">Page 1</a></li>
							<li><a href="#">Page 2</a></li>
							<li><a href="#">Page 3</a></li>
						</ul>
					</ul>
				</nav>
				<h4>
					<small>RECENT POSTS</small>
				</h4>
				<hr>

				<h2>I Love Food</h2>
				<h5>
					<span class="glyphicon glyphicon-time"></span> Post by Jane Dane,
					Sep 27, 2015.
				</h5>
				<h5>
					<span class="label label-danger">Food</span> <span
						class="label label-primary">Ipsum</span>
				</h5>
				<br>
				<p>Food is my passion. Lorem ipsum dolor sit amet, consectetur
					adipiscing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum consectetur
					adipiscing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat.</p>
				<br> <br>





				<h4>
					<small>RECENT POSTS</small>
				</h4>
				<hr>
				<h2>Officially Blogging</h2>
				<h5>
					<span class="glyphicon glyphicon-time"></span> Post by John Doe,
					Sep 24, 2015.
				</h5>
				<h5>
					<span class="label label-success">Lorem</span>
				</h5>
				<br>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat
					cupidatat non proident, sunt in culpa qui officia deserunt mollit
					anim id est laborum consectetur adipiscing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
					minim veniam, quis nostrud exercitation ullamco laboris nisi ut
					aliquip ex ea commodo consequat.</p>
				<hr>

				<h4>Leave a Comment:</h4>
				<form role="form">
					<div class="form-group">
						<textarea class="form-control" rows="3" required></textarea>
					</div>
					<button type="submit" class="btn btn-success">Submit</button>
				</form>
				<br> <br>

				<p>
					<span class="badge">2</span> Comments:
				</p>
				<br>

				<div class="row">
					<div class="col-sm-2 text-center">
						<img src="bandmember.jpg" class="img-circle" height="65"
							width="65" alt="Avatar">
					</div>
					<div class="col-sm-10">
						<h4>
							Anja <small>Sep 29, 2015, 9:12 PM</small>
						</h4>
						<p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum
							dolor sit amet, consectetur adipiscing elit, sed do eiusmod
							tempor incididunt ut labore et dolore magna aliqua.</p>
						<br>
					</div>
					<div class="col-sm-2 text-center">
						<img src="bird.jpg" class="img-circle" height="65" width="65"
							alt="Avatar">
					</div>
					<div class="col-sm-10">
						<h4>
							John Row <small>Sep 25, 2015, 8:25 PM</small>
						</h4>
						<p>I am so happy for you man! Finally. I am looking forward to
							read about your trendy life. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
							labore et dolore magna aliqua.</p>
						<br>
						<p>
							<span class="badge">1</span> Comment:
						</p>
						<br>
						<div class="row">
							<div class="col-sm-2 text-center">
								<img src="bird.jpg" class="img-circle" height="65" width="65"
									alt="Avatar">
							</div>
							<div class="col-xs-10">
								<h4>
									Nested Bro <small>Sep 25, 2015, 8:28 PM</small>
								</h4>
								<p>Me too! WOW!</p>
								<br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid">
		<p>Footer Text</p>
	</footer>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="../../assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
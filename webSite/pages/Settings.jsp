<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<% String line = "";%>

<title>Wayne's Crop | Pages | Settings</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet"
	type="text/css" media="all">
</head>
<body id="top">



	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">

		<div class="wrapper row1">
			<header id="header" class="hoc clear">

				<div id="logo" class="fl_left">
					<h1>
						<a href="../index.html">Wayne's Crop</a>
					</h1>
				</div>
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li class="active"><a href="../index.html">Home</a></li>
						<li><a href="About.html">About</a></li>
						<li><a class="drop" href="#!">Pages</a>
							<ul>
    <li><a href="Summary%20Survey.html">Summary Survey</a></li>
    <li><a href="Corn's%20Accurate%20Climate.html">Corn's Accurate Climate</a></li>
    <li><a href="My%20Farm's%20Climate.html">My Farm's Climate</a></li>
    <li><a href="Crop%20Guide.html">Crop Guide</a></li>
    <li><a href="Significance%20&%20Statistics.html">Significance & Statistics</a></li>
    <li><a href="Settings.jsp">Settings</a></li>
							</ul></li>
						<li><a href="Gallery.html">Gallery</a></li>
					</ul>
				</nav>

			</header>
		</div>



		<div class="wrapper row2">
			<div id="breadcrumb" class="hoc clear">

				<ul>
					<li><a href="../index.html">Home</a></li>
					<li><a href="#!">Pages</a></li>
					<li><a href="Settings.jsp">Settings</a></li>
				</ul>

			</div>
		</div>

	</div>
	<!-- End Top Background Image Wrapper -->



	<div class="wrapper row3">
		<main class="hoc container clear"> <!-- main body -->

		<div class="sidebar one_quarter first">

			<h6>Category</h6>
			<nav class="sdb_holder">
				<ul>
					<li><a class="drop" href="#!">Pages</a>
						<ul>
    <li><a href="Summary%20Survey.html">Summary Survey</a></li>
    <li><a href="Corn's%20Accurate%20Climate.html">Corn's Accurate Climate</a></li>
    <li><a href="My%20Farm's%20Climate.html">My Farm's Climate</a></li>
    <li><a href="Crop%20Guide.html">Crop Guide</a></li>
    <li><a href="Significance%20&%20Statistics.html">Significance & Statistics</a></li>
    <li><a href="Settings.jsp">Settings</a></li>
						</ul>
    </li>
					<li><a href="Gallery.html">Gallery</a></li>
				</ul>
			</nav>

		</div>


		<div class="content three_quarter">

			<h1>Settings</h1>
			<img class="imgr borderedbox inspace-5" src="../images/demo/imgr.gif"
				alt="">
				<div id="Power">
				<%try {
					File file = new File("Power.txt");
					FileReader filereader = new FileReader(file);
					BufferedReader bufReader = new BufferedReader(filereader);
	
					while((line = bufReader.readLine()) != null) {
						%><h1><%=line%></h1>
					<%}
	
					bufReader.close();
					} catch(FileNotFoundException e) {
					} catch(IOException e) {
					}
					%>
					</div>
	
			<form action="Control.jsp" method="post">
				  <input type="radio" name="control" value="on" checked>on<br>
  				  <input type="radio" name="control" value="off">off<br>
				<input type="submit" value="Submit">
			</form>
	</div>

		<!-- / main body -->
		<div class="clear"></div>
		</main>
	</div>



	<div class="wrapper row5">
		<div id="copyright" class="hoc clear">

			<p class="fl_left">
				Copyright &copy; 2019 - All Rights Reserved - <a
					href="../index.html">Wayne's Crop</a>
			</p>
			<p class="fl_right">
				Template by <a target="_blank" href="https://www.os-templates.com/"
					title="Free Website Templates">OS Templates</a>
			</p>

		</div>
	</div>



	<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
	<!-- JAVASCRIPTS -->
	<script src="../layout/scripts/jquery.min.js"></script>
	<script src="../layout/scripts/jquery.backtotop.js"></script>
	<script src="../layout/scripts/jquery.mobilemenu.js"></script>
	<script></script>
</body>
</html>
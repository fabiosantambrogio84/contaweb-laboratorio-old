<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>FABIO</title>
	
	<!-- let's add tag spring:url -->
	<spring:url value="/resources/vendor/jquery/jquery.min.js" var="jqueryMinJs" />
	<spring:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" var="bootstrapBundleMinJs" />
	<spring:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" var="bootstrapMinCss" />
	<spring:url value="/resources/css/2-col-portfolio.css" var="twoColPortfolioCss" />
	<spring:url value="/resources/css/style.css" var="styleCss" />
	
	<!-- Finish adding tags -->
	
	<!-- Bootstrap core CSS -->
	<link href="${bootstrapMinCss}" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="${twoColPortfolioCss}" rel="stylesheet">
	<link href="${styleCss}" rel="stylesheet">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<!-- Navigation -->
	<jsp:include page='header.jsp'>
	    <jsp:param name="active" value="laboratorio"/>
	</jsp:include>
	
	<br>
	<div style="text-align: center">
		<h2>
			Hey You..!! This is your 1st Spring MCV Tutorial..<br> <br>
		</h2>
		<h3>
			<a href="welcome.html">Click here to See Welcome Message... </a>(to
			check Spring MVC Controller... @RequestMapping("/welcome"))
		</h3>
	</div>
	
	
	<!-- Bootstrap core JavaScript -->
	<script src="${jqueryMinJs}"></script>
	<script src="${bootstrapBundleMinJs}"></script>
</body>
</html>
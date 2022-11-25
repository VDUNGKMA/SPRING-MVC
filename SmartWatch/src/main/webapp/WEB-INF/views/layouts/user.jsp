<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="shortcut icon"
	href=<c:url value="/assets/user/images/favicon.png"/>
	type="image/x-icon">

<title>Timups</title>
<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css"
	href=<c:url value="/assets/user/css/bootstrap.css"/> />
<!--owl slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

<!-- font awesome style -->
<link href=<c:url value="/assets/user/css/font-awesome.min.css"/>
	rel="stylesheet" />

<!-- Custom styles for this template -->
<link href=<c:url value="/assets/user/css/style.css"/> rel="stylesheet" />
<!-- responsive style -->
<link href=<c:url value="/assets/user/css/responsive.css"/>
	rel="stylesheet" />
</head>

<body>

</div>

	<%@ include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<decorator:body />
	<%@ include file="/WEB-INF/views/layouts/user/footer.jsp"%>


	<!-- jQery -->
	<script src=<c:url value="/assets/user/js/jquery-3.4.1.min.js" /> ></script>
	<!-- popper js -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous">
		
	</script>
	<!-- bootstrap js -->
	<script src=<c:url value="/assets/user/js/bootstrap.js" /> ></script>
	<!-- owl slider -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
		
	</script>
	<!-- custom js -->
	<script src=<c:url value="/assets/user/js/custom.js" /> ></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
	<!-- End Google Map -->

</body>

</html>
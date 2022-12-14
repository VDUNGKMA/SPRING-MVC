<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<body>
<title>Chi tiết sản phẩm</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="shortcut icon"
	href=<c:url value="/assets/user/images/favicon.png"/>
	type="image/x-icon"><meta charset="utf-8">
<!-- Bootstrap styles -->

	<link href=<c:url value="/assets/user/css/cssGrid/bootstrap.css"/> rel="stylesheet" />
	
	
	<!-- Customize styles -->
	<!-- font awesome styles -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
		integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href=<c:url value="/assets/user/css/cssGrid/styleGrid.css"/> rel="stylesheet" />
	
	<!-- Favicons -->
	<link rel="shortcut icon" href=<c:url value="/assets/user/ico/favicon.ico"/>>
<!-- Body Section -->
	<h1>${ Cart.size() }</h1>
			<div class="row">
				<div class="span9" style="width: 60%">
					<ul class="breadcrumb">
						<li><a href="index.html">Home</a> <span class="divider">/</span></li>
						<li><a href="products.html">Items</a> <span class="divider">/</span></li>
						<li class="active">Preview</li>
					</ul>
					<div class="well well-small">
						<div class="row-fluid">
							<div class="span5">
								<div id="myCarousel" class="carousel slide cntr">
									<div class="carousel-inner carousel-innner-slide-product">
										<div class="item active">
											<a href="#"> <img src=<c:url value="/assets/user/images/${ product.img }"/> alt=""
													style="width:60%"></a>
										</div>
										<div class="item">
											<a href="#"> <img src=<c:url value="/assets/user/images/w2.png"/> alt=""
													style="width:60%"></a>
										</div>
										<div class="item">
											<a href="#"> <img src=<c:url value="/assets/user/images/w6.png"/> alt=""
													style="width:60%"></a>
										</div>
									</div>
									<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
									<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
								</div>
							</div>
							<div class="span7">
								<h3>${ product.name }</h3>
								<hr class="soft" />

								<form class="form-horizontal qtyFrm" method="get" action="<c:url value="/AddCart/${ product.id_product }"/>">
									<div class="control-group">
										<label class="control-label"><span> <fmt:formatNumber type="number" groupingUsed="true" value="${ product.price }" />₫</span></label>
										<div class="controls">
											<input type="number" min="0" value="0" class="span6" >
										</div>
									</div>

									<div class="control-group">
										<label class="control-label"><span>Color</span></label>
										<div class="controls">
											<select class="span11">
												<option>Red</option>
												<option>Purple</option>
												<option>Pink</option>
												<option>Red</option>
											</select>
										</div>
									</div>
								
									<h4></h4>
									<p>${ product.title }<p>
										<button type="submit" class="shopBtn" style=""><span class=" icon-shopping-cart"></span>
											Add to cart</button>
								</form>
							</div>
						</div>
						<hr class="softn clr" />


						<ul id="productDetail" class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#home">Product Details</a></li>
							<li class=""><a href="#profile" data-toggle="tab">Related Products </a></li>
							
						</ul>
						<div id="myTabContent" class="tab-content tabWrapper">
							<div class="tab-pane fade active in" id="home">
								${ product.details }
							</div>
							<div class="tab-pane fade" id="profile">
							
							<c:forEach var="item" items="${ productby }" begin="1" end="4">
							
								<div class="row-fluid" style="width: 90%">
									<div class="span2">
										<img src=<c:url value="/assets/user/images/${ item.img }"/> alt="">
									</div>
									<div class="span6">
										<h5>${ item.name }</h5>
										<p>${ item.title }</p>
									</div>
									<div class="span4 alignR">
										<form class="form-horizontal qtyFrm">
											<h3> <fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" />₫</h3>
											<div class="btn-group">
												<a href="product_details.html" class="defaultBtn"><span
														class=" icon-shopping-cart"></span> Add to cart</a>
												<a href="product_details.html" class="shopBtn">VIEW</a>
											</div>
										</form>
									</div>
								</div>
								<hr class="soft">
							
							</c:forEach>
								
								
							</div>
							
							</div>
						</div>

					</div>
				</div>
			</div>

		<!-- 
Clients 
-->


		<!-- /container -->
		
		
		<style>
		
		.carousel-innner-slide-product .item a {
			display : flex;
			justify-content: center;
			align-items: center;
		}
		
		</style>

		<!-- Placed at the end of the document so the pages load faster -->
		<script src=<c:url value="/assets/user/js/js/jsGrid/jquery.js"/>></script>
		<script src=<c:url value="/assets/user/js/js/bootstrap.min.js"/>></script>
		<script src=<c:url value="/assets/user/js/js/jsGrid/jquery.easing-1.3.min.js"/>></script>
		<script src=<c:url value="/assets/user/js/js/jsGrid/jquery.scrollTo-1.4.3.1-min.js"/>></script>
		<script src=<c:url value="/assets/user/js/js/jsGrid/shop.js"/>></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>
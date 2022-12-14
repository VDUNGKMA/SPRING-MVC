<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
	<title>Chi tiết sản phẩm</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="shortcut icon"
		href=<c:url value="/assets/user/images/favicon.png"/>
		type="image/x-icon">
	<meta charset="utf-8">
	<!-- Bootstrap styles -->

	<link href=<c:url value="/assets/user/css/cssGrid/bootstrap.css"/>
		rel="stylesheet" />


	<!-- Customize styles -->
	<!-- font awesome styles -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
		integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href=<c:url value="/assets/user/css/cssGrid/styleGrid.css"/>
		rel="stylesheet" />

	<!-- Favicons -->
	<link rel="shortcut icon"
		href=<c:url value="/assets/user/ico/favicon.ico"/>>



	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>



		<div class="row">
			<div class="span12">
				<ul class="breadcrumb">
					<li><a href="index.html">Home</a> <span class="divider">/</span></li>
					<li class="active">Giỏ Hàng</li>
				</ul>
				<div class="well well-small">
					<h1>
						Check Out <small class="pull-right"> 2 Items are in the
							cart </small>
					</h1>
					<hr class="soften" />

					<table class="table table-bordered table-condensed">
						<thead>
							<tr>
								<th>Hình ảnh</th>
								<th>Mô tả</th>
								<th>Màu sắc</th>
								<th>Giá bán</th>
								<th>Số lượng</th>
								<th>Chỉnh sửa</th>
								<th>Xóa</th>
								<th>Tổng tiền</th>
							</tr>
						</thead>
						<tbody>

								<c:forEach var="item" items="${ Cart }">
									<tr>
										<td><img width="100"
											src=<c:url value="/assets/user/images/${ item.value.product.img }"/> alt=""></td>
										<td>${ item.value.product.title }</td>
										
										<td><span class="shopBtn"
											style="background-color: yellow;"><span
												class="icon-ok"></span></span></td>
										<td><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/> ₫</td>

										<td><input type="number" min="0" max="1000" class="span1"
											style="max-width: 50px" placeholder="1"
											id="appendedInputButtons" size="16" type="text" value="${ item.value.quanty }">
										</td>

										<td><a href="<c:url value="/EditCart/1"/>"
											class="btn btn-mini btn-danger" type="button"> <span
												class="icon-edit"></span>
										</a></td>
										<td><a href="<c:url value="/DeleteCart/${ item.key }"/>"
											class="btn btn-mini btn-danger" type="button"> <span
												class="icon-remove"></span>
										</a></td>
										</td>
										<td><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }"/> ₫</td>
									</tr>

								</c:forEach>
						</tbody>
					</table>
					<br /> <a href="products.html" class="shopBtn btn-large"><span
						class="icon-arrow-left"></span> Tiếp tục mua sắm </a> <a
						href="login.html" class="shopBtn btn-large pull-right">Thanh
						Toán<span class="icon-arrow-right"></span>
					</a>

				</div>
			</div>
		</div>
		<!-- Placed at the end of the document so the pages load faster -->
		<script src=<c:url value="/assets/user/js/js/jsGrid/jquery.js"/>></script>
		<script src=<c:url value="/assets/user/js/js/bootstrap.min.js"/>></script>
		<script
			src=<c:url value="/assets/user/js/js/jsGrid/jquery.easing-1.3.min.js"/>></script>
		<script
			src=<c:url value="/assets/user/js/js/jsGrid/jquery.scrollTo-1.4.3.1-min.js"/>></script>
		<script src=<c:url value="/assets/user/js/js/jsGrid/shop.js"/>></script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
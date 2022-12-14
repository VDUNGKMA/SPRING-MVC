<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<title>Products</title>
<style>
.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<body>
	<section class="shop_section layout_padding">
	<div class="row">
		<c:forEach var="item" items="${ ProductsPaginate }" varStatus="index">
			<div class="col-sm-6 col-xl-3">
				<div class="box" style="position: relativ>
					<a href="">
						<div class="img-box">
						
				<h4><a class="defaultBtn" href=<c:url value="/product_detail/${ item.id_product }"/>> </h4>
				<button type="submit" class="shopBtn"
										style="border: 1px solid #f89406; font-size: 11px; position: absolute; left: 0; bottom: 16px; background-color: #f89406; border-radius: 12px;">
										<span class=" icon-shopping-cart"></span> Add to cart
									</button>
							<img src=<c:url value="/assets/user/images/${ item.img }"/>
								alt="">
						</div>
						<div class="detail-box">
							<h6>${ item.name }</h6>
							<h6>
								Price: <span> <fmt:formatNumber type="number"
										groupingUsed="true" value="${ item.price }" />₫
								</span>
							</h6>
						</div>

					</a>
				</div>
			</div>
		</c:forEach>
	</div>
	</section>
	<div class="center">
 <div class="pagination">
		<c:forEach var="item" begin="1" end="${ PaginateInfo.totalPage }" varStatus="loop">
			<c:if test="${ (loop.index) == PaginateInfo.currenPage }">
				<a href="<c:url value="/products/${ loop.index }"/>" class="active">${ loop.index }</a>
			</c:if>
			<c:if test="${ (loop.index) != PaginateInfo.currenPage }">
				<a href="<c:url value="/products/${ loop.index }"/>">${ loop.index }</a>
			</c:if>
		</c:forEach>
	</div>
</div>
</body>
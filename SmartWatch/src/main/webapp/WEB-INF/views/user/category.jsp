<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<body>
	<section class="shop_section layout_padding">
	<div class="row">
		<c:forEach var="item" items="${ products }" varStatus="index">
			<div class="col-sm-6 col-xl-3">
				<div class="box">
					<a href="">
						<div class="img-box">
						
				<h4><a class="defaultBtn" href="product_details.html"> </h4>
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
</body>

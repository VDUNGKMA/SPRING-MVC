<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="hero_area">
	<div class="hero_social">
		<a href=""> <i class="fa fa-facebook" aria-hidden="true"></i>
		</a> <a href=""> <i class="fa fa-twitter" aria-hidden="true"></i>
		</a> <a href=""> <i class="fa fa-linkedin" aria-hidden="true"></i>
		</a> <a href=""> <i class="fa fa-instagram" aria-hidden="true"></i>
		</a>
	</div>
	<!-- header section strats -->
	<header class="header_section">
		<div class="container-fluid">
			<nav class="navbar navbar-expand-lg custom_nav-container ">
				<a class="navbar-brand" href="index.html"> <span> Timups
				</span>
				</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class=""> </span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="nav navbar-nav">
						<c:forEach var="item" items="${ menus }" varStatus="index">
							<c:if test="${ not index.first }">
								<li class="nav-item" />
							</c:if>
							<c:if test="${ index.first }">
								<li class="nav-item active" />
							</c:if>
							<a class="nav-link active" href="index.html">${ item.name }</a>

						</c:forEach>
					</ul>
					<div class="user_option-box">
						<a href=""> <i class="fa fa-user" aria-hidden="true"></i>
						</a> <a href=""> <i class="fa fa-cart-plus" aria-hidden="true"></i>
						</a> <a href=""> <i class="fa fa-search" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- end header section -->
	<!-- slider section -->
	<section class="slider_section ">
		<div id="customCarousel1" class="carousel slide" data-ride="carousel">

			<div class="carousel-inner">
				<c:forEach var="item" items="${ slides }" varStatus="index">

					<c:if test="${ index.first }">
						<div class="carousel-item active" />
					</c:if>
					<c:if test="${ not index.first }">
						<div class="carousel-item " />
					</c:if>

					<div class="container-fluid ">
						<div class="row">
							<div class="col-md-6">
								<div class="detail-box">
									<h4>${item.caption }</h4>
									<p>${ item.content }</p>
									<div class="btn-box">
										<a href="" class="btn1"> Contact Us </a>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="img-box">
									<img
										src=<c:url value="/assets/user/images/slide/${ item.img }"/>
										alt="">
								</div>
							</div>
						</div>
					</div>
			</div>
			</c:forEach>

		</div>

		<ol class="carousel-indicators">
			<c:forEach var="i" begin="0" end="${ slides.size() }">
				<c:if test="0">
				<li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
				</c:if>
	
				<li data-target="#customCarousel1" data-slide-to="${ i }"></li>
			</c:forEach>
		</ol>
</div>
</section>
<!-- end slide section -->
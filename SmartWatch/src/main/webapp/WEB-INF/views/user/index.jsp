<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
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
			<c:forEach var="i" begin="0" end="${ slides.size()-1 }">
				<c:if test="0">
					<li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
				</c:if>

				<li data-target="#customCarousel1" data-slide-to="${ i }"></li>
			</c:forEach>
		</ol>
		</div>
	</section>
	<!-- end slide section -->
	<!-- shop section -->
	<section class="shop_section layout_padding">
		<div class="container">
			<div class="heading_container heading_center">
				<h2>Latest Watches</h2>
			</div>
			<div class="row">
				<c:forEach var="item" items="${ productsFetured }" varStatus="index">
					<div class="col-sm-6">
						<div class="box">
							<a href="">
								<div class="img-box" style="position: relative">
								<a href="<c:url value="/AddCart/${ item.id_product }"/>" class="defaultBtn" style="border: 1px solid #f89406; font-size: 11px; position: absolute; left: 0; bottom: 16px; background-color: #FF99FF; border-radius: 12px;">
										<span class=" icon-shopping-cart"></span> Add to cart> </a>
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
								<div class="new">
									<span> Featured </span>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>


				<c:forEach var="item" items="${ products }" varStatus="index">
					<div class="col-sm-6 col-xl-3">
						<div class="box">
							<a href="">
								<div class="img-box" style="position: relative">
									<a href="<c:url value="/AddCart/${ item.id_product }"/>" class="defaultBtn" style="border: 1px solid #f89406; font-size: 11px; position: absolute; left: 0; bottom: 16px; background-color: #FF99FF; border-radius: 12px;">
										<span class=" icon-shopping-cart"></span> Add to cart> </a>
									<h4>
									 <img
										src=<c:url value="/assets/user/images/${ item.img }"/> alt="">
									</h4>
								</div>
								<div class="detail-box">
									<h6>${ item.name }</h6>
									<h6>
										Price: <span> <fmt:formatNumber type="number"
												groupingUsed="true" value="${ item.price }" />₫
										</span>
									</h6>
								</div>
								<div class="new">
									<span> New </span>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>






			</div>
			<div class="btn-box">
				<a href=""> View All </a>
			</div>
		</div>

	</section>

	<!-- end shop section -->

	<!-- about section -->

	<section class="about_section layout_padding">
		<div class="container  ">
			<div class="row">
				<div class="col-md-6 col-lg-5 ">
					<div class="img-box">
						<img src=<c:url value="/assets/user/images/about-img.png"/> alt="">
					</div>
				</div>
				<div class="col-md-6 col-lg-7">
					<div class="detail-box">
						<div class="heading_container">
							<h2>About Us</h2>
						</div>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour, or randomised words which don't look
							even slightly believable. If you are going to use a passage of
							Lorem Ipsum, you need to be sure there isn't anything
							embarrassing hidden in the middle of text. All</p>
						<a href=""> Read More </a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- end about section -->

	<!-- feature section -->

	<section class="feature_section layout_padding">
		<div class="container">
			<div class="heading_container">
				<h2>Features Of Our Watches</h2>
				<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt
					ut labore et dolore magna aliqua.</p>
			</div>
			<div class="row">
				<div class="col-sm-6 col-lg-3">
					<div class="box">
						<div class="img-box">
							<img src=<c:url value="/assets/user/images/f1.png"/> alt="">
						</div>
						<div class="detail-box">
							<h5>Fitness Tracking</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</p>
							<a href=""> <span> Read More </span> <i
								class="fa fa-long-arrow-right" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="box">
						<div class="img-box">
							<img src=<c:url value="/assets/user/images/f2.png"/> alt="">
						</div>
						<div class="detail-box">
							<h5>Alerts & Notifications</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</p>
							<a href=""> <span> Read More </span> <i
								class="fa fa-long-arrow-right" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="box">
						<div class="img-box">
							<img src=<c:url value="/assets/user/images/f3.png"/> alt="">
						</div>
						<div class="detail-box">
							<h5>Messages</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</p>
							<a href=""> <span> Read More </span> <i
								class="fa fa-long-arrow-right" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-lg-3">
					<div class="box">
						<div class="img-box">
							<img src=<c:url value="/assets/user/images/f4.png"/> alt="">
						</div>
						<div class="detail-box">
							<h5>Bluetooth</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</p>
							<a href=""> <span> Read More </span> <i
								class="fa fa-long-arrow-right" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="btn-box">
				<a href=""> View More </a>
			</div>
		</div>
	</section>

	<!-- end feature section -->

	<!-- contact section -->

	<section class="contact_section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="form_container">
						<div class="heading_container">
							<h2>Contact Us</h2>
						</div>
						<form action="">
							<div>
								<input type="text" placeholder="Full Name " />
							</div>
							<div>
								<input type="email" placeholder="Email" />
							</div>
							<div>
								<input type="text" placeholder="Phone number" />
							</div>
							<div>
								<input type="text" class="message-box" placeholder="Message" />
							</div>
							<div class="d-flex ">
								<button>SEND</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6">
					<div class="img-box">
						<img src=<c:url value="/assets/user/images/contact-img.jpg"/>
							alt="">
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- end contact section -->



</body>



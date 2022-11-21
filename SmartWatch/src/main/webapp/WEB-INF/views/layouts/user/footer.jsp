<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- client section -->
<section class="client_section layout_padding">
	<div class="container">
		<div class="heading_container heading_center">
			<h2>Testimonial</h2>
		</div>
		<div class="carousel-wrap ">
			<div class="owl-carousel client_owl-carousel">
				<div class="item">
					<div class="box">
						<div class="img-box">
							<img src=<c:url value="/assets/user/images/c1.jpg"/> alt="">
						</div>
						<div class="detail-box">
							<div class="client_info">
								<div class="client_name">
									<h5>Mark Thomas</h5>
									<h6>Customer</h6>
								</div>
								<i class="fa fa-quote-left" aria-hidden="true"></i>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugia</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="box">
						<div class="img-box">
							<img src=<c:url value="/assets/user/images/c2.jpg"/> alt="">
						</div>
						<div class="detail-box">
							<div class="client_info">
								<div class="client_name">
									<h5>Alina Hans</h5>
									<h6>Customer</h6>
								</div>
								<i class="fa fa-quote-left" aria-hidden="true"></i>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
								aute irure dolor in reprehenderit in voluptate velit esse cillum
								dolore eu fugia</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- end client section -->
<!-- footer section -->
<footer class="footer_section">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-3 footer-col">
				<div class="footer_detail">
					<h4>About</h4>
					<p>Necessary, making this the first true generator on the
						Internet. It uses a dictionary of over 200 Latin words, combined
						with</p>
					<div class="footer_social">
						<a href=""> <i class="fa fa-facebook" aria-hidden="true"></i>
						</a> <a href=""> <i class="fa fa-twitter" aria-hidden="true"></i>
						</a> <a href=""> <i class="fa fa-linkedin" aria-hidden="true"></i>
						</a> <a href=""> <i class="fa fa-instagram" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 footer-col">
				<div class="footer_contact">
					<h4>Reach at..</h4>
					<div class="contact_link_box">
						<a href=""> <i class="fa fa-map-marker" aria-hidden="true"></i>
							<span> Location </span>
						</a> <a href=""> <i class="fa fa-phone" aria-hidden="true"></i> <span>
								Call +01 1234567890 </span>
						</a> <a href=""> <i class="fa fa-envelope" aria-hidden="true"></i>
							<span> demo@gmail.com </span>
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 footer-col">
				<div class="footer_contact">
					<h4>Subscribe</h4>
					<form action="#">
						<input type="text" placeholder="Enter email" />
						<button type="submit">Subscribe</button>
					</form>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 footer-col">
				<div class="map_container">
					<div class="map">
						<div id="googleMap"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-info">
			<p>
				&copy; <span id="displayYear"></span> All Rights Reserved By <a
					href="https://html.design/">Free Html Templates</a>
			</p>
		</div>
	</div>
</footer>

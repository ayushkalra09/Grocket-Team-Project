<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Grocket | About </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
</head>
<body>
	<c:choose>
	<c:when test="${not empty email}">
		<jsp:include page="layouts/user-navigation.jsp"></jsp:include>
		<jsp:include page="layouts/user-menu.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="layouts/navigation-bar.jsp"></jsp:include>
		<jsp:include page="layouts/menu.jsp"></jsp:include>
	</c:otherwise>
</c:choose>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l"></div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/home">Home</a>
						<i>|</i>
					</li>
					<li>About Us</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
<!-- about -->
	<div class="welcome py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>A</span>bout
				<span>U</span>s</h3>
			<!-- //tittle heading -->
			<div class="row">
				<div class="col-lg-6 welcome-left">
					<h3>About Store</h3>
					<h4 class="my-sm-3 my-2">Grocket is an online Grocery store offering the best price for consumers for better quality compared to other companies. We have a variety of products consumed by people in everyday life like Fresh and Organic Vegetables and Fruits, Snacks, Dairy Products, and other daily consumables. Consumers will get hassle free shopping experience in our website as products in our website are distinguished on the basis of the categories. This all make shopping in our website very convenient and consumers can easily get there every day consumables at their home with best quality.</h4>
				</div>
				
				<div class="col-lg-6 welcome-right-top mt-lg-0 mt-sm-5 mt-4">
					<img src="${pageContext.request.contextPath}/images/store.png" class="img-fluid" alt=" ">
				</div>
				<div class="welcome-left">
					<br><br><h3 class="text-left" style="color:#F45C5D;">&ensp;Our assurance</h3>
					<h4 class="my-sm-3" style="margin-left:15px;">Grocket promise to provide you with the highest-quality goods at the most affordable prices. For now, we only serve in four cities Mumbai, Delhi, Hyderabad, and Bangalore. We bring your chosen products to your door at the time slot you specify for a more convenient shopping experience. As everyone feels pressed for time in the modern world, it can be challenging to determine whether a product is natural or healthful. In order to address this problem, we provide you with the best and hand-picked products from every category, saving you time from traditional shopping as well as from issues like being trapped in lengthy lines, having to pay parking fees, carrying heavy shopping bags,etc.</h4>
				</div>
				<div class="welcome-left">

				</div>
			</div>
		</div>
	</div>
	<!-- //about -->
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>
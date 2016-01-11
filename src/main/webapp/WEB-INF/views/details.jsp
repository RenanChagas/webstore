<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

	<title>Products</title>
</head>
<body>

	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Products</h1>
			</div>
		</div>
	</section>
	
	<section class="container">
		<div class="row">	
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
					<div class="caption">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>Item Code: ${product.productId}</p>
						<p>${product.unitPrice} USD</p>
						<p>Available ${product.unitsInStock} units in stock</p>
						<p>Manufacturer: ${product.manufacturer}</p>
						<p>Category: ${product.category}</p>
						<a href=" <spring:url value="/products" /> " 
							class="btn btn-default">
							<span class="glyphicon-hand-left glyphicon"/></span> Back
						</a>
						
						<a href="#" class="btn btn-warning btn-larg">
							<span class="glyphicon-shopping-cart glyphicon"></span> Order Now
						</a>
					</div>
				</div>
			</div>
		</div>	
	</section>

</body>
</html>
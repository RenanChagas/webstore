<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
				<p>Add New Product</p>
			</div>
		</div>
	</section>
	
	<section class="container">
		<form:form modelAttribute="newProduct" class="form-horizontal">
			<fieldset>
				<legend>Add New Product</legend>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="productId">Product Id</label>
					<div class="col-lg-10">
						<form:input id="productId" path="productId" type="text" class="form:input-large"/>
					</div> 
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">Name</label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large"/>
					</div> 
				</div>
				
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="description">Description</label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" rows="2"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="unitPrice">unitPrice</label>
					<div class="col-lg-10">
						<form:input id="unitPrice" path="unitPrice" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="manufacturer">Manufacturer</label>
					<div class="col-lg-10">
						<form:input id="manufacturer" path="manufacturer"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="category">Category</label>
					<div class="col-lg-10">
						<form:input id="category" path="category" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="unitsInStock">unitsInStock</label>
					<div class="col-lg-10">
						<form:input id="unitsInStock" path="unitsInStock" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="unitsInOrder">unitsInOrder</label>
					<div class="col-lg-10">
						<form:input id="unitsInOrder" path="unitsInOrder" />
					</div>
				</div>		
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="discontinued">Discontinued</label>
					<div class="col-lg-10">
						<form:checkbox id="discontinued" path="discontinued" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="condition">condition</label>
					<div class="col-lg-10">
						<form:radiobutton id="condition" path="condition"  value="New "/> New<br>
						<form:radiobutton id="condition" path="condition"  value="Old "/> Old<br>
						<form:radiobutton id="condition" path="condition"  value="Refurbished "/> Refurbished<br>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value="Add" />
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>

</body>
</html>
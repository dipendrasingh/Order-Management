<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2
	style="color: #151515; margin-top: 38px; text-align: center; font-size: 48px; line-height: 1.2; font-family: \"Montserrat\", -apple-system, BlinkMacSystemFont, \"SegoeUI\", Roboto, \"HelveticaNeue\", Arial, sans-serif">Welcome
	to Our Restaurant</h2>

<p style="text-align: center; font-size: 20px; font-family: \"Montserrat\", -apple-system, BlinkMacSystemFont, \"SegoeUI\", Roboto, \"HelveticaNeue\", Arial, sans-serif"">Which
	type of pizza you would like to have today!!!</p>
<p
	style="text-align: center; font-size: 16px; margin-top: -15px; font-family: \"Montserrat\", -apple-system, BlinkMacSystemFont, \"SegoeUI\", Roboto, \"HelveticaNeue\", Arial, sans-serif"">Please
	Order Now!!!</p>

<form action="<c:url value="/buyPizza" />" method="GET">
	<div class="row" style="margin-top: 20px;">
		<div class="col-sm-6 col-md-3"></div>
		<div class="col-sm-6 col-md-3" style="text-align: center;">
		<input type="submit" class="btn btn-success btn-lg" name="pizzaType" value="ITALIAN" />
			
		</div>
		<div class="col-sm-6 col-md-3" style="text-align: center;">
		<input type="submit" class="btn btn-success btn-lg" name="pizzaType" value="INDIAN" />
			
		</div>
		<div class="col-sm-6 col-md-3"></div>
	</div>
</form>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row" style="margin-top: 30px;">
	<div class="col-sm-6 col-md-3"></div>

	<div class="col-sm-6 col-md-6"
		style="border-radius: .25rem; background-color: #fff; box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0 rgba(0, 0, 0, .12); border: 0;">
		<div class="row"
			style="border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0; background-color: #33b5e5 !important; color: #fff !important; text-align: center !important; padding-bottom: 1.5rem !important; padding-top: 1.5rem !important; border-bottom: 1px solid rgba(0, 0, 0, .125);">
			<p style="font-size: 2.50rem;">Place Order</p>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<p
					style="color: #757575; margin-top: 20px; margin-bottom: 20px; text-align: center;">Customize
					your order here</p>

				<form:form class="form-horizontal" commandName="buyPizzaFormCommand">
					<div class="form-group">
						<label class="control-label col-sm-4" for="crust-type"
							style="color: #757575;">Crust type:</label>
						<div class="col-sm-8">
							<form:select class="form-control" id="crust-type"
								name="crust-type" path="${pizza.selectedCrustType}">
								<form:option value="-" label="--Please Select" />
								<form:options items="${pizza.availableCrusts}" itemValue="code"
									itemLabel="type" />
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" for="topping-type"
							style="color: #757575;">Choice of Toppings:</label>
						<div class="col-sm-8">
							<form:checkboxes items="${pizza.availableToppings}"
								path="${pizza.selectedToppings}" itemValue="code"  itemLabel="type" />

						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" for="quantity"
							style="color: #757575;">Quantity:</label>
						<div class="col-sm-8">
							<form:select class="form-control" id="quantity" name="quantity"
								path="${qty}">
								<form:option value="0" label="--Please Select" />
								<form:option value="1" label="1" />
								<form:option value="2" label="2" />
								<form:option value="3" label="3" />
								<form:option value="4" label="4" />
								<form:option value="5" label="5" />
								<form:option value="6" label="6" />
								<form:option value="7" label="7" />
								<form:option value="8" label="8" />
							</form:select>
						</div>
					</div>
					<div class="form-group">
						<div class="row" style="margin: auto; text-align: center;">
							<button type="button" class="btn btn-success btn-md"
								style="align: center">Calculate Price</button>
						</div>
					</div>
					<div class="form-group">
						<div class="row" style="margin: auto; text-align: center;">
							<div class="col-sm-6 col-md-2"></div>
							<div class="col-sm-6 col-md-4">
								<button type="button" class="btn btn-outline-secondary btn-lg"
									style="align: center">Price in Rs</button>
							</div>
							<div class="col-sm-6 col-md-4">
								<button type="button" class="btn btn-success btn-lg"
									style="align: center">Buy</button>
							</div>
							<div class="col-sm-6 col-md-2"></div>

						</div>


					</div>
				</form:form>
			</div>
		</div>


	</div>
	<div class="col-sm-6 col-md-3"></div>
</div>

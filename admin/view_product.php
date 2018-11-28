<?php include('header.php'); ?>
<?php include('page-header.php'); ?>
<?php include('sidebar.php'); ?>

<script src="assets/js/script-product.js"></script>

<div class="container-fluid" >

	<div class="contain-white-bg">
		<h1>Products</h1>
		<hr>
	</div>	

	<div class="row top-space">
		<div class="col-lg-12 col-sm-12">
			<div class="contain-white-bg">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAddProduct">Add Product</button>

			</div>
		</div>
	</div>

	<div class="contain-white-bg top-space">

		<div class="row">
			<div class="col-lg-6 col-sm-3 table-show-entries">
				<label>Show 
				<select class="form-control" style="width:100%;max-width: 80px;" id="product-count-filter">
					<option value="10">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
				</select>
				 entries </label>
			</div>

			<div class="col-lg-6 col-sm-12">
				<div class="search-content">

					<!-- Search  -->
					  <div class="form-row align-items-center d-flex justify-content-end"">
					    <div class="col-auto">
					      <div class="input-group mb-2">
					        <div class="input-group-prepend">
					          <div class="input-group-text">Search</div>
					        </div>
					        <input type="text" class="form-control" id="product-search" placeholder="input products...">
					      </div>
					    </div>
					  </div>
					<!-- /Search -->

				</div>
			</div>

		</div>

		<div id="product-table">
			<div class="card mb-3 top-space">
				<div class="card-header"><i class="fas fa-table"></i> Data Table Example</div>
				<table class="table table-bordered" width="100%" cellspacing="0" role="grid" style="width: 100%;">
				  <thead>
				    <tr>
				      <th scope="col">Product #</th>
				      <th scope="col">Product Title</th>
				      <th scope="col">Product Supplier</th>
				      <th scope="col">Product Category</th>
				      <th scope="col">Product SKU</th>
				      <th scope="col">Product Price</th>
				      <th scope="col">Option</th>
				    </tr>
				  </thead>
				  <tbody>
				  </tbody>
				</table>
			</div>
		</div>

	</div>	

</div>

<?php include('footer.php'); ?>
<?php include('modal-product.php'); ?>


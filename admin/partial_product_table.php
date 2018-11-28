<?php

 	include('connection.php');

 	$paged = 1;

	if (isset($_POST['paged'])) {
	  $paged = $_POST['paged'];
	}

 	$countFilter = "";

 	if (isset($_POST['countFilter'])) {
 		$countFilter = $_POST['countFilter'];
 	}

 	if (isset($_POST['searchCountFilter'])) {
 		$countFilter = $_POST['searchCountFilter'];
 	}

 	if (isset($_POST['paginateFilter'])) {
 		$countFilter = $_POST['paginateFilter'];
 	}

	$dataPerPage = $countFilter;
	$pageOffset = ($dataPerPage * $paged) - $dataPerPage;
	$sql = "";

 	if (isset($_POST['search'])) {
		$productTableFields = "product_id LIKE '%{$_POST['search']}%' OR product_title LIKE '%{$_POST['search']}%' OR product_sku LIKE '%{$_POST['search']}%' OR product_price LIKE '%{$_POST['search']}%' ";
	}	

 	if(!isset($_POST['search'])) {
 		$sql = "SELECT * FROM tbl_products ORDER BY product_id LIMIT {$dataPerPage} OFFSET {$pageOffset}";

 		echo $conn->error;
 	}else {
 		$sql = "SELECT * FROM tbl_products WHERE {$productTableFields} ORDER BY product_id LIMIT {$dataPerPage} OFFSET {$pageOffset}";
 		echo $conn->error;
 	}
	
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    // output data of each row

	    while($row = $result->fetch_assoc()) {
?>
			<tr>
				<td><?php echo $row['product_id'] ?></td>
				<td><?php echo $row['product_title'] ?></td>
				<td><?php echo $row['product_supplier_id'] ?></td>
				<td><?php echo $row['product_category_id'] ?></td>
				<td><?php echo $row['product_sku'] ?></td>
				<td><?php echo $row['product_price'] ?></td>.
				<td><a href="#">Edit</a> | <a href="#">Delete</a></td>
			</tr>

		<?php
				}
		?>
		<tr>
			<td colspan="10" style="text-align:center;">
				<a href="#" data-page="<?php echo $paged - 1; ?>" class="product-pagination-page prev-next <?php if ($paged <= 1) { echo "disabled"; } else { echo "enable"; } ?>"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>PREV</a>

				<?php

					if (!isset($_POST['search'])) {
						$sql = "SELECT * FROM tbl_products ";
					} else {
						$sql = "SELECT * FROM tbl_products WHERE CONCAT({$productTableFields}) LIKE '%{$_POST['search']}%'";
					}

				 	$result = $conn->query($sql);
				 	$pages = $result->num_rows/$dataPerPage;

				 	if ($pages % 2 !== 0) {
			          $pages++; 
			        }

			        for ($i=1; $i < $pages; $i++) { ?>
			          <a href="#" data-page="<?php echo $i; ?>" class="product-pagination-page <?php if ($paged == $i) { echo "disabled active"; } else { echo "enable not-active"; } ?> "><?php echo $i; ?></a>
			      	<?php } ?>

				<a href="#" data-page="<?php echo $paged + 1; ?>" class="product-pagination-page prev-next <?php if ($paged >= $pages - 1) { echo "disabled"; } else { echo "enable"; } ?>"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>NEXT</a>
			</td>
		</tr>

<?php
	}
$conn->close();

?>

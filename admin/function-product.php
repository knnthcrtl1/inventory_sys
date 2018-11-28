<?php
	session_start();
	include('connection.php');
	include('functions.php');

	if (isset($_POST['ajax'])) {
		if ($_POST["function-type"] === "add-product") {
			
			$title = mysqli_real_escape_string($conn,(strip_tags($_POST['product-title'])));
			$description = mysqli_real_escape_string($conn,(strip_tags($_POST['product-description'])));
			$supplier_id = mysqli_real_escape_string($conn,(strip_tags($_POST['product-supplier'])));
			$category_id = mysqli_real_escape_string($conn,(strip_tags($_POST['product-category'])));
			$sku = mysqli_real_escape_string($conn,(strip_tags($_POST['product-sku'])));
			$price = mysqli_real_escape_string($conn,(strip_tags($_POST['product-price'])));

			$productTableFields = "product_title,product_description,product_supplier_id,product_category_id,product_sku,product_price";
			$sql = "INSERT INTO tbl_products ( {$productTableFields} ) VALUES 
			('{$title}','{$description}','{$supplier_id}','{$category_id}','{$sku}','{$price}')";

			$conn->query($sql);

			echo "Success";
			
			// auditTrail($_SESSION['user'], "Add Subject", $conn);
		}

		// elseif ($_POST["function-type"] === "edit-subject") {
		// 	$name = mysqli_real_escape_string($conn,(strip_tags($_POST['name'])));
		// 	$sql = "UPDATE tbl_subjects SET subject_name = '{$name}' WHERE subject_id = '{$_POST['subjectId']}' ";
		// 	mysqli_query($conn, $sql);

		// 	// auditTrail($_SESSION['user'], "Update Subject", $conn);
		// }
	}

$conn->close();

?>
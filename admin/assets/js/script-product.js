

   
// start

$(document).ready(function (){ 
// GET PRODUCT

   var productCountFilter = $("#product-count-filter").val();

   $.ajax({
    method: "POST",
    url: "partial_product_table.php",
    data:{countFilter:productCountFilter},
    success:function(data){
     $("#product-table table tbody").html(data);
     // alert(data);
    }
  });



// ADD PRODUCT

$(document).on("click","#submit-product-form", function(e) {
  e.preventDefault();
  var productFormData = $("#add-product-form").serialize();

  var required1 = $(".required1").val();

  if (required1 == "") { 
    alert("You must fill all the required fields!");
  } else {
    $.ajax({
      method: "POST",
      url: "function-product.php",
      data: productFormData + "&ajax=true",
      success:function(data){
        alert(data);
      }
    });
  }

}); 

// PRODUCT COUNT FILTER

$(document).on("keyup, change","#product-count-filter", function(){

    var txt = $(this).val();  

      $.ajax({
        method: "POST",
        url: "partial_product_table.php",
        data:{countFilter:txt},
        success:function(data){
         countFilter = txt;
         $("#product-table table tbody").html(data);
        }
      });
    

});

// SEARCH PRODUCT

var search = "";

$(document).on("keyup","#product-search", function(){
    var txt = $(this).val(); 

    var productSearchCountFilter = $("#product-count-filter").val();

    $.ajax({
      method: "POST",
      url: "partial_product_table.php",
      data:{search:txt, searchCountFilter:productSearchCountFilter},
      success:function(data){
      $("#product-table table tbody").html(data);
      }
    });

});


// PAGINATION

  $(document).on("click",".product-pagination-page.enable", function(e) {
    e.preventDefault();


    var paged = $(this).attr("data-page");
    var paginateFilter = $("#product-count-filter").val();
 
    $.ajax({
      method: "POST",
      url: "partial_product_table.php",
      data:{paged:paged,
        search:search,
       paginateFilter:paginateFilter},
      success:function(data){
       $("#product-table table tbody").html(data);
      }
    });

  });


}); 

 // End


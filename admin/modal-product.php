<!-- Modal -->
<div class="modal fade" id="modalAddProduct" tabindex="-1" role="dialog" aria-labelledby="modalAddProduct" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalAddProduct">Add Product Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <!-- Add PRODUCT FORM -->
      <form action="#" id="add-product-form">

        <div class="modal-body">
          <div class="form-row">
            <div class="col-md-4 mb-3">
              <input type="hidden" name="function-type" value="add-product">
              <label for="validationDefault01">Product Title</label>
              <input type="text" name="product-title" class="form-control required1" id="validationDefault01" placeholder="title..." required>
            </div>
            <div class="col-md-4 mb-3">
              <label for="validationDefault02">Product Supplier</label>
              <input type="text" name="product-supplier" class="form-control required1" id="validationDefault02" placeholder="supplier..."  required>
            </div>
            <div class="col-md-4 mb-3">
              <label for="validationDefault02">Product Category</label>
              <input type="text" name="product-category" class="form-control required1" id="validationDefault02" placeholder="category..." required>
            </div>
          </div>

          <div class="form-row">
            <div class="col-md-6 mb-3">
              <label for="validationDefault01">Product SKU</label>
              <input type="text" name="product-sku" class="form-control" id="validationDefault01" placeholder="sku..." required>
            </div>
            <div class="col-md-6 mb-3">
              <label for="validationDefault02">Product Price</label>
              <input type="number" name="product-price" class="form-control required1" id="validationDefault02" placeholder="price..." required>
            </div>
          </div>

          <div class="form-row">
            <div class="col-md-12 mb-3">
              <label for="validationDefault01">Product Description</label>
              <textarea class="form-control required1" name="product-description" id="exampleFormControlTextarea1" rows="3" placeholder="description..."></textarea>
            </div>
          </div>

        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" id="submit-product-form">Save changes</button>
        </div>

      </form>

    </div>
  </div>
</div
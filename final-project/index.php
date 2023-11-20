<?php
require_once 'config/config.php';
require_once 'layout/templates/partials/header.php';
?>

<main>
  <div class="card">
    <img src="imgs/stock.png" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Stock</h5>
      <p class="card-text">Manage your stock.</p>
      <a href="/modules?module=stock" class="btn btn-primary">Go</a>
    </div>
  </div>

  <div class="card">
    <img src="imgs/shopping.png" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Shopping</h5>
      <p class="card-text">Manage your shopping.</p>
      <a href="/modules?module=shopping" class="btn btn-primary">Go</a>
    </div>
  </div>


  <div class="card">
    <img src="imgs/products.png" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Products</h5>
      <p class="card-text">Manage your products.</p>
      <a href="/modules?module=products" class="btn btn-primary">Go</a>
    </div>
  </div>
</main>

<?php
require_once 'layout/templates/partials/footer.php';
?>
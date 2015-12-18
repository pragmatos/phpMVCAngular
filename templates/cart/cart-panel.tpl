<div id="cart">
		<div class="cart_left"></div>
                    <div class="cart_right">
                            <a href="/cart" class="light">
<?php if(isset($cart['count'])):?>
           <?=$cart['count'];?>
         <?php else:?> 0 <?php endif;?>товаров
                                   -  <?=$cart[price]?> $	</a>

                    </div>			
                </div> 
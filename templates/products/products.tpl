<br>
<div class="wide_line">
	<span><?=Category_View::GetCategoryName($category_id);?></span>
</div>

<div class="products_list">
<?foreach($products as $key=>$product):?>
        <div class="product_block">
        <div class="image">
        <a class="thumbnail" href="/products/detail/<?=$product['id']?>">
        <img width= "180" heigth="172"src="/images/<?=$product['image']?>" /></a>	</div>
        <div class="name">
        <a href="/products/detail/<?=$product['id']?>"><?=$product['name']?> <?=$product['model']?></a></div>
        <div class="price"><?=$product['price']?>$</div>
        <div class="actions">
        <form action="/cart/add/<?=$product['id']?>" method="post">
       
                            <input class="blue_button" type="submit" name="yt3" value="Купить" id="yt3" />
                            <button class="small_silver_button" title="Сравнить" onclick="return addProductToCompare(31);">
                            <span class="compare">&nbsp</span></button>
                            <button class="small_silver_button" title="В список желаний" onclick="return addProductToWishList(31);">
                            <span class="heart">&nbsp;</span></button>
                                </form>	
            </div>
        </div>
<?endforeach;?>

<?= Products_View::GetPagination($countProducts,$category_id);?>
</div>
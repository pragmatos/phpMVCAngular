<div class="product">
	
	<div class="images">
		<div class="image_row">
			<div class="main">
                            <a class="thumbnail" href="<?php echo URL.$this->product[0]['hrefimage']; ?>"><img width="250" src="/images/<?=$product['image']; ?>" /></a>			</div>
			
		</div>
		<div class="additional">
			<ul>
						</ul>
		</div>
	</div>

	<div class="info">
            <form action="/cart/add/<?=$product['id']?>" method="post">

		<h1><?=$product['name']; ?> <?=$product['model'];?></h1>

		<table class="configurations rc5">
	</table>

		<div class="errors" id="productErrors"></div>

		<div style="clear: both;font-size: 16px">
					</div>

		<div class="price">
			<span id="productPrice"><?=$product['price'];?> </span>
			$		</div>
                

		<div class="actions">
			<input id="buyButton" class="blue_button" type="submit" name="yt0" value="Купить" /></form>
			<div class="silver_clean silver_button">
                        </div>
		</div>
            <br>
                <br>
		<div class="desc"><?=$product['decs']?></div>
		<div class="desc"></div>
	</div>

	<div style="clear:both;"></div>

<div id="tabs">
    <ul>
        <li><a href="#tabs_tab_0" title="tabs_tab_0">Характеристики</a></li>
    </ul>
    <?php $arr = explode(',', $this->product[0]['description']);    ?>
    
<div id="tabs_tab_0">
    <table class="attributes">
        <tr>
            <td>Тип процессора</td>
            <td><?php echo $arr[0];?></td></tr>
        <tr><td>Частота процессора</td>
            <td><?php echo $arr[1];?></td></tr>
        <tr><td>Объем памяти</td>
            <td><?php echo $arr[2];?></td></tr>
        <tr><td>Тип памяти</td>
            <td><?php echo $arr[3];?></td></tr>
        <tr><td>Диагональ</td>
            <td><?php echo $arr[4];?></td></tr>
        <tr><td>Видеокарта</td>
            <td><?php echo $arr[5];?></td></tr>
    </table>
</div>

</div>
</div>


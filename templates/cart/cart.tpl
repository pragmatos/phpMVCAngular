
<h2>У вас на сумму : <?=$_SESSION['cart']['price']?></h2>
<table style="width: 100%; padding: 20px; border: 2px #0044cc solid">
    <thead>
        <th>Названия:</th>
        <th>Модель:</th>
        <th>Описания:</th>
        <th>Цена:</th>
        <th>Количество:</th>
        <th>Действие:</th>
    </thead>
    <?php foreach ($products as $key=> $p):?>
    <tr style="border: 1px">
        <td style="text-align: center"><?=$p['name']?></td>
        <td style="text-align: center"><?=$p['model']?></td>
        <td style="text-align: center;max-width: 300px;"><?=$p['decs']?></td>
        <td style="text-align: center"><?=$p['price']?></td>
        <td style="text-align: center"><?=$_SESSION['cart']['products_id'][$p['id']]?></td>
        <td><a href="/cart/delete/<?=$p['id']?>">Удалить</a>
        </td>
    </tr>
    <?php endforeach;?>
</table>
<div style="float: right; margin: 20px 20px 0 0" class="row buttons" >
    <form method="POST" action="/cart/order">
			<input type="submit" value="Купить" />	</form>	</div>
    
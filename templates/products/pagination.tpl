<div style="text-align: center; clear: both">
<ul style="display: inline-block; padding: 0; margin: 0">
    <?php for($i = 1; $i <= $count; $i++):?>
    <li style=" display: inline;">
        <a href="/products/category/<?=$category_id;?>/<?=$i;?>" style="float: left; padding: 8px 16px; text-decoration: none;"><?=$i?></a>
    </li>
    <?php endfor;?>
</ul>
</div>
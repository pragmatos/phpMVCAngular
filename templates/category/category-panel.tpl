<ul class="dropdown" id="nav">
<?php foreach($category as $key => $val):?>
                    <li class="parent"><a href="/products/category/<?=$val['id']?>/1"><span><?=$val['name']?></span></a>
                    </li>
<? endforeach;?>
                </ul>
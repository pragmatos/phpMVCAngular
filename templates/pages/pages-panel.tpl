<? foreach($pages as $page):?>
<li><a href="/pages/view/<?=$page['page_id']?>"><?=$page['page_title']?></a></li>
<?endforeach;?>
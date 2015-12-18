<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title><?=$Title?></title>
<link rel="stylesheet" type="text/css" href="/public/css/menu.css" >
<link rel="stylesheet" href="/public/css/reset.css">
<link rel="stylesheet" href="/public/css/style.css">
<link rel="stylesheet" href="/public/css/catalog.css">
<link rel="stylesheet" href="/public/css/forms.css">


</head>
<body>
<div id="header">
	
    <div id="top_menu">
        <div class="right">
            <ul id="yw0">
                <?= Pages_View::GetPanel();?>
                
                <li><a href="/users/feedback">Обратная связь</a></li>
            </ul>		
        </div>	

    </div>

    <div class="blocks">
	<div class="left">
            <a href="/"><img id="logo" src="/public/images/logo.png"></a>
        </div>
        <div class="middle">
                <span class="icon phone"></span>
                (099) <span class="big_text">111-222-333</span>

<!--            <div class="currencies">
                Валюта: <a id="sw1" class="active" href="http://test.tsamada.com.ua/#">$</a>
                <a id="sw2" class="" href="http://test.tsamada.com.ua/#">грн</a>			
            </div>-->

            <div class="search_box">
                <form action="/products/search" method="post">
                    <div style="display:none"><input type="hidden" value="00eddbe94506466bcfaed12c47ce419f4907f1da" name="YII_CSRF_TOKEN"></div>				
                    <input type="text" value="<?=$_POST['search'];?>" name="search" id="searchQuery" placeholder="Поиск товаров">
                        <button type="submit">Поиск</button>
                </form>	
            </div>  
	</div>
            <div class="right">
		<div id="auth">
                <?php if(Core::$user->isGuest()):?>
                        <a class="light" href="/users/auth">Вход</a>                        
                        /<a class="light" href="/users/register">Регистрация</a>                        
                        <?php endif;?>
                <?php if(Core::$user->isUser()):?>
<a class="light" href="/users/exit">Выход</a>
                        <a class="light" href="/users/profile">(<?=Core::$user->Name();?>)</a>  
                        
                                  
                    <?php endif;?>
                </div>
                
                <?= Cart_View::GetPanel();?>
            </div>
    </div>

	<div class="mainm">
		<?=Category_View::GetPanel();?>
        </div>
</div>

<div id="content">
     
   
    <?=$Content?>
</div>>
<div style="clear:both;"></div>

<div style="clear:both;"></div>



<div id="footer">
    <div class="centered">
        <div class="left">
                © «Интернет магазин», 2015			<span class="light">Все права защищены</span>
        </div>

        <div class="middle">
            <ul id="yw1">
                <?= Pages_View::GetPanel();?>
                
                <li><a href="/users/feedback">Обратная связь</a></li>
            </ul>		
        </div>
        <div class="right">
                Контактная информация
                <br>
                (099) <span class="big_text">111-222-333</span>
        </div>
    </div>
</div>


<!--<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable ui-resizable ui-dialog-buttons" tabindex="-1" role="dialog" aria-labelledby="ui-id-1" style="display: none; outline: 0px; z-index: 1000; position: absolute;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">Сообщить о появлении</span><a href="http://test.tsamada.com.ua/#" class="ui-dialog-titlebar-close ui-corner-all" role="button"><span class="ui-icon ui-icon-closethick">close</span></a></div><div id="notify_me" class="ui-dialog-content ui-widget-content">
    <div class="form wide">
	<form onsubmit="return sendNotifyRequest()" action="http://test.tsamada.com.ua/notifyRequest/index" method="post">
            <div style="display:none"><input type="hidden" value="00eddbe94506466bcfaed12c47ce419f4907f1da" name="YII_CSRF_TOKEN"></div>			<input type="hidden" name="product_id" class="product_id">
                <div class="row">
                        <label>Ваш Email:</label>
                        <input type="text" name="email">
                </div>
        </form>	
    </div>
</div>
    <div class="ui-resizable-handle ui-resizable-n" style="z-index: 1000;"></div>
    <div class="ui-resizable-handle ui-resizable-e" style="z-index: 1000;"></div>
    <div class="ui-resizable-handle ui-resizable-s" style="z-index: 1000;"></div>
    <div class="ui-resizable-handle ui-resizable-w" style="z-index: 1000;"></div>
    <div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-icon-grip-diagonal-se" style="z-index: 1000;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 1000;"></div>
    <div class="ui-resizable-handle ui-resizable-ne" style="z-index: 1000;"></div>
    <div class="ui-resizable-handle ui-resizable-nw" style="z-index: 1000;"></div>
    <div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
        <div class="ui-dialog-buttonset">
            <button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
                <span class="ui-button-text">Отправить</span>
            </button>
            <button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false">
                <span class="ui-button-text">Отмена</span>
            </button>
        </div>
    </div>
</div>-->
</body>
</html>
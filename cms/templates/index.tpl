<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta name="generator" content="MY CMS" />
    <meta name="description" content="<? echo $Description; ?>" />
    <meta name="keywords" content="<? echo $Keywords; ?>" />
    <title><? echo $Title; ?></title>
    <link rel="stylesheet" type="text/css" href="/templates/style.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">    
    </script>
    <link rel="stylesheet" type="text/css" href="/modules-alien/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/modules-alien/bootstrap/css/bootstrap-responsive.min.css" />
    <script type="text/javascript" src="/modules-alien/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar">
  <div class="navbar-inner">
    <a class="brand" href="/"><?=$SiteName?></a>
    <?=Topmenu_View::GetPanel()?>
  </div>
</div>
<div class="container">
<div class="row">
  <div class="span3"><?=Pages_View::GetPanel()?><?=Users_View::GetPanel()?></div>
  <div class="span9">
  <? if (isset($PageTitle)) : ?>
  <h1><?=$PageTitle?></h1>
  <? endif; ?>
  <? echo $Content; ?>
  </div>
</div> 
</div> 
</body>
</html>
<?php
defined('_JEXEC') or die;

JHtml::_('behavior.framework', true);

$document	= JFactory::getDocument();
$document->setGenerator('GNU Emacs');

$app = JFactory::getApplication();
// путь к шаблону
$templatePath = $this->baseurl . '/templates/' . $this->template;
// получить значение текущего языка
$lang = JRequest::getVar('lang', 'ru');

?>
<!DOCTYPE html>
<html>
<head>
	<jdoc:include type="head" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="<?= $templatePath ?>/css/kube.min.css" />
	<link rel="stylesheet" type="text/css" href="<?= $templatePath ?>/css/kube.responsive.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<?= $templatePath ?>/css/master.css" />
	<link rel="stylesheet" type="text/css" href="<?= $templatePath ?>/css/custom.css" media="all" />
	
	<script>
		var SiteApp = (function() {
			"use strict";

			var app = {};
			app.language = '<?= $lang ?>';

			return app;
		})();
	</script>
	<script src="<?= $templatePath ?>/js/jquery.min.js"></script>
	<script src="<?= $templatePath ?>/js/init.js"></script>

	<?php if ($this->countModules('mainslider')) { ?>
	<script src="<?= $templatePath ?>/slidesjs/js/jquery.slides.min.js"></script>
	<script>
		jQuery(function ($) {
			$('#slides').slidesjs({
	      width: 640,
	      height: 200			      
	    });
		});
	</script>
	<?php } ?>
	
	<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
<div class="wrapper">
	<header id="header" class="group">
		<h1><?= htmlspecialchars($app->getCfg('sitename')) ?></h1>
		<nav>
			<jdoc:include type="modules" name="atomic-topmenu" />
		</nav>
		<jdoc:include type="modules" name="atomic-topquote" />
	</header>

	<?php if ($this->countModules('mainslider')) { ?>		
		<div id="promo">
			<jdoc:include type="modules" name="mainslider" />		
		</div>
	<?php } ?>				
	
	<jdoc:include type="modules" name="intro" />		
</div><!-- /end .wrapper -->

<jdoc:include type="modules" name="outer" />		

<div id="main">
	<div class="wrapper">

		<div class="row">
			<div class="third">
				<jdoc:include type="message" />
				<jdoc:include type="component" />				
				<jdoc:include type="modules" name="contactscontent" />
			</div>
			
			<?php if ($this->countModules('mainnews')) { ?>
				<div class="twothird">
					<jdoc:include type="modules" name="mainnews" />
				</div>
			<?php } ?>
		</div>

		<jdoc:include type="modules" name="bottomline" />

	</div>
</div><!-- /end #main -->

<footer id="footer">
	<div class="wrapper">
		<section>
			&copy; <?= htmlspecialchars($app->getCfg('sitename')) ?> <?= date('Y') ?>
		</section>
		<nav>
			<jdoc:include type="modules" name="footermenu" />
		</nav>
	</div>
</footer>

<jdoc:include type="modules" name="debug" />
</body>
</html>
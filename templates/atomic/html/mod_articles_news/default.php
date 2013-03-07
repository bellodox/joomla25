<?php
// no direct access
defined('_JEXEC') or die;
?>

<div class="news">
	<h3>
		<a href="/news.html"><?= $module->title ?></a></h3>
	
	<?php foreach ($list as $item) { ?>
	<div class="news-item">
		<div class="news-date">
			<?= JHTML::date($item->created, 'd.m.Y') ?></div>
		<?= $item->introtext ?></div>
	<?php } ?>

</div>

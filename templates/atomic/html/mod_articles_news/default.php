<?php
// no direct access
defined('_JEXEC') or die;
?>

<h3><a href="/news.html"><?= $module->title ?></a></h3>
			
<article id="news">
	<?php foreach ($list as $item) { ?>
		<small class="gray"><?= JHTML::date($item->created, 'd.m.Y') ?></small>
		<p><?= $item->introtext ?></p>
	<?php } ?>
</article>

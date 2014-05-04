<?php
/**
 * Kunena Component
 * @package Kunena.Template.Blue_Eagle
 * @subpackage Common
 *
 * @copyright (C) 2008 - 2012 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>
<div id="ktop">
	<div id="ktopmenu">
		<div id="ktab"><?php echo $this->getMenu() ?></div>
	</div>
</div>
<div id="jf-login-search">
	<ul class="menu">
		<!-- Begin: Kunena JF Login Module Position -->
		<li>
			<a href="#jf-kunena-login" rel="inline-340-265" class="pirobox_gall1 jf-kunena-login-button">
				<span></span>
			</a>
			<div id="jf-kunena-login">
				<?php $this->displayModulePosition ( 'jf-kunena-login' ) ?>
			</div>
		</li>
		<!-- Finish: Kunena JF Login Module Position -->
		<!-- Begin: Kunena JF Search Module Position -->
		<li>
			<a href="#jf-kunena-search" rel="inline-340-100" class="pirobox_gall1 jf-kunena-search-button">
				<span></span>
			</a>
			<div id="jf-kunena-search">
				<?php $this->displayModulePosition ( 'jf-kunena-search' ) ?>
			</div>
		</li>
		<!-- Finish: Kunena JF Search Module Position -->
	</ul>
</div>
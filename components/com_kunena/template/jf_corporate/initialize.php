<?php
/**
* Kunena Component
* @package Kunena.Template.JF_Corporate
*
* @copyright (C) 2008 - 2012 Kunena Team. All rights reserved.
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* @link http://www.kunena.org
**/
defined( '_JEXEC' ) or die();

$app = JFactory::getApplication();
$document = JFactory::getDocument();
$template = KunenaFactory::getTemplate();

// Template requires Mootools 1.2 framework
$template->loadMootools();

// We load mediaxboxadvanced library only if configuration setting allow it
if ( KunenaFactory::getConfig()->lightbox == 1 ) {
	$template->addStyleSheet ( 'css/mediaboxAdv.css');
	$template->addScript( 'js/mediaboxAdv.js' );
}

// New Kunena JS for default template
$template->addScript ( 'js/default.js' );

$rtl = JFactory::getLanguage()->isRTL();
$skinner = $template->params->get('enableSkinner', 0);

// START JoomForest Functions ------------------------------------------------------------------------------
if ( $template->params->get('jf-enablejQuery', 0) )  {
	CKunenaTools::addScript( KUNENA_DIRECTURL . 'template/jf_corporate/js/jquery_1.5-jquery_ui.min.js');
}
if ( $template->params->get('jf-enablejQuery-noConflict', 0) )  {
	$document->addCustomTag('<script type="text/javascript">jQuery.noConflict();</script>');
}
if ( $template->params->get('jf-enablefont', 0) )  {
	CKunenaTools::addStyleSheet ('http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz');
}
if ( $template->params->get('jf-enablePiroBox', 0) )  {
	CKunenaTools::addStyleSheet ( KUNENA_DIRECTURL . 'template/jf_corporate/css/jf-pirobox.css');
	CKunenaTools::addScript(KUNENA_DIRECTURL . 'template/jf_corporate/js/pirobox_extended_feb_2011.js');
	$document->addCustomTag('<script type="text/javascript">jQuery(document).ready(function(){jQuery.piroBox_ext({piro_speed:700,bg_alpha:0.5,piro_scroll:true,piro_drag:false,piro_nav_pos:"bottom"})});</script>');
}
// END JoomForest Functions ------------------------------------------------------------------------------

if (file_exists ( JPATH_ROOT . "/templates/{$app->getTemplate()}/css/kunena.forum.css" )) {
	// Load css from Joomla template
	CKunenaTools::addStyleSheet ( JURI::root(true). "templates/{$app->getTemplate()}/css/kunena.forum.css" );
	if ($skinner && file_exists ( JPATH_ROOT. "templates/{$app->getTemplate()}/css/kunena.skinner.css" )){
		CKunenaTools::addStyleSheet ( JURI::root(true). "templates/{$app->getTemplate()}/css/kunena.skinner.css" );
	} elseif (!$skinner && file_exists ( JPATH_ROOT. "templates/{$app->getTemplate()}/css/kunena.default.css" )) {
		CKunenaTools::addStyleSheet ( JURI::root(true). "templates/{$app->getTemplate()}/css/kunena.default.css" );
	}
} else {
	// Load css from default template
	$template->addStyleSheet ( 'css/kunena.forum.css' );
	if ($skinner) {
		$template->addStyleSheet ( 'css/kunena.skinner.css' );
	} else {
		$template->addStyleSheet ( 'css/kunena.default.css' );
	}
}

CKunenaTools::addStyleSheet ( KUNENA_DIRECTURL . 'template/jf_corporate/css/kunena.forum-joomforest.css', $rtl );
CKunenaTools::addStyleSheet ( KUNENA_DIRECTURL . 'template/jf_corporate/css/kunena.forum-joomforest-k20.css', $rtl );
CKunenaTools::addStyleSheet ( KUNENA_DIRECTURL . 'template/jf_corporate/css/kunena.forum.jf-browsers.css', $rtl );
$cssurl = JURI::root(true) . "components/com_kunena/template/jf_corporate/css";

?>
<script src="<?php echo JURI::base(); ?>components/com_kunena/template/jf_corporate/js/joomforest.js" type="text/javascript"></script>
<script type="text/javascript">jQuery(document).ready(function(jQuery){jQuery('#Kunena').next().css({'font-size':'.833em','margin':'-20px 0 10px'});});</script>
<!--[if lte IE 8]>
<link rel="stylesheet" href="<?php echo $cssurl; ?>/kunena.forum.ie8.css" type="text/css" />
<![endif]-->
<!--[if lte IE 7]>
<link rel="stylesheet" href="<?php echo $cssurl; ?>/kunena.forum.ie7.css" type="text/css" />
<![endif]-->
<?php
$mediaurl = JURI::root(true) . "/components/com_kunena/template/{$template->name}/media";

$styles = <<<EOF
	/* Kunena Custom CSS */
EOF;

$forumHeader = $template->params->get('forumHeadercolor', $skinner ? '' : '#060C17');
if ($forumHeader) {
	$styles .= <<<EOF
	body #Kunena .kblock div.kheader, body #Kunena div.kblock > div.kheader { background-color: {$forumHeader}; }
	#Kunena #ktop { border-color: {$forumHeader}; }
	#Kunena #ktop span.ktoggler { background-color: {$forumHeader}; }
EOF;
}

$forumHeaderBorder = $template->params->get('forumHeaderBordercolor', $skinner ? '' : '#060C17');
if ($forumHeaderBorder) {
	$styles .= <<<EOF
	#Kunena .kheader h2 { background-color: {$forumHeaderBorder}; }
EOF;
}

$forumLink = $template->params->get('forumLinkcolor', $skinner ? '' : '#c00');
$forumLinkhover = $template->params->get('forumLinkhover', $skinner ? '' : '#f00');
if ($forumLink) {
	$styles .= <<<EOF
	#Kunena a:link, #Kunena a:visited, #Kunena a:active, #Kunena a:focus {color: {$forumLink};}
	#Kunena a:hover {color: {$forumLinkhover};}
	#Kunena a:focus {outline: none;}
	#Kunena .kwho-user {color: #B88B30 !important;}
EOF;
}

$forumJFButton = $template->params->get('forumJFButtoncolor', $skinner ? '' : '#c00');
$forumJFButtonhover = $template->params->get('forumJFButtonhover', $skinner ? '' : '#f00');
if ($forumJFButton) {
	$styles .= <<<EOF
	#jf-kunena-login .klogin-vert .kbutton { background-color: {$forumJFButton};}
	#jf-kunena-login .klogin-vert .kbutton:hover { background-color: {$forumJFButtonhover};}
	#jf-kunena-search .kbutton { background-color: {$forumJFButton};}
	#jf-kunena-search .kbutton:hover { background-color: {$forumJFButtonhover};}
EOF;
}

$forumCOREButton = $template->params->get('forumCOREButtoncolor', $skinner ? '' : '#c00');
$forumCOREButtonhover = $template->params->get('forumCOREButtonhover', $skinner ? '' : '#f00');
if ($forumCOREButton) {
	$styles .= <<<EOF
	#Kunena .button, #Kunena .kbutton, #Kunena #kbutton_addvideo1, #Kunena #kbutton_addvideo2,#Kunena .kpagination span {background-color: {$forumCOREButton};}
	#Kunena .button:hover, #Kunena .button:focus, #Kunena .button:active, #Kunena .kbutton:hover, #Kunena .kbutton:focus, #Kunena .kbutton:active, #Kunena #kbutton_addvideo1:hover, #Kunena #kbutton_addvideo1:focus, #Kunena #kbutton_addvideo1:active, #Kunena #kbutton_addvideo2:hover, #Kunena #kbutton_addvideo2:focus, #Kunena #kbutton_addvideo2:active { background-color: {$forumCOREButtonhover} !important;}
EOF;
}

$announcementHeader = $template->params->get('announcementHeadercolor', $skinner ? '' : '#060C17');
if ($announcementHeader) {
	$styles .= <<<EOF
	#Kunena div.kannouncement div.kheader { background: {$announcementHeader} !important; }
EOF;
}

$announcementBox = $template->params->get('announcementBoxbgcolor', $skinner ? '' : '#FFFFFF');
if ($announcementBox) {
	$styles .= <<<EOF
	#Kunena div#kannouncement .kanndesc { background: {$announcementBox}; }
EOF;
}

$frontStatsHeader = $template->params->get('frontstatsHeadercolor', $skinner ? '' : '#060C17');
if ($frontStatsHeader) {
	$styles .= <<<EOF
	#Kunena div.kfrontstats div.kheader { background-color: {$frontStatsHeader} !important; }
EOF;
}

$onlineHeader = $template->params->get('whoisonlineHeadercolor', $skinner ? '' : '#060C17');
if ($onlineHeader) {
	$styles .= <<<EOF
	#Kunena div.kwhoisonline div.kheader { background-color: {$onlineHeader} !important; }
EOF;
}

$inactiveTab = $template->params->get('inactiveTabcolor', $skinner ? '' : '#737373');
$activeTab = $template->params->get('activeTabcolor', $skinner ? '' : '#060C17');
$hoverTab = $template->params->get('hoverTabcolor', $skinner ? '' : '#060C17');

$topBorder = $template->params->get('topBordercolor', $skinner ? '' : '#060C17');
if ($topBorder) {
	$styles .= <<<EOF
	#Kunena #ktop { border-color: {$topBorder} !important; }
EOF;
}

$inactiveFont = $template->params->get('inactiveFontcolor', $skinner ? '' : '#FFFFFF');
$activeFont = $template->params->get('activeFontcolor', $skinner ? '' : '#FFFFFF');
if ($activeFont) {
	$styles .= <<<EOF
	#Kunena #ktab #current a span { color: {$activeFont} !important; }
EOF;
}

$toggleButton = $template->params->get('toggleButtoncolor', $skinner ? '' : '#5388B4');
if ($toggleButton) {
	$styles .= <<<EOF
	#Kunena #ktop span.ktoggler { background-color: {$toggleButton} !important; }
EOF;
}


$styles .= <<<EOF
	#Kunena .kicon-profile { background-image: url("{$mediaurl}/iconsets/profile/{$template->params->get('profileIconset', 'default')}/default.png"); }
	#Kunena .kicon-button { background-image: url("{$mediaurl}/iconsets/buttons/{$template->params->get('buttonIconset', 'default')}/default.png") !important; }
	#Kunena #kbbcode-toolbar li a,#Kunena #kattachments a { background-image:url("{$mediaurl}/iconsets/editor/{$template->params->get('editorIconset', 'default')}/default.png"); }
	/* End of Kunena Custom CSS */
EOF;

$document->addStyleDeclaration($styles);

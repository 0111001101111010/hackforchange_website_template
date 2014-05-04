<?php
/**
 * @version   $Id$
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

/** ensure this file is being included by a parent file */
// no direct access
defined('_JEXEC') or die;
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
// load tooltip behavior
JHtml::_('behavior.tooltip');
JHtml::_('dropdown.init');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.formvalidation');
// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_rokbridge/assets/css/rokbridge.css');
?>
<script type="text/javascript">
    Joomla.submitbutton = function (task) {
        if (task == 'rokbridge.cancel' || document.formvalidator.isValid(document.id('rokbridge-form'))) {
            Joomla.submitform(task, document.getElementById('rokbridge-form'));
        }
        else {
            alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED'));?>');
        }
    }
</script>
<h1><?php echo JText::_('ROKBRIDGE_CONFIGURATION'); ?></h1>
<div class="row-fluid">
<form action="<?php echo JRoute::_('index.php?option=com_rokbridge');?>" method="post" name="adminForm" id="rokbridge-form" class="form-validate" autocomplete="off">
<div class="row-fluid">
<!-- Begin Rokbridge -->
<div class="span6 form-horizontal">
    <fieldset>
        <ul class="nav nav-tabs">
            <li class="active"><a href="#details" data-toggle="tab">
                <?php echo JText::_('COM_ROKBRIDGE_LEGEND_CONFIGURATION'); ?></a>
            </li>
            <li><a href="#advanced" data-toggle="tab">
                <?php echo JText::_('COM_ROKBRIDGE_ADVANCED_OPTIONS'); ?></a>
            </li>
        </ul>
			<div class="tab-content">
            <div class="tab-pane active" id="details">
                <div class="control-group">
                    <div class="control-label"><?php echo $this->form->getLabel('bridge_path'); ?>
                    </div>
                    <div class="controls">
                        <?php echo $this->form->getInput('bridge_path'); ?></div>

                    <div class="control-label"><?php echo $this->form->getLabel('phpbb3_path'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('phpbb3_path'); ?></div>
			
				<hr class="hr-condensed">
		    
		    <div class="control-label"><?php echo $this->form->getLabel('link_format'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('link_format'); ?></div>
			
			<hr class="hr-condensed">


                    <div class="control-label"><?php echo $this->form->getLabel('sef_enable'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('sef_enable'); ?></div>

                    <div class="control-label"><?php echo $this->form->getLabel('sef_rewrite'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('sef_rewrite'); ?></div>

                    <div class="control-label"><?php echo $this->form->getLabel('force_remember'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('force_remember'); ?></div>

                </div>
            </div>
            <div class="tab-pane" id="advanced">
                <div class="control-group">

                    <div class="control-label"><?php echo $this->form->getLabel('create_user_asynchroneously'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('create_user_asynchroneously'); ?></div>

                    <div class="control-label"><?php echo $this->form->getLabel('create_user_immediately'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('create_user_immediately'); ?></div>
			
			

                    <div class="control-label"><?php echo $this->form->getLabel('user_inactive'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('user_inactive'); ?></div>
<hr class="hr-condensed">
                    <div class="control-label"><?php echo $this->form->getLabel('group_id'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('group_id'); ?></div>

                    <div class="control-label"><?php echo $this->form->getLabel('user_new'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('user_new'); ?></div>
			<hr class="hr-condensed">

                    <div class="control-label"><?php echo $this->form->getLabel('user_delete_mode'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('user_delete_mode'); ?></div>

                    <div class="control-label"><?php echo $this->form->getLabel('save_poster_username'); ?></div>
                    <div class="controls">
                        <?php echo $this->form->getInput('save_poster_username'); ?></div>
<hr class="hr-condensed">
                </div>
            </div>
        </div>
    </fieldset>
    <input type="hidden" name="task" value="" />
    <input type="hidden" name="current_bridge_path" value="<?php echo $this->current_bridge_path; ?>" />
    <?php echo JHtml::_('form.token'); ?>
</form> 
</div>
<!-- Begin Sidebar -->
<div class="span6">
    <div class="note">
        <div class="corner">
            <?php echo JText::_('INSTRUCTIONS'); ?>
        </div>
    </div>
</div>
<!-- End Sidebar -->
</form>

<div class="clr"></div>
<div class="span12">   
<h1><?php echo JText::_('ROKBRIDGE_STATUS'); ?></h1>

<div class="rokbridge-status">
    <table class="table table-striped" id="articleList">
        <thead>
        <tr>
            <th class="title" width="20%"class="nowrap hidden-phone"><?php echo JText::_('ELEMENT'); ?></th>
            <th width="15%" class="nowrap hidden-phone"><?php echo JText::_('STATUS'); ?></th>
            <th width="15%" class="nowrap hidden-phone"><?php echo JText::_('ACTION'); ?></th>
            <th width="50%" class="nowrap hidden-phone"><?php echo JText::_('NOTE'); ?></th>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
        </tfoot>
        <tbody>
        <tr class="<?php echo $this->userplg_class; ?>">
            <td><?php echo JText::_('JOOMLA_USERPLG'); ?></td>
            <td class="status"><span><?php echo $this->userplg_status ?></span></td>
            <td>&nbsp;</td>
            <td><?php echo $this->userplg_note; ?></td>
        </tr>
        <tr class="<?php echo $this->authplg_class; ?>">
            <td><?php echo JText::_('JOOMLA_AUTHPLG'); ?></td>
            <td class="status"><span><?php echo $this->authplg_status; ?></span></td>
            <td>&nbsp;</td>
            <td><?php echo $this->authplg_note; ?></td>
        </tr>
        <tr class="<?php echo $this->bridge_class; ?>">
            <td><?php echo JText::_('PHPBB3_BRIDGE'); ?></td>
            <td class="status"><span><?php echo $this->bridge_status; ?></span></td>
            <td class="centeralign">
                <?php if ($this->bridge_install_enable) : ?>
                <?php if (!$this->bridge_installed) : ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=movebridge'); ?>"><?php echo JText::_('INSTALL'); ?></a>
                    <?php else: ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=removebridge'); ?>"><?php echo JText::_('REMOVE'); ?></a>
                    <?php endif; ?>
                <?php endif; ?>
            </td>
            <td><?php echo $this->bridge_note; ?></td>
        </tr>
        <tr class="<?php echo $this->phpbb3_class; ?>">
            <td><?php echo JText::_('PHPBB3_FORUM');?></td>
            <td class="status"><span><?php echo $this->phpbb3_status; ?></span></td>
            <td></td>
            <td><?php echo $this->phpbb3_note; ?></td>
        </tr>
        <tr class="<?php echo $this->phpbb3plg_class; ?>">
            <td><?php echo JText::_('PHPBB3_AUTHPLG');?></td>
            <td class="status"><span><?php echo $this->phpbb3plg_status; ?></span></td>
            <td class="centeralign">
                <?php if ($this->phpbb3_installed and $this->bridge_installed) : ?>
                <?php if (!$this->phpbb3plg_installed) : ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=installplugin'); ?>"><?php echo JText::_('INSTALL'); ?></a>
                    <?php else: ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=removeplugin'); ?>"><?php echo JText::_('REMOVE'); ?></a>
                    <?php endif; ?>
                <?php else:
                $this->phpbb3plg_note = JText::_('BRIDGE_INSTALLED_FIRST');
            endif; ?>
            </td>
            <td><?php echo $this->phpbb3plg_note; ?></td>
        </tr>
        <tr class="<?php echo $this->indexes_class; ?>">
            <td><?php echo JText::_('PHPBB3_INDEXES');?></td>
            <td class="status"><span><?php echo $this->indexes_status; ?></span></td>
            <td class="centeralign">
                <?php if ($this->phpbb3_installed and $this->bridge_installed) : ?>
                <?php if (!$this->indexes_installed) : ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=addIndexes'); ?>"><?php echo JText::_('INSTALL'); ?></a>
                    <?php else: ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=dropIndexes'); ?>"><?php echo JText::_('REMOVE'); ?></a>
                    <?php endif; ?>
                <?php else:
                $this->indexes_note = JText::_('BRIDGE_PHPBB3_INSTALLED_FIRST');
            endif; ?>
            </td>
            <td><?php echo $this->indexes_note; ?></td>
        </tr>
        <tr class="<?php echo $this->patch_class; ?>">
            <td><?php echo JText::_('PHPBB3_PATCH');?></td>
            <td class="status"><span><?php echo $this->patch_status; ?></span></td>
            <td class="centeralign">
                <?php if ($this->phpbb3_installed) : ?>
                <?php if (!$this->patch_installed) : ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=applypatch&amp;patchfull=' . (int)$this->patch_full); ?>"><?php echo JText::_('INSTALL'); ?></a>
                    <?php else: ?>
                    <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=removepatch&amp;patchfull=' . (int)$this->patch_full); ?>"><?php echo JText::_('REMOVE'); ?></a>
                    <?php endif; ?>
                <?php endif; ?>
            </td>
            <td><?php echo $this->patch_note; ?></td>
        </tr>

        </tbody>
    </table>
</div>
</div>
<?php
if ($this->joomla_userplg_installed and $this->joomla_authplg_installed and $this->patch_installed and $this->phpbb3_installed and $this->phpbb3plg_installed and $this->bridge_installed) {
        echo '<div class="span12">   
		<p class="testurl">';
        echo JText::_('FULLY_INSTALLED');
	echo '<a href="'.$this->bridge_url.'" target="_new">'.$this->bridge_url.'</a>';
        echo '</p></div>';
    }
?>

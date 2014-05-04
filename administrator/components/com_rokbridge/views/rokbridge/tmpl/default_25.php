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
// load tooltip behavior
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_rokbridge/assets/css/rokbridge.css');
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'rokbridge.cancel' || document.formvalidator.isValid(document.id('rokbridge-form'))) {
			Joomla.submitform(task, document.getElementById('rokbridge-form'));
		}
		else {
			alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED'));?>');
		}
	}
</script>
<h1><?php echo JText::_('ROKBRIDGE_CONFIGURATION'); ?></h1>
<div class="width-30 fltlft">	
<form action="<?php echo JRoute::_('index.php');?>" method="post" name="adminForm" id="rokbridge-form" class="form-validate">
<?php echo JHtml::_('tabs.start', 'com_rokbridge_tabs', array('useCookie'=>true));?>
    <?php echo JHtml::_('tabs.panel', JText::_('COM_ROKBRIDGE_LEGEND_CONFIGURATION'),'tab1');?>
    	<fieldset class="adminform">
    		<ul class="adminformlist">

				<li><?php echo $this->form->getLabel('bridge_path'); ?>
				<?php echo $this->form->getInput('bridge_path'); ?></li>

				<li><?php echo $this->form->getLabel('phpbb3_path'); ?>
				<?php echo $this->form->getInput('phpbb3_path'); ?></li>

				<li><?php echo $this->form->getLabel('sef_enable'); ?>
				<?php echo $this->form->getInput('sef_enable'); ?></li>

				<li><?php echo $this->form->getLabel('sef_rewrite'); ?>
				<?php echo $this->form->getInput('sef_rewrite'); ?></li>

				<li><?php echo $this->form->getLabel('force_remember'); ?>
				<?php echo $this->form->getInput('force_remember'); ?></li>

				<li><?php echo $this->form->getLabel('link_format'); ?>
				<?php echo $this->form->getInput('link_format'); ?></li>
           </ul>
	   </fieldset>

<?php echo JHtml::_('tabs.panel', JText::_('COM_ROKBRIDGE_ADVANCED_OPTIONS'),'tab2');?>
		<fieldset class="adminform">
			
    	<ul class="adminformlist">

			<li><?php echo $this->form->getLabel('create_user_asynchroneously'); ?>
			<?php echo $this->form->getInput('create_user_asynchroneously'); ?></li>
            
			<li><?php echo $this->form->getLabel('create_user_immediately'); ?>
			<?php echo $this->form->getInput('create_user_immediately'); ?></li>

			<li><?php echo $this->form->getLabel('user_inactive'); ?>
			<?php echo $this->form->getInput('user_inactive'); ?></li>

			<li><?php echo $this->form->getLabel('group_id'); ?>
			<?php echo $this->form->getInput('group_id'); ?></li>

			<li><?php echo $this->form->getLabel('user_new'); ?>
			<?php echo $this->form->getInput('user_new'); ?></li>

			<li><?php echo $this->form->getLabel('user_delete_mode'); ?>
			<?php echo $this->form->getInput('user_delete_mode'); ?></li>

			<li><?php echo $this->form->getLabel('save_poster_username'); ?>
			<?php echo $this->form->getInput('save_poster_username'); ?></li>
           
          </ul>
	</fieldset>	
	<?php echo JHtml::_('tabs.end');?>    
    <input type="hidden" name="option" value="com_rokbridge" />
    <input type="hidden" name="task" value="" />
    <input type="hidden" name="current_bridge_path" value="<?php echo $this->current_bridge_path; ?>" />
    <?php echo JHtml::_('form.token'); ?>
</form> 
</div>

<div class="width-30 fltlft">
            <div class="note">
				<div class="corner">
                	<?php echo JText::_('INSTRUCTIONS'); ?>
				</div>
            </div>
</div>
	<div class="clr"></div>
    
    <h1><?php echo JText::_('ROKBRIDGE_STATUS'); ?></h1>
    <div class="rokbridge-status">
<table class="adminlist">
	<thead>
		<tr>
			<th class="title" width="20%"><?php echo JText::_('ELEMENT'); ?></th>
			<th width="15%"><?php echo JText::_('STATUS'); ?></th>
			<th width="15%"><?php echo JText::_('ACTION'); ?></th>
			<th width="50%"><?php echo JText::_('NOTE'); ?></th>
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
  	            <?php if ($this->bridge_install_enable) :?>
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
             	        <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=applypatch&amp;patchfull='.(int) $this->patch_full); ?>"><?php echo JText::_('INSTALL'); ?></a>
             	        <?php else: ?>
             	        <a href="<?php echo JRoute::_('index.php?option=com_rokbridge&amp;task=removepatch&amp;patchfull='.(int) $this->patch_full); ?>"><?php echo JText::_('REMOVE'); ?></a>
             	        <?php endif; ?>
         	        <?php endif; ?>
     	        </td>
     	        <td><?php echo $this->patch_note; ?></td>
     	   </tr>
	   
    </tbody>
</table>
</div>
<?php
if ($this->joomla_userplg_installed and $this->joomla_authplg_installed and $this->patch_installed and $this->phpbb3_installed and $this->phpbb3plg_installed and $this->bridge_installed) {
        echo '<p class="testurl">';
        echo JText::_('FULLY_INSTALLED');
	echo '<a href="'.$this->bridge_url.'" target="_new">'.$this->bridge_url.'</a>';
        echo '</p>';
    }
?>

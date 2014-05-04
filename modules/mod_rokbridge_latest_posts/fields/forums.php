<?php
 /**
  * @version   $Id:$
  * @author    RocketTheme http://www.rockettheme.com
  * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
  * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
  */

defined('_JEXEC' ) or die( 'Restricted access');
jimport('joomla.html.html');
jimport('joomla.form.formfield');

class JFormFieldForums extends JFormField
{
	protected  $type = 'forums';

	protected function getInput()
	{

      	// Initialize some field attributes.
        $attr = '';
        $attr .= $this->element['class'] ? ' class="'.(string) $this->element['class'].'"' : '';
        $attr .= $this->element['size'] ? ' size="'.(int) $this->element['size'].'"' : '';
        $attr .= ((string) $this->element['disabled'] == 'true' || (string)$this->element['disabled'] == 'disabled') ? ' disabled="disabled"' : '';
        $attr .= ((string)$this->element['multiple'] == 'true' || (string)$this->element['multiple'] == 'multiple') ? ' multiple="multiple"' : '';

        // Initialize JavaScript field attributes.
        $attr .= $this->element['onchange'] ? ' onchange="'.(string) $this->element['onchange'].'"' : '';

        //initiate rokbridge helper
        require_once(JPATH_ADMINISTRATOR.'/components/com_rokbridge/helpers/rokbridge.php' );
        $rokbridge = new RokBridgeHelper();
        $forum_db = $rokbridge->getDb();

        $sql = "SELECT forum_id, parent_id, left_id, forum_name from #__forums ORDER BY left_id ASC";
        $forum_db->setQuery($sql);
        $rows = $forum_db->loadObjectList();

        $children = array ();
        if ($rows) {
            foreach ($rows as $v) {
                $v->id = $v->forum_id;
                $v->title = $v->forum_name;
                $pt = $v->parent_id;
                $list = @$children[$pt]?$children[$pt]: array ();
                array_push($list, $v);
                $children[$pt] = $list;
            }
        }
        $list = JHtml::_('menu.treerecurse', 0, '', array (), $children, 9999, 0, 0);

        $items = array();
        foreach ($list as $item) {
            $item->treename = JString::str_ireplace('&#160;&#160;-', ' -', $item->treename);
            $item->treename = JString::str_ireplace('&#160;&#160;', ' -', $item->treename);
            $items[$item->id] = $item->treename;
        }

		if(count($items)){
			$options = array();
			foreach ($items as $k => $v)
			{
				$options[] = JHTML::_('select.option', $k, $v);
			}
            return JHtml::_('select.genericlist', $options, $this->name, $attr, 'value', 'text', $this->value, $this->id);
		} else
		{
            return JText::_('ROKBRIDGE_NO_FORUMS');
		}
	}
}
<?php
  class Utils
  {
      public static function GetRadioButtons($name, $assocArr, $defaultValue = null)
      {
         $html = "";
         foreach($assocArr as $value => $title)
         {
            if ($value == $defaultValue)
                $checked = ' checked="checked"';
            else
                $checked = '';
            $html .= '<div><label><input type="radio" name="'.$name.'" value="'.$value.'"'.$checked.' /> '.$title.'</label></div>'; 
         }            
         return $html;
      }
      public static function ArrayFilter($assocArr, $fields)
      {
          $newArray = array();
          foreach($assocArr as $key => $value)
             if (in_array($key, $fields))
                $newArray[$key] = $value;  

          /*foreach($assocArr as $key => $value)
             if (!in_array($key, $fields))
                unset($assocArr[$key]);  */

          return $newArray;
      }
  }
?>
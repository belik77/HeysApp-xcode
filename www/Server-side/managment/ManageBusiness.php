<?php
################################################################################
##                                                                             #
##  Version 3.1.0  (26.10.2006)                                                #
##  Author: Leumas Naypoka                                                     #
##  Lisence: GNU GPL                                                           #
##  Site: http://phpbuilder.blogspot.com                                       #
##                                                                             #
################################################################################
##  Creating & Calling
##  ----------------------------------------------------------------------------
  require_once('datagrid/datagrid.class.php');
##
##  1.
##  *** creating variables that we need for database connection 
  $DB_USER='sec_user';            /* usually like this: prefix_name             */
  $DB_PASS='ELIPGZr59zAa2BEWU';                /* must be already enscrypted (recommended)   */
  $DB_HOST='localhost';       /* usually localhost                          */
  $DB_NAME='businessdb';          /* usually like this: prefix_dbName           */
//
  ob_start();
  $db_conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASS);
  mysql_select_db($DB_NAME,$db_conn);
##  *** put primary key on the first place 
  $sql = "SELECT * FROM Business ;";       
  $dgrid = new DataGrid();
  $dgrid->dataSource($db_conn, $sql);	    
##
##  General Settings
##  ----------------------------------------------------------------------------
##  *** set unique prefix
  $u_prefix = "_abc";
  $dgrid->setUniqueNames($u_prefix); 
##  *** set direction: "ltr" or "rtr"
  $direction = "ltr";
  $dgrid->setDirection($direction);
##  *** set layouts: 0 - tabular(horizontal) - default, 1 - columnar(vertical) 
  $layouts = array("view"=>0, "edit"=>1, "filter"=>1); 
  $dgrid->setLayouts($layouts);
##  *** set other modes
  $modes = array(
      "add"=>array("view"=>true, "edit"=>false),
      "edit"=>array("view"=>true, "edit"=>true, "byfield"=>"FieldName"),
      "cancel"=>array("allow"=>true,"view"=>true, "edit"=>true),
      "details"=>array("view"=>true, "edit"=>false),
      "delete"=>array("view"=>true, "edit"=>true)
  );
  $dgrid->setModes($modes);
##  *** set nowrap attributes for all columns
  $wrap = "nowrap";
  $dgrid->setColumnsNoWrap($wrap);
##  *** set CSS class for datagrid: "default" or "like adwords" or "salomon" 
  $css_class = "default";
  $dgrid->setCssClass($css_class);
##
##  Sorting & Paging Settings: 
##  ----------------------------------------------------------------------------
##  *** set sorting option: true(default) or false 
  $s_option = true;
  $dgrid->allowSorting($s_option);               
##  *** set paging option: true(default) or false 
  $p_option = true;
  $dgrid->allowPaging($p_option);
##  *** set paging settings
  $bottom_paging = array("results"=>true, "results_align"=>"left", "pages"=>true, "pages_align"=>"center", "page_size"=>true, "page_size_align"=>"right");
  $top_paging = array("results"=>true, "results_align"=>"left", "pages"=>true, "pages_align"=>"center", "page_size"=>true, "page_size_align"=>"right");
  $dgrid->setPagingSettings($bottom_paging, $top_paging);
##
##  Filter Settings
##  ----------------------------------------------------------------------------
##  *** set filtering option: true or false(default)
  $f_option = true;
  $dgrid->allowFiltering(true);
##  *** set fileds in filtering mode:  
  $f_fileds = array(
      "FieldName_1"=>array("table"=>"tableName_1", "field"=>"filedName_1", "operator"=>false/true),
      "FieldName_2"=>array("table"=>"tableName_2", "field"=>"filedName_2", "operator"=>false/true),
      "FieldName_3"=>array("table"=>"tableName_3", "field"=>"filedName_3", "operator"=>false/true)
  );
  $dgrid->setFieldsFiltering($f_fileds);
##
##  View Mode Settings: 
##  ----------------------------------------------------------------------------
##  *** set columns in view mode
  $vm_colimns = array(
      "FieldName_1"=>array("header"=>"Name_A","type"=>"label", "text_length"=>"-1"),
      "FieldName_2"=>array("header"=>"Name_B","type"=>"image", "text_length"=>'-1'),
      "FieldName_3"=>array("header"=>"Name_C","type"=>"link", "href"=>"www.yahoo.com", "target"=>"_new", "text_length"=>"-1"),
      "FieldName_4"=>array("header"=>"Name_D","type"=>"link", "field"=>"field_name", "prefix"=>"http://", "target"=>"_new", "text_length"=>"-1"),
      "FieldName_5"=>array("header"=>"Name_E","type"=>"password", "text_length"=>"-1")
  );
  $dgrid->setColumnsInViewMode($vm_colimns);
##
##  Edit Mode Settings:
##  ----------------------------------------------------------------------------
##  ***  set settings for details mode                             
  $table_name = "Bussiness";
  $primary_key = "Id";
  $dgrid->setTableEdit($table_name, $primary_key);
##  *** set columns in edit mode 
  $em_columns = array(
      "Name1"=>array("header"=>"Name_A","type"=>"textbox","req_type"=>"rt", "title"=>"Short Description"),
      "Name2"=>array("header"=>"Name_B","type"=>"textarea","req_type"=>"rt", "title"=>"Short Description"),
      "Name3"=>array("header"=>"Name_C","type"=>"label","req_type"=>"rt", "title"=>"Short Description"),
      "Name4"=>array("header"=>"Name_D","type"=>"date","req_type"=>"rt", "title"=>"Short Description")
  );
  $dgrid->setColumnsInEditMode($em_columns);
##  *** set foreign keys for edit mode 
//  $f_keys = array(
//      "ForeignKey_1"=>array("table"=>"TableName_1", "field_key"=>"FieldKey_1", "field_name"=>"FieldValue_1", "view_type"=>"combobox(defailt)/radiobutton/checkbox"),
//      "ForeignKey_2"=>array("table"=>"TableName_2", "field_key"=>"FieldKey_2", "field_name"=>"FieldValue_2", "view_type"=>"combobox(defailt)/radiobutton/checkbox")
//  ); 
//  $dgrid->setForeignKeysEdit($f_keys);
##
##  Bind the DataGrid:
##  ----------------------------------------------------------------------------
##  *** set debug mode & messaging options
  $debug_mode = false;
  $messaging = true;      
  $dgrid->bind($debug_mode, $messaging);        
  ob_end_flush();
##
################################################################################   
        
?>
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
//  require_once('datagrid/datagrid.class.php');
##
##  1.
##  *** creating variables that we need for database connection 
//  $DB_USER='name';            /* usually like this: prefix_name             */
//  $DB_PASS='';                /* must be already enscrypted (recommended)   */
//  $DB_HOST='localhost';       /* usually localhost                          */
//  $DB_NAME='dbName';          /* usually like this: prefix_dbName           */
//
//  ob_start();
//  $db_conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASS);
//  mysql_select_db($DB_NAME,$db_conn);
##  *** put primary key on the first place 
//  $sql = "SELECT * FROM tableName ;";       
//  $dgrid = new DataGrid();
//  $dgrid->dataSource($db_conn, $sql);	    
##
##  General Settings
##  ----------------------------------------------------------------------------
##  *** set unique prefix
//  $u_prefix = "_abc";
//  $dgrid->setUniqueNames($u_prefix); 
##  *** set direction: "ltr" or "rtr"
//  $direction = "ltr";
//  $dgrid->setDirection($direction);
##  *** set layouts: 0 - tabular(horizontal) - default, 1 - columnar(vertical) 
//  $layouts = array("view"=>0, "edit"=>1, filter=1); 
//  $dgrid->setLayouts($layouts);
##  *** set other modes
//  $modes = array(
//      "add"=>array("view"=>true, "edit"=>false),
//      "edit"=>array("view"=>true, "edit"=>true, "byfield"=>"FieldName"),
//      "cancel"=>array("allow"=>true,"view"=>true, "edit"=>true),
//      "details"=>array("view"=>true, "edit"=>false),
//      "delete"=>array("view"=>true, "edit"=>true)
//  );
//  $dgrid->setModes($modes);
##  *** set nowrap attributes for all columns
//  $wrap = "nowrap";
//  $dgrid->setColumnsNoWrap($wrap);
##  *** set CSS class for datagrid: "default" or "like adwords" or "salomon" 
//  $css_class = "default";
//  $dgrid->setCssClass($css_class);
##
##  Sorting & Paging Settings: 
##  ----------------------------------------------------------------------------
##  *** set sorting option: true(default) or false 
//  $s_option = true;
//  $dgrid->allowSorting($s_option);               
##  *** set paging option: true(default) or false 
//  $p_option = true;
//  $dgrid->allowPaging($p_option);
##  *** set paging settings
//  $bottom_paging = array("results"=>true, "results_align"=>"left", "pages"=>true, "pages_align"=>"center", "page_size"=>true, "page_size_align"=>"right");
//  $top_paging = array("results"=>true, "results_align"=>"left", "pages"=>true, "pages_align"=>"center", "page_size"=>true, "page_size_align"=>"right");
//  $dgrid->setPagingSettings($bottom_paging, $top_paging);
##
##  Filter Settings
##  ----------------------------------------------------------------------------
##  *** set filtering option: true or false(default)
//  $f_option = true;
//  $dgrid->allowFiltering(true);
##  *** set fileds in filtering mode:  
//  $f_fileds = array(
//      "FieldName_1"=>array("table"=>"tableName_1", "field"=>"filedName_1", "operator"=>false/true),
//      "FieldName_2"=>array("table"=>"tableName_2", "field"=>"filedName_2", "operator"=>false/true),
//      "FieldName_3"=>array("table"=>"tableName_3", "field"=>"filedName_3", "operator"=>false/true)
//  );
//  $dgrid->setFieldsFiltering($f_fileds);
##
##  View Mode Settings: 
##  ----------------------------------------------------------------------------
##  *** set columns in view mode
//  $vm_colimns = array(
//      "FieldName_1"=>array("header"=>"Name_A","type"=>"label", "text_length"=>"-1"),
//      "FieldName_2"=>array("header"=>"Name_B","type"=>"image", "text_length"=>'-1'),
//      "FieldName_3"=>array("header"=>"Name_C","type"=>"link", "href"=>"www.yahoo.com", "target"=>"_new", "text_length"=>"-1"),
//      "FieldName_4"=>array("header"=>"Name_D","type"=>"link", "field"=>"field_name", "prefix"=>"http://", "target"=>"_new", "text_length"=>"-1"),
//      "FieldName_5"=>array("header"=>"Name_E","type"=>"password", "text_length"=>"-1")
//  );
//  $dgrid->setColumnsInViewMode($vm_colimns);
##
##  Edit Mode Settings:
##  ----------------------------------------------------------------------------
##  ***  set settings for details mode                             
//  $table_name = "table_name";
//  $primary_key = "primary_key";
//  $dgrid->setTableEdit($table_name, $primary_key);
##  *** set columns in edit mode 
//  $em_columns = array(
//      "Name1"=>array("header"=>"Name_A","type"=>"textbox","req_type"=>"rt", "title"=>"Short Description"),
//      "Name2"=>array("header"=>"Name_B","type"=>"textarea","req_type"=>"rt", "title"=>"Short Description"),
//      "Name3"=>array("header"=>"Name_C","type"=>"label","req_type"=>"rt", "title"=>"Short Description"),
//      "Name4"=>array("header"=>"Name_D","type"=>"date","req_type"=>"rt", "title"=>"Short Description")
//  );
//  $dgrid->setColumnsInEditMode($em_columns);
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
//  $debug_mode = false;
//  $messaging = true;      
//  $dgrid->bind($debug_mode, $messaging);        
//  ob_end_flush();
##
################################################################################   
        

class DataGrid
{
    //==========================================================================
    // Data Members
    //==========================================================================

    // rows and columns data members -------------------------------------------
    var $rows;
    var $rowLower;
    var $rowUpper;
    var $columns;            
    var $colLower;
    var $colUpper;
    // data source -------------------------------------------------------------
    var $db_handler;
    var $sql;
    var $sql_view;
    var $dataSet;
    // direction ---------------------------------------------------------------
    var $direction;
    // layout style ------------------------------------------------------------
    var $layouts;  
    // paging variables --------------------------------------------------------
    var $pages_total;
    var $page_current;
    var $req_page_size;
    var $allow_paging;
    var $lower_paging;
    var $upper_paging;    
    // sorting variables -------------------------------------------------------
    var $sort_field;
    var $sort_type;
    var $allow_sorting;
    var $sql_sort;
    // filtering variables -----------------------------------------------------
    var $allow_filtering;
    var $filter_fields;
    // columns style parameters ------------------------------------------------            
    var $nowrap;
    // css style ---------------------------------------------------------------            
    var $css_class;
    var $class_table;
    var $class_tr;
    var $class_th;
    var $class_td;
    var $class_a;
    var $class_a2;
    
    var $headerColor;
    var $tdColor;
    var $rowColor;
    var $rowColor2;
    var $rowColor3;
    var $rowColor4;
    var $rowColor5;
    
    
    // table style parameters --------------------------------------------------                        
    var $tblAlign;
    var $tblWidth;
    var $tblBorder;
    var $tblBorderColor;
    var $tblCellSpacing;
    var $tblCellPadding;
    
    // datagrid modes ----------------------------------------------------------                        
    var $modes;
    var $mode;
    var $rid;
    var $tblName;
    var $keyFieldName;
    //var $fieldsEditArray;
    var $fieldsAsHypertextArray;
    var $foreign_keys_array;
    var $columns_view_mode;
    var $columns_edit_mode;
    // debug mode --------------------------------------------------------------                        
    var $debug;
    // message -----------------------------------------------------------------                        
    var $act_msg;
    var $messaging;

    //==========================================================================
    // Member Functions 
    //==========================================================================

    //--------------------------------------------------------------------------
    // default constructor 
    //--------------------------------------------------------------------------
    function DataGrid(){
        $this->setCommonJavaScript();
        $this->setFormChecking();
        $this->setCalendar();
        $this->unique_extention = "";    
        $this->css_class = "default";
        
        $this->rows = 0;
        $this->rowLower = 0;
        $this->rowUpper = 0;
        $this->columns = 0;            
        $this->colLower = 0;
        $this->colUpper = 0;
        
        $this->direction = "ltr";
        $this->layouts['view'] = 0;
        $this->layouts['edit'] = 1;
        $this->layouts['filter'] = 1;
        
        $this->pages_total = 0;
        $this->page_current = 0;
        $this->req_page_size = 10;
                
        $this->allow_paging = false;
        $this->lower_paging['results'] = false;
        $this->lower_paging['results_align'] = "left";
        $this->lower_paging['pages'] = false;        
        $this->lower_paging['pages_align'] = "center";
        $this->lower_paging['page_size'] = false;
        $this->lower_paging['page_size_align'] = "right";
        $this->upper_paging['results'] = false;
        $this->upper_paging['results_align'] = "left";
        $this->upper_paging['pages'] = false;        
        $this->upper_paging['pages_align'] = "center";
        $this->upper_paging['page_size'] = false;
        $this->upper_paging['page_size_align'] = "right";
        
        $this->sort_field = "";
        $this->sort_type = "";
        $this->allow_sorting = true;
        $this->sql_view = "";
        $this->sql = "";
        $this->sql_sort = "";
        
        $this->allow_filtering = false;
        $this->filter_fields = array();
        
        $this->tblAlign['view'] = "center";         $this->tblAlign['edit'] = "center";     $this->tblAlign['details'] = "center";
        $this->tblWidth['view'] = "90%";            $this->tblWidth['edit'] = "90%";        $this->tblWidth['details'] = "90%";
        $this->tblBorder['view'] = "1";             $this->tblBorder['edit'] = "1";         $this->tblBorder['details'] = "1";
        $this->tblBorderColor['view'] = "#000000";  $this->tblBorderColor['edit'] = "#000000"; $this->tblBorderColor['details'] = "#000000";
        $this->tblCellSpacing['view'] = "0";        $this->tblCellSpacing['edit'] = "0";    $this->tblCellSpacing['details'] = "0";
        $this->tblCellPadding['view'] = "0";        $this->tblCellPadding['edit'] = "0";    $this->tblCellPadding['details'] = "0";
        
        $this->modes = "";
        $this->mode = "view";
        $this->rid = "";
        $this->tblName ="";
        $this->keyFieldName = 0;
        //$this->fieldsEditArray = "";
        $this->fieldsAsHypertextArray = "";
        $this->foreign_keys_array = array();
        
        $this->columns_view_mode =array();
        $this->columns_edit_mode =array();
              
        $this->nowrap = "";
        $this->debug = false;
        $this->messaging = true;

    }

    //--------------------------------------------------------------------------
    // set unique names
    //--------------------------------------------------------------------------
    function setUniqueNames($unique_names = ""){
        $this->unique_extention = $unique_names;
    }

    //--------------------------------------------------------------------------
    // set css class
    //--------------------------------------------------------------------------
    function setCssClass($class = "default"){
        $this->css_class = $class;
        if(strtolower($this->css_class) == "like adwords"){
            //cellspacing"=>"0", "cellpadding"=>"
            $this->class_table  = '.class_table {font-size: 14px;font-family: Arial, Helvetica, sans-serif;align: center; width: 90%; border-collapse: collapse; border: 1px solid #3f7c5f; font: normal 80%/140% arial, verdana, helvetica, sans-serif; color: #000; background: #fff;}';
            $this->class_tr ="";
            $this->class_th  = '.class_th {border: 1px solid #e0e0e0; border-bottom: 1px solid #3f7c5f; text-align: center; font-size: 1.3em; font-weight: bold; background: #c6d7cf; padding: 0.3em;}';
            $this->class_td_main  = '.class_td_main {border: 1px solid #e0e0e0; font-size: 1.3em; padding: 0.15em;}';
            $this->class_td  = '.class_td {border: 1px solid #e0e0e0; font-size: 1.3em; padding: 0.15em;}';
            $this->class_a   = 'a.class_a {background: transparent; color: #3f7c5f; text-decoration: none; font-weight: bold;}';
            $this->class_a  .= 'a.class_a:hover {background: transparent; color: #6fac8f; text-decoration: none; font-weight: bold;}';
            //$this->class_a  .= 'a.class_a:visited {color: #b98b00; font-weight: bold;}';
            $this->class_a2  = 'a.class_a2 {background: transparent; color: #3f7c5f; text-decoration: none; }';
            $this->class_a2 .= 'a.class_a2:hover {background: transparent; color: #6fac8f; text-decoration: none; }';
            //$this->class_a2 .= 'a.class_a2:visited {color: #b98b00; }';
            $this->rowColor="#ffffff";
            $this->rowColor2="#e4f5ef";            
            $this->rowColor3="#ffffff";
            $this->rowColor4="#e4f5ef";
            $this->rowColor5="#d4e5df";            
        }else if(strtolower($this->css_class) == "salomon") {
            $this->css_class = "default";
            $this->class_table  = '.class_table {font-size: 14px;font-family: Arial, Helvetica, sans-serif;align: center; width: 90%; border:1px solid #000;border-collapse:collapse;margin:0;padding:0;}';
            $this->class_th  = '.class_th { padding:0.5em;vertical-align:top;font-weight:normal;border:1px solid #ccc; border-bottom: 1px solid #000; border-collapse:collapse;margin:0; text-transform:uppercase;background:#666;color:#fff;background:#999;}';
            $this->class_td_main  = '.class_td_main {padding:0.10em;vertical-align:center;font-weight:normal;border:1px solid #ccc;border-collapse:collapse;margin:0;font-size: 1.1em;}}';
            $this->class_td  = '.class_td {padding:0.10em;vertical-align:center;font-weight:normal;border:1px solid #ccc;border-collapse:collapse;margin:0;font-size: 1.1em;}}';
            $this->class_a   = 'a.class_a {background: transparent; color: #000075; text-decoration: none; font-weight: bold;}';
            $this->class_a  .= 'a.class_a:hover {background: transparent; color: #aaaaaa; text-decoration: none; font-weight: bold;}';
            //$this->class_a  .= 'a.class_a:visited {color: #000075; font-weight: bold;}';
            $this->class_a2  = 'a.class_a2 {background: transparent; color: #000075; text-decoration: none; }';
            $this->class_a2 .= 'a.class_a2:hover {background: transparent; color: #aaaaaa; text-decoration: none; }';
            //$this->class_a2 .= 'a.class_a2:visited {color: #000075; }';
            $this->rowColor="#f0f0f0";
            $this->rowColor2="#e0e0e0";            
            $this->rowColor3="#d0d0d0";
            $this->rowColor4="#c0c0c0";
            $this->rowColor5="#fcfbfa";            
        }else {
            $this->css_class = "default";
            $this->class_table  = ".class_table {font-family: Arial, Helvetica, sans-serif;border:1px solid #000000;font-size: 14px;border-collapse:collapse;margin:0;padding:0;}";
            $this->class_th =".class_th{line-height: 22px;font-weight: bold;color: #303030;background-color: #dedede;text-indent: 7px;text-align: center;vertical-align:center;border:1px solid #d0d0d0;}";            
            //$this->class_td_main  = '.class_td_main {padding:0.10em;vertical-align:center;font-weight:normal;border:1px solid #ccc;border-collapse:collapse;margin:0;font-size: 1.1em;}}';
            $this->class_td_main =".class_td_main{line-height: 18px;font-weight: bold;color: #000000;text-indent: 7px;text-align: center;vertical-align:center;border:1px solid #e0e0e0;}";
            $this->class_td_main =".class_td{vertical-align:center;line-height: 18px;text-indent: 7px;text-align: center;border:1px solid #e0e0e0;}";            
            //$this->class_td  = '.class_td {padding:0.10em;vertical-align:center;font-weight:normal;border:1px solid #ccc;border-collapse:collapse;margin:0;font-size: 1.1em;}}';
            $this->class_a   = 'a.class_a {background: transparent; color: #225588; text-decoration: none; }'; //font-weight: bold;
            $this->class_a  .= 'a.class_a:hover {background: transparent; color: #6699bb; text-decoration: none; }';
            //$this->class_a  .= 'a.class_a:visited {color: #000075; font-weight: bold;}';
            $this->class_a2  = 'a.class_a2 {background: transparent; color: #000075; text-decoration: none; }';
            $this->class_a2 .= 'a.class_a2:hover {background: transparent; color: #aaaaaa; text-decoration: none; }';
            //$this->class_a2 .= 'a.class_a2:visited {color: #000075; }';
            $this->rowColor="#f9f9f9";
            $this->rowColor2="#f0f0f0";            
            $this->rowColor3="#f0f0f0";
            $this->rowColor4="#dedede";
            $this->rowColor5="#FEFFE8";            
        }        
    }

    //--------------------------------------------------------------------------
    // write css class
    //--------------------------------------------------------------------------
    function writeCssClass(){
        echo "<style>";
        echo $this->class_table;
        echo $this->class_tr;
        echo $this->class_th;
        echo $this->class_td_main;
        echo $this->class_td;
        echo $this->class_a;
        echo $this->class_a2;
        echo "</style>";    
    }

    //--------------------------------------------------------------------------
    // set data source 
    //--------------------------------------------------------------------------
    function dataSource($db_handl, $sql){
        $this->db_handler = $db_handl;
        $this->sql_view = $sql;
        $this->sql = $sql;        

        if(isset($_REQUEST['sort_field'])) $this->sql_sort = " ORDER BY ".$_REQUEST['sort_field']." ".$_REQUEST['sort_type'];
        else if(!substr_count($this->sql, "ORDER BY"))  $this->sql_sort = " ORDER BY 1 DESC ";
        $this->getDataSet($this->sql_sort);            
    }    

    //--------------------------------------------------------------------------
    // get DataSet
    //--------------------------------------------------------------------------
    function getDataSet($fsort, $limit=""){
        //echo $this->sql.$fsort." ".$limit."<br>";
	$sqlVariabls=array( 'character_set_client'=>'utf8',
            'character_set_server'=>'utf8',
            'character_set_results'=>'utf8',
            'character_set_database'=>'utf8',
            'character_set_connection'=>'utf8',
            'collation_server'=>'utf8_unicode_ci',
            'collation_database'=>'utf8_unicode_ci',
            'collation_connection'=>'utf8_unicode_ci'
	);
	foreach($sqlVariabls as $var => $value){
		$sql="SET $var=$value;";
		@mysql_query($sql,$this->db_handler);
	}
        
        $this->dataSet = mysql_query($this->sql.$fsort." ".$limit, $this->db_handler);        
        if ((!$this->dataSet) || (mysql_affected_rows($this->db_handler) <= 0) ){
              //die('DataGrid error: ' . mysql_error());
            //die('DataGrid error!');
            if(!$this->allow_filtering) $this->noDataFound();
            //exit;
        }
        $this->rows = ($this->dataSet) ? mysql_num_rows($this->dataSet) : 0;
        $this->rowLower = 0;
        $this->rowUpper = $this->rows;

        $this->colLower = 0;
        $this->columns = ($this->dataSet) ? mysql_num_fields($this->dataSet) : 0;
        $this->colUpper = $this->columns;
    }
    
    //--------------------------------------------------------------------------
    // bind data and draw 
    //--------------------------------------------------------------------------
    function bind($debug_mode = false, $messaging = true){
        $this->debug = $debug_mode;
        if($this->debug) error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
        $this->messaging = $messaging;
        
        //$this->mode
        if(isset($_REQUEST['mode']) && ($_REQUEST['mode'] === "delete") && (isset($_REQUEST['rid']))){          
           $this->rid = $_REQUEST['rid'];
           $this->sql = $this->sql_view; $this->getDataSet($this->sql_sort);            
           $this->deleteRow($this->rid);
           $this->mode = "view";
        }
        if(isset($_REQUEST['mode']) && ($_REQUEST['mode'] === "details") && (isset($_REQUEST['rid']))){          
            if(isset($_REQUEST['new']) && (isset($_REQUEST['new']) == 1)){
                $sql = $this->sql . " ORDER BY " . $this->keyFieldName . " DESC";                
                $this->dataSet = mysql_query($sql, $this->db_handler);            
            }
            $this->rid = $_REQUEST['rid'];           
            $this->allowSorting(false);
            $this->allowPaging(false);            
            $this->sql_sort = " ORDER BY " . $this->keyFieldName . " DESC";
            if($this->layouts['view'] == 0){
                $view_limit = "LIMIT 0, ".$_REQUEST['page_size'];
            }
            $this->sql = "SELECT * FROM $this->tblName WHERE ".$this->keyFieldName." <= ".$_REQUEST['rid']." "; $this->getDataSet($this->sql_sort, $view_limit);            

        }
        if(isset($_REQUEST['mode']) && (($_REQUEST['mode'] === "edit") || ($_REQUEST['mode'] === "details")) && (isset($_REQUEST['rid']))){          
            if(isset($_REQUEST['new']) && (isset($_REQUEST['new']) == 1)){
                $sql = $this->sql . " ORDER BY " . $this->keyFieldName . " DESC";                
                $this->dataSet = mysql_query($sql, $this->db_handler);            
            }
            $this->rid = $_REQUEST['rid'];           
            $this->allowSorting(false);
            $this->allowPaging(false);            
            $this->sql_sort = " ORDER BY " . $this->keyFieldName . " DESC";
            if($this->layouts['view'] == 0){
                $view_limit = "LIMIT 0, ".$_REQUEST['page_size'];
            }
            $this->sql = "SELECT * FROM $this->tblName WHERE ".$this->keyFieldName." <= ".$_REQUEST['rid']." "; $this->getDataSet($this->sql_sort, $view_limit);            
            if($_REQUEST['mode'] === "edit") $this->mode = "edit";
            else $this->mode = "details";           
        }
        if(isset($_REQUEST['mode']) && ($_REQUEST['mode'] === "cancel")){
           $this->rid = "";
           $this->sql = $this->sql_view; $this->getDataSet($this->sql_sort);            
           $this->mode = "view";           
        }
        if(isset($_REQUEST['mode']) && ($_REQUEST['mode'] === "update")){                                
           $this->rid = $_REQUEST['rid'];
           $this->sql = "SELECT * FROM $this->tblName "; $this->getDataSet($this->sql_sort);            
           if(isset($_REQUEST['new'])) $this->updateRow($this->rid, $_REQUEST['new']); else $this->updateRow($this->rid, "");
           $this->sql = $this->sql_view; $this->getDataSet($this->sql_sort);                                  
           $this->mode = "view";          
        }
        if(isset($_REQUEST['mode']) && ($_REQUEST['mode'] === "add")){                                
           $this->sql = "SELECT * FROM $this->tblName "; $this->getDataSet($this->sql_sort);            
           $this->addRow();
           $this->allowSorting(false);
           $this->allowPaging(false);
           $this->mode = "edit";
        }
        if($this->dataSet){
            if(($this->mode === "edit") || ($this->mode === "add")) $layout_type = "edit";
            else if($this->mode === "details") $layout_type = "show";
            else $layout_type = "view";
            if($this->layouts[$layout_type] == 0) $this->draw_tabular();
            else if($this->layouts[$layout_type] == 1) $this->draw_columnar();
            else $this->draw_tabular();
        }

    }

    //--------------------------------------------------------------------------
    // bind data and draw in AJAX style
    //--------------------------------------------------------------------------    
    function bindXajax($p, $page_size){
        if($this->dataSet){        
            if($this->layouts['view'] == 0) return $this->draw_tabular_Ajax($p, $page_size);
            else return $this->draw_tabular_Ajax($p, $page_size);
        }
    }    

    //--------------------------------------------------------------------------
    // set direction
    //--------------------------------------------------------------------------
    function setDirection($direction = "ltr"){
        $this->direction = $direction;
    }

    //--------------------------------------------------------------------------
    // set settings functions
    //--------------------------------------------------------------------------
    function setLayouts($layouts = ""){
        $this->layouts['view']  = (isset($layouts['view'])) ? $layouts['view'] : 0;
        $this->layouts['edit']  = (isset($layouts['edit'])) ? $layouts['edit'] : 0;
        $this->layouts['filter'] = (isset($layouts['filter'])) ? $layouts['filter'] : 0;
        $this->layouts['show'] = 1;
    }
    function setColumnsNoWrap($nowrap){ $this->nowrap = $nowrap; }
    function setTableSettings($parameters){
        if(isset($parameters['view']['align'])) $this->tblAlign['view'] = $parameters['view']['align'];
        if(isset($parameters['view']['width'])) $this->tblWidth['view'] = $parameters['view']['width'];
        if(isset($parameters['view']['border'])) $this->tblBorder['view'] = $parameters['view']['border'];
        if(isset($parameters['view']['bordercolor'])) $this->tblBorderColor['view'] = $parameters['view']['bordercolor'];
        if(isset($parameters['view']['cellspacing'])) $this->tblCellSpacing['view'] = $parameters['view']['cellspacing'];
        if(isset($parameters['view']['cellpadding'])) $this->tblCellPadding['view'] = $parameters['view']['cellpadding'];

        if(isset($parameters['edit']['align'])) $this->tblAlign['edit'] = $parameters['edit']['align']; else $parameters['view']['align'];
        if(isset($parameters['edit']['width'])) $this->tblWidth['edit'] = $parameters['edit']['width']; else $parameters['view']['width'];
        if(isset($parameters['edit']['border'])) $this->tblBorder['edit'] = $parameters['border']; else $parameters['view']['border'];
        if(isset($parameters['edit']['bordercolor'])) $this->tblBorderColor['edit'] = $parameters['edit']['bordercolor']; else $parameters['view']['bordercolor'];
        if(isset($parameters['edit']['cellspacing'])) $this->tblCellSpacing['edit'] = $parameters['edit']['cellspacing']; else $parameters['view']['cellspacing'];
        if(isset($parameters['edit']['cellpadding'])) $this->tblCellPadding['edit'] = $parameters['edit']['cellpadding']; else $parameters['view']['cellpadding'];

    }
    function setPagingSettings($lower=false, $upper=false){
        if($lower){
            if($lower['results']) $this->lower_paging['results'] = $lower['results'];
            if($lower['results_align']) $this->lower_paging['results_align'] = $lower['results_align'];
            if($lower['pages']) $this->lower_paging['pages'] = $lower['pages'];            
            if($lower['pages_align']) $this->lower_paging['pages_align'] = $lower['pages_align'];
            if($lower['page_size']) $this->lower_paging['page_size'] = $lower['page_size'];
            if($lower['page_size_align']) $this->lower_paging['page_size_align'] = $lower['page_size_align'];
        }
        if($upper){
            if($upper['results']) $this->upper_paging['results'] = $upper['results'];
            if($upper['results_align']) $this->upper_paging['results_align'] = $upper['results_align'];
            if($upper['pages']) $this->upper_paging['pages'] = $upper['pages'];            
            if($upper['pages_align']) $this->upper_paging['pages_align'] = $upper['pages_align'];
            if($upper['page_size']) $this->upper_paging['page_size'] = $upper['page_size'];
            if($upper['page_size_align']) $this->upper_paging['page_size_align'] = $upper['page_size_align'];
        }            
    }
    function allowSorting($option = true){ $this->allow_sorting = $option; }    
    function allowPaging($option = true){ $this->allow_paging = $option; }
    function allowFiltering($option = false){ $this->allow_filtering = $option; }
    
    function setFieldsFiltering($filter_fields_array = ""){
        if(is_array($filter_fields_array)){
            foreach($filter_fields_array as $fldName => $fldValue){
                $this->filter_fields[$fldName] = $fldValue;
            }           
            if(isset($_REQUEST['onSUBMIT_FILTER'])){
                $search_type_start = "AND";
                if(isset($_REQUEST['selSearchType']) && ($_REQUEST['selSearchType'] == "0")){
                    $search_type = "AND";                    
                }else{
                    $search_type = "OR";
                }
                if(substr_count("where", $this->sql_view) <= 0) $this->sql_view .= " WHERE 1=1 ";
                foreach($filter_fields_array as $fldName => $fldValue){
                    $table_filed_name="";
                    $table_filed_name = $fldValue['table']."_".$fldValue['field'];
                    //if(isset($_REQUEST[$table_filed_name]) AND ($_REQUEST[$table_filed_name] != ""))
                    if(isset($_REQUEST[$table_filed_name]) && trim($_REQUEST[$table_filed_name]) !== ""){                        
                            $filter_field_operator =  $table_filed_name."_operator";
                            if(isset($_REQUEST[$filter_field_operator])){
                                $this->sql_view .= " $search_type_start ".$fldValue['table'].'.'.$fldValue['field']." ".$_REQUEST[$filter_field_operator]." '".$_REQUEST[$table_filed_name]."'";                                     
                            }else{
                                $this->sql_view .= " $search_type_start ".$fldValue['table'].'.'.$fldValue['field']."='".$_REQUEST[$table_filed_name]."'";
                            }                                                        
                            if($search_type_start !== $search_type){
                               $search_type_start = $search_type; 
                            }
                        }
                }
                //$this->sql_view .= ")";
                if($this->debug) echo $this->debug."search sql: ". $this->sql_view."<br>";
                $this->dataSource($this->db_handler, $this->sql_view);
            }
        }        
    }
    
    //--------------------------------------------------------------------------
    // set mode add/edit/cancel/delete
    //--------------------------------------------------------------------------
    function setModes($parameters){
        $this->modes = array();
        if(is_array($parameters)){
            foreach($parameters as $modeName => $modeValue){
                $this->modes[$modeName] = $modeValue;
            }            
        }
        $this->mode = "view";
    }  	    

    //--------------------------------------------------------------------------
    // set editing table & primary key Id
    //--------------------------------------------------------------------------
    function setTableEdit($tbl_name, $filed_name){
        $this->tblName = $tbl_name;
        $this->keyFieldName = $filed_name;
    }

    //--------------------------------------------------------------------------
    // set Fields As Hypertext
    //--------------------------------------------------------------------------    
    function setFieldsAsHypertext($fieldsArray = ""){
        $this->fieldsAsHypertextArray = array();
        if(is_array($fieldsArray)){                                
            $this->fieldsAsHypertextArray = array_merge($this->fieldsAsHypertextArray, $fieldsArray);
        }
    }   

    //--------------------------------------------------------------------------
    // set set Foreign Keys Editing
    //--------------------------------------------------------------------------    
    function setForeignKeysEdit($foreign_keys_array = ""){
        if(is_array($foreign_keys_array)){                
            foreach($foreign_keys_array as $fldName => $fldValue){
                $this->foreign_keys_array[$fldName] = $fldValue;
            }
        }
    }

    //--------------------------------------------------------------------------
    // set Columns in View Mode
    //--------------------------------------------------------------------------    
    function setColumnsInViewMode($columns = ""){
        if(is_array($columns)){        
            foreach($columns as $fldName => $fldValue){
                $this->columns_view_mode[$fldName] = $fldValue;
            }
        }
    }

    //--------------------------------------------------------------------------
    // set Columns in Edit Mode
    //--------------------------------------------------------------------------    
    function setColumnsInEditMode($columns = ""){
        if(is_array($columns)){                
            foreach($columns as $fldName => $fldValue){
                $this->columns_edit_mode[$fldName] = $fldValue;
            }
        }
    }


    //--------------------------------------------------------------------------
    // table draw functions 
    //--------------------------------------------------------------------------
    function tblOpen($ajax=false){
        $text = "<table dir='".$this->direction."' id='grdTbl' class='class_table' align='".$this->tblAlign[$this->mode]."' width='".$this->tblWidth[$this->mode]."'>".chr(13);
        if($ajax) return $text; else echo $text;
    }
    function tblClose($ajax=false){
        $text = "</table>".chr(13);
        if($ajax) return $text; else echo $text;    
    }
    function rowOpen($id, $rowColor, $ajax=false){
        $text = "<tr class='class_tr' bgcolor='$rowColor' id='$id'";        
        $text .= " onmouseover=\"bgColor='".$this->rowColor5."';\" onmouseout=\"bgColor='".$rowColor."';\" ";
        $text .= ">".chr(13);
        if($ajax) return $text; else echo $text;        
    }
    function rowClose($ajax=false){
        $text = "</tr>".chr(13);
        if($ajax) return $text; else echo $text;            
    }
    function mainColOpen($align='left', $colSpan=0, $nowrap='', $width='', $ajax=false){
        $text = "<th class='class_th' "; $text .= ($width !=='')? "width='$width'" : ""; $text .= "colspan='$colSpan' $nowrap>";
        if($ajax) return $text; else echo $text;                
    }
    function mainColClose($ajax=false){
        $text = "</th>".chr(13);
        if($ajax) return $text; else echo $text;                
    }
    function colOpen($align='left', $colSpan=0, $nowrap='', $ajax=false, $bgcolor='', $class_td='class_td', $bgcolor=''){
        $text = "<td class='$class_td' ";
        if ($bgcolor !== '') $text .= " onmouseover=\"bgColor='".$this->rowColor5."';\" onmouseout=\"bgColor='".$bgcolor."';\" ";
        $text .= ($bgcolor !== '')? "bgcolor='$bgcolor'":""; $text .= "style='text-align: ".$align.";' colspan='$colSpan'  $nowrap>";
        if($ajax) return $text; else echo $text;                
    }
    function colClose($ajax=false){
        $text = "</td>".chr(13);
        if($ajax) return $text; else echo $text;                
    }

    //--------------------------------------------------------------------------
    // draw in tabular layout in AJAX style
    //--------------------------------------------------------------------------
    function draw_tabular_Ajax($p, $page_size){
        $this->writeCssClass();
        $text = "";
        $text .= $this->paging_part_1(true, $p, $page_size);
        if($this->allow_paging) $text .= $this->pagingAjax_part_2($this->upper_paging, false, true);                
        $text .= $this->tblOpen(true);
        // draw column headers
        $text .= $this->rowOpen(0, $this->headerColor, true);
        for($c = $this->colLower; $c < $this->colUpper; $c++){
            if($c < 0){
                $text .= $this->colOpen("",0,$this->nowrap, true); $text .= "&nbsp;"; $text .= $this->colClose();                                                       
            }else{
                $text .= $this->colOpen("center",0,$this->nowrap, true);
                if($this->allow_sorting){
                    $sort_type="asc";
                    $param1 = "document.getElementById('hdnProvince').value";
                    $param2 = "document.getElementById('selCity').value";                
                    $param6 = "'".($c+1)."'";
                    $param7 = "'".$sort_type."'";                           
                    $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $p, $page_size);return false; \"";                
                    $text .= "<b><a class='class_a' href='' $onClick >".ucfirst($this->getFieldName($c))."</a></b>";
                }else{
                    $text .= "<b>".ucfirst($this->getFieldName($c))."</b>";
                }
                $text .= $this->colClose(true);                
            }
        }
        $text .= $this->rowClose(true);        
        // draw rows        
        for($r = $this->rowLower; (($r >=0 && $this->rowUpper >=0) && ($r < $this->rowUpper) && ($r < ($this->rowLower + $this->req_page_size))); $r++){                   
            $row = mysql_fetch_array($this->dataSet);
            if($r % 2 == 0) $text .= $this->rowOpen($r, $this->rowColor, true);
            else  $text .= $this->rowOpen($r, $this->rowColor2, true);
            for($c = $this->colLower; $c < $this->colUpper; $c++){
                if($c < 0){
                    $text .= $this->colOpen("left",0,$this->nowrap, true); $text .= "&nbsp;"; $text .= $this->colClose(true);                                       
                }else {
                    if(is_numeric($row[$c])) $col_align = "right"; else $col_align = "left";                    
                    $text .= $this->colOpen($col_align,0,$this->nowrap, true);
                        //if($this->canBeHypertext($this->getFieldName($c)) && ($this->mode === "view")){
                        //    $text .= "&nbsp;<a class='class_a' href='".$this->fieldsAsHypertextArray[$this->getFieldName($c)]."'>".$row[$c]."</a>&nbsp;";                                
                        //}else{
                            $text .= "&nbsp;".trim($row[$c])."&nbsp;";
                            //else echo "&nbsp;";                            
                        //}
                    $text .= $this->colClose(true);                                       
                }
            }
            $text .= $this->rowClose(true);
        }
        ///$text .=  $r ." ". $this->rowLower ." ". $this->rowUpper ." ". $this->req_page_size;        
        $text .= $this->tblClose(true);        
        if($r == $this->rowLower){ $text .= $this->noDataFound(true); }
        if($this->allow_paging) $text .= $this->pagingAjax_part_2($this->lower_paging, true, true);        
        return $text;
    }

    //--------------------------------------------------------------------------
    // draw filtering
    //--------------------------------------------------------------------------
    function draw_filtering(){
        if($this->allow_filtering){
            echo "<fieldset dir='".$this->direction."' style='margin: 0px;width:90%;' align='".$this->tblAlign[$this->mode]."'>";
            echo "<legend>Search</legend>";
            echo "<form name='frmFiltering' method='GET' style='margin: 10px;'>";
            //echo "<input type='hidden' name='act' id='act' value='".$_REQUEST['act']."'>";
            //echo "<input type='hidden' name='mode' id='mode' value='view'>";
            //echo "<input type='hidden' name='sort_field' id='sort_field' value='".$_REQUEST['sort_field']."'>";
            //echo "<input type='hidden' name='sort_type' id='sort_type' value='".$_REQUEST['sort_type']."'>";
            echo "<table border='0' id='filterTbl' align='center' width='".$this->tblWidth[$this->mode]."' cellspacing='1' cellpadding='1' bordercolor='".$this->tblBorderColor[$this->mode]."'>";
            if($this->layouts['filter'] == 0) echo "<tr>";
            foreach($this->filter_fields as $fldName => $fldValue){
                if($this->layouts['filter'] == 1) echo "<tr>";
                $table_filed_name = "".$fldValue['table']."_".$fldValue['field'];
                if(isset($_REQUEST[$table_filed_name]) AND ($_REQUEST[$table_filed_name] != "")){
                    $filter_field_value = $_REQUEST[$table_filed_name];    
                }else{
                    $filter_field_value = "";
                }                
                $filter_field_operator =  $table_filed_name."_operator";                
                echo "<td align='";                
                if($this->layouts['filter'] == 1){
                    echo ($this->direction == "rtl")?"left":"right"; echo "' width='50%'>".$fldName."";
                    echo "</td><td>&nbsp;&nbsp;";
                }else if($this->layouts['filter'] == 0){
                    echo ($this->direction == "rtl")?"center":"center"; echo "' >".$fldName."";
                    echo " ";   
                }else {
                    echo ($this->direction == "rtl")?"left":"right"; echo "' width='50%'>".$fldName."";
                    echo "</td><td>&nbsp;&nbsp;";
                }                
                if(isset($fldValue['operator']) && $fldValue['operator'] != false){
                    echo "<select name='".$filter_field_operator."' id='".$filter_field_operator."'>";
                    echo "<option value='='"; echo (isset($_REQUEST[$filter_field_operator]) && $_REQUEST[$filter_field_operator] == "=")? "selected" : ""; echo ">=</option>";
                    echo "<option value='like'"; echo (isset($_REQUEST[$filter_field_operator]) && $_REQUEST[$filter_field_operator] == "like")? "selected" : ""; echo ">like</option>";
                    echo "<option value='not like'"; echo (isset($_REQUEST[$filter_field_operator]) && $_REQUEST[$filter_field_operator] == "not like")? "selected" : ""; echo ">not like</option>";
                    echo "</select>";
                }
                if($this->layouts['filter'] == 1){
                    echo "</td><td>&nbsp;</td>";
                    echo "<td  width='50%' align='"; echo ($this->direction == "rtl")?"right":"left"; echo "'>";
                }else if($this->layouts['filter'] == 0){
                    echo "<br>";   
                }else {
                    echo "</td><td>&nbsp;</td>";
                    echo "<td  width='50%' align='"; echo ($this->direction == "rtl")?"right":"left"; echo "'>";
                }                
                echo "<input type='text' value='".$filter_field_value."' name='".$fldValue['table']."_".$fldValue['field']."' id='".$fldValue['table']."_".$fldValue['field']."' />";
                echo "</td>";
                //value='$_POST[$fldValue]'
                if($this->layouts['filter'] == 1) echo "</tr>";
            }
            if($this->layouts['filter'] == 0) echo "</tr>";
            echo "<tr><td colspan='10' height='6px' align='center'></td></tr>";
            echo "<tr><td colspan='10' align='center'>"
            ."Seach type:&nbsp;&nbsp;"
            ."<select name='selSearchType' id='selSearchType'>"
            ."<option value='0' "; echo (isset($_REQUEST['selSearchType']) && $_REQUEST['selSearchType'] == "0")? "selected" : ""; echo ">and</option>";
            echo "<option value='1' "; echo (isset($_REQUEST['selSearchType']) && $_REQUEST['selSearchType'] == "1")? "selected" : ""; echo ">or</option>";            
            echo "</select>&nbsp;&nbsp;&nbsp;";
            echo "<input type='submit' name='onSUBMIT_FILTER' id='onSUBMIT_FILTER' value='Search'></td></tr>";
            $this->tblClose();  
            echo "</form>";
            echo "</fieldset>";
        }               
    }

    
    //--------------------------------------------------------------------------
    // draw in tabular layout
    //--------------------------------------------------------------------------
    function draw_tabular(){        
        $this->writeCssClass();
        $this->draw_filtering();
        if((isset($_REQUEST['mode']) &&  ($_REQUEST['mode'] !== "add")) || (!isset($_REQUEST['mode']))) $this->paging_part_1();  
        $this->draw_messages();
        if($this->allow_paging) $this->paging_part_2(false,$this->upper_paging, false, true, "Upper");
        if($this->rowLower == $this->rowUpper) echo "<br>";
        $this->tblOpen();

        // draw column headers
        $this->rowOpen(0, $this->headerColor);
        if($this->modes['add'][$this->mode]){
            $curr_url = $this->combine_url("add");
            $this->setUrlStringPaging($curr_url); 
            $this->setUrlStringSorting($curr_url);
            $this->setUrlStringFiltering($curr_url);            
            $this->mainColOpen("center",0,"nowrap", "1%");echo "&nbsp;<a class='class_a' href='$curr_url'>+ Add new</a>&nbsp;";$this->mainColClose();
        }else{
            $this->mainColOpen("center",0,"nowrap", "1%");echo "&nbsp;";$this->mainColClose();                
        }

        for($c = $this->colLower; $c < $this->colUpper; $c++){
            if(($this->mode === "view") && ($this->canViewField($this->getFieldName($c)))){
                $this->mainColOpen("center",0,$this->nowrap);
                    if($this->allow_sorting){
                        $href_string = $this->combine_url("view");
                        if(isset($_REQUEST['sort_type']) && $_REQUEST['sort_type'] == "asc") $sort_type="desc";
                        else $sort_type="asc";
                        $href_string .= "&sort_field=".($c+1)."&sort_type=".$sort_type;                        
                        $this->setUrlStringPaging($href_string);
                        $this->setUrlStringFiltering($href_string);            
                        echo "<b><a class='class_a' href='$href_string'>".ucfirst($this->getHeaderName($this->getFieldName($c)))."</a></b>";
                    }else{
                        echo "<b>".ucfirst($this->getHeaderName($this->getFieldName($c)))."</b>";                        
                    }
                $this->mainColClose();
            }else if(($this->mode === "edit") && ($this->canViewField($this->getFieldName($c)))){
                    $this->mainColOpen("center",0,$this->nowrap);
                    // alow/disable sorting by headers
                    echo "<b>".ucfirst($this->getHeaderName($this->getFieldName($c)))."</b>";                        
                    //echo "<b>".ucfirst($this->getFieldName($c))."</b>";
                    $this->mainColClose();
            }
        }
        if($this->modes['details'][$this->mode]){
            $this->mainColOpen("center",0,$this->nowrap);echo "&nbsp;View&nbsp;";$this->mainColClose();
        }                        
        if(isset($this->modes['delete'][$this->mode]) && $this->modes['delete'][$this->mode]){
            $this->mainColOpen("center",0,$this->nowrap);echo "&nbsp;Delete&nbsp;";$this->mainColClose();
        }                
        $this->rowClose();        

        //if(($this->layouts['view'] == 1) && ($this->layouts['edit'] == 0) && ($this->mode == "edit")){
        //     $this->req_page_size = 20;            
        //}
        //echo $this->rowUpper ." ". $this->req_page_size;
        
        // draw rows
        for($r = $this->rowLower; (($r >=0 && $this->rowUpper >=0) && ($r < $this->rowUpper) && ($r < ($this->rowLower + $this->req_page_size))); $r++){                   
            $row = mysql_fetch_array($this->dataSet);
            if($r % 2 == 0){$this->rowOpen($r, $this->rowColor); $main_td_color=$this->rowColor3;}
            else  {$this->rowOpen($r, $this->rowColor2); $main_td_color=$this->rowColor4;}
            if($this->modes['edit'][$this->mode]){
                if(($this->mode == "edit") && (intval($this->rid) == intval($row[$this->keyFieldName]))){
                    $curr_url = $this->combine_url("update", $row[$this->keyFieldName]);
                    $cancel_url = $this->combine_url("cancel", $row[$this->keyFieldName]);
                    $this->setUrlStringPaging($c_curr_url);
                    $this->setUrlStringSorting($c_curr_url);
                    $this->setUrlStringFiltering($c_curr_url);            
                    $curr_url .= $c_curr_url;
                    $cancel_url .= $c_curr_url;              
                    if(isset($_REQUEST['mode']) && $_REQUEST['mode'] === "add") { $curr_url .= "&new=1"; $cancel_url .= "&new=1";}                                        
                    echo "<form name='frmEditRow$this->unique_extention' method='post' action='http://".$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']."'>";
                    $this->setEditFieldsFormScript($curr_url);                    
                    $this->colOpen("center",0,$this->nowrap,false,"","class_td_main", $main_td_color);
                    echo "&nbsp;<a class='class_a' href='' onClick=\"sendEditFields(); return false; \">Update</a>&nbsp;";
                    if(isset($_REQUEST['mode']) && $_REQUEST['mode'] === "add") {
                        $cancel_url = $this->combine_url("delete", $row[$this->keyFieldName]);
                        $this->setUrlStringPaging($cancel_url);
                        $this->setUrlStringSorting($cancel_url);
                        $this->setUrlStringFiltering($cancel_url);            
                        echo "<script>function verifyCancel(param){if(confirm('Are you sure you want to cancel creating new record?')){document.location.href=param;} else { return false;}};</script>";
                        if(isset($this->modes['cancel'][$this->mode]) && $this->modes['cancel'][$this->mode]) echo "<a class='class_a' href='$cancel_url' onClick=\"return verifyCancel('$cancel_url')\">Cancel</a>&nbsp;";                        
                    }else{
                        if(isset($this->modes['cancel'][$this->mode]) && $this->modes['cancel'][$this->mode]) echo "<a class='class_a' href='$cancel_url'>Cancel</a>&nbsp;";                        
                    }
                    $this->colClose();
                }else {
                      $curr_url = $this->combine_url("edit", $row[$this->keyFieldName]);
                      $this->setUrlStringPaging($curr_url);
                      $this->setUrlStringSorting($curr_url);
                      $this->setUrlStringFiltering($curr_url);            
                      if(isset($_REQUEST['new']) && (isset($_REQUEST['new']) == 1)){
                        $curr_url .= "&new=1";
                      }
                      if ($this->modes['edit']['byfield'] == ""){ 
                        $this->colOpen("center",0,$this->nowrap,false,"","class_td_main",$main_td_color);echo "&nbsp;<a class='class_a' href='$curr_url'>Edit</a>&nbsp;";$this->colClose();
                      }else{                      
                        $this->colOpen(($this->direction == "rtl")?"right":"left",0,$this->nowrap,false,"","class_td_main", $main_td_color);echo "&nbsp;<a class='class_a' href='$curr_url'>".$row[$this->modes['edit']['byfield']]."</a>&nbsp;";$this->colClose();
                      }                      
                }
            }                      
            // draw columns
            for($c = $this->colLower; $c < $this->colUpper; $c++){
                if(is_numeric($row[$c])) $col_align = ($this->direction == "rtl")?"left":"right"; else $col_align = ($this->direction == "rtl")?"right":"left";
                if(($this->mode === "view") && ($this->canViewField($this->getFieldName($c)))){
                    $this->colOpen($col_align,0,$this->nowrap);
                    echo $this->getFieldValueByType($row[$c], $c, $row);
                    $this->colClose();                    
                }else if(($this->mode === "edit") && ($this->canViewField($this->getFieldName($c)))){                                        
                        if(intval($this->rid) === intval($row[$this->keyFieldName])){
                                $this->colOpen($col_align,0,$this->nowrap);
                                if($this->isForeignKey($this->getFieldName($c))){
                                    $this->drawForeignKeyInput($row[$this->keyFieldName], $this->getFieldName($c), $row[$c], "edit");
                                }else{
                                    echo $this->getFieldValueByType($row[$c], $c, $row);
                                }
                                $this->colClose();
                        }else{
                            $this->colOpen($col_align,0,$this->nowrap);
                            if($this->isForeignKey($this->getFieldName($c))){
                                $this->drawForeignKeyInput($row[$this->keyFieldName], $this->getFieldName($c), $row[$c],"view");
                            }else{
                                echo "&nbsp;".trim($row[$c])."&nbsp;";    
                            }
                            $this->colClose();
                        }
                }
            }
            if($this->modes['details'][$this->mode]){
                $curr_url = $this->combine_url("details", $row[$this->keyFieldName]);
                $this->setUrlStringPaging($curr_url);
                $this->setUrlStringSorting($curr_url);
                $this->setUrlStringFiltering($curr_url);
                $this->colOpen("center",0,$this->nowrap);echo "&nbsp;<a class='class_a' href='$curr_url'>Details</a>&nbsp;";$this->colClose();
            }
            if(isset($this->modes['delete'][$this->mode]) && $this->modes['delete'][$this->mode]){ $curr_url = $this->combine_url("delete", $row[$this->keyFieldName]);
                $this->setUrlStringPaging($curr_url);
                $this->setUrlStringSorting($curr_url);
                $this->setUrlStringFiltering($curr_url);            
                echo "<script>function verifyDelete(param){if(confirm('Are you sure you want to delete this record?')){document.location.href=param;} else { return false;}};</script>";
                $this->colOpen("center",0,$this->nowrap);echo "<input style='width: 11px; height: 12px;' type='button' value='' onClick=\"return verifyDelete('$curr_url')\">";$this->colClose();
            }       

            if(($this->mode == "edit") && (intval($this->rid) == intval($row[$this->keyFieldName]))){ echo "</form>"; }
            $this->rowClose();
        }
        $this->tblClose();        
        if($r == $this->rowLower){ $this->noDataFound(); }
        if($this->allow_paging) $this->paging_part_2(false,$this->lower_paging, true, true, "Lower");               
    }    
  
    //--------------------------------------------------------------------------
    // draw in columnar layout
    //--------------------------------------------------------------------------
    function draw_columnar(){
        $r = ""; //???
        $this->writeCssClass();
        if((isset($_REQUEST['mode']) &&  ($_REQUEST['mode'] !== "add") && ($_REQUEST['mode'] !== "details")) || (!isset($_REQUEST['mode']))) $this->paging_part_1();  
        $this->draw_messages();
        
        $this->tblOpen();
        $this->rowOpen($r, $this->rowColor);
        //echo $this->mode;
        if(isset($this->modes['add'][$this->mode]) && $this->modes['add'][$this->mode]){
            $curr_url = $this->combine_url("add");
            $this->setUrlStringPaging($curr_url);
            $this->setUrlStringSorting($curr_url);
            $this->setUrlStringFiltering($curr_url);            
            $this->mainColOpen("center",0,$this->nowrap);echo "<div style='float:"; echo($this->direction == "rtl")?"right":"left"; echo ";'>&nbsp;<a class='class_a' href='$curr_url'>Add new</a>&nbsp;</div>";$this->mainColClose();
        }
        $this->rowClose();
        $this->tblClose();

        if($this->allow_paging) $this->paging_part_2(false,$this->upper_paging, false, true, "Upper");
        echo "<form name='frmEditRow$this->unique_extention' method='post' action='http://".$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']."'>";        
        $this->tblOpen();
        // draw header
        $this->rowOpen($r, $this->headerColor);
        $this->mainColOpen("center",0,$this->nowrap);echo "<b>Field</b>";$this->mainColClose();
        $this->mainColOpen("center",0,$this->nowrap);echo "<b>Field Value</b>";$this->mainColClose();
        $this->rowClose();        

        if(($this->layouts['view'] == 0) && ($this->layouts['edit'] == 1) && ($this->mode == "edit")){
             $this->req_page_size = 1;            
        }else if(($this->layouts['view'] == 1) && ($this->layouts['edit'] == 1) && ($this->mode == "edit")){
            $this->req_page_size = 1;  // ???          
        }else if(($this->layouts['edit'] == 1) && ($this->mode == "details")){
            $this->req_page_size = 1;              
        }
                
        // draw rows
        for($r = $this->rowLower; (($r < $this->rowUpper) && ($r < ($this->rowLower + $this->req_page_size))); $r++){                   
            $row = mysql_fetch_array($this->dataSet);
            for($c = $this->colLower; $c < $this->colUpper; $c++){
                if($r % 2 == 0) $this->rowOpen($r, $this->rowColor);
                else  $this->rowOpen($r, $this->rowColor2);
                    
                // column headers
                if(($this->mode === "view") && ($this->canViewField($this->getFieldName($c)))){
                    $this->colOpen(($this->direction == "rtl")?"right":"left",0,$this->nowrap);                   
                    //echo "&nbsp;<b>".ucfirst($this->getFieldName($c))."</b>";
                    echo "<b>".ucfirst($this->getHeaderName($this->getFieldName($c)))."</b>";                        
                    $this->colClose();
                }else if(($this->mode === "edit") && ($this->canViewField($this->getFieldName($c)))){
                    $this->colOpen(($this->direction == "rtl")?"right":"left",0,$this->nowrap);                   
                    echo "<b>".ucfirst($this->getHeaderName($this->getFieldName($c)))."</b>";                        
                    $this->colClose();
                }else if(($this->mode === "details") && ($this->canViewField($this->getFieldName($c)))){
                    $this->colOpen(($this->direction == "rtl")?"right":"left",0,$this->nowrap);                   
                    echo "<b>".ucfirst($this->getHeaderName($this->getFieldName($c)))."</b>";                        
                    $this->colClose();
                }
                
                // column data                
                //if(is_numeric($row[$c])) $col_align = "right"; else $col_align = "left";
                $col_align = ($this->direction == "rtl")?"left":"right"; 
                if(($this->mode === "view") && ($this->canViewField($this->getFieldName($c)))){
                    $this->colOpen($col_align,0,$this->nowrap);
                    echo $this->getFieldValueByType($row[$c], $c, $row)."&nbsp;";
                    $this->colClose();                    
                }else if(($this->mode === "details") && ($this->canViewField($this->getFieldName($c)))){
                        $this->colOpen($col_align,0);
                        if($this->isForeignKey($this->getFieldName($c))){
                            $this->drawForeignKeyInput($row[$this->keyFieldName], $this->getFieldName($c), $row[$c],"view"); echo "&nbsp;";
                        }else{
                            echo "&nbsp;".trim($row[$c])."&nbsp;";    
                        }
                        $this->colClose();
                }else if(($this->mode === "edit") && ($this->canViewField($this->getFieldName($c)))){
                        if(intval($this->rid) === intval($row[$this->keyFieldName])){
                                $this->colOpen($col_align,0,$this->nowrap);
                                if($this->isForeignKey($this->getFieldName($c))){
                                    $this->drawForeignKeyInput($row[$this->keyFieldName], $this->getFieldName($c), $row[$c], "edit"); echo "&nbsp;";
                                }else{
                                    echo $this->getFieldValueByType($row[$c], $c, $row)."&nbsp;";
                                }
                                $this->colClose();
                        }else{
                            $this->colOpen($col_align,0,$this->nowrap);
                            if($this->isForeignKey($this->getFieldName($c))){
                                $this->drawForeignKeyInput($row[$this->keyFieldName], $this->getFieldName($c), $row[$c],"view"); echo "&nbsp;";
                            }else{
                                echo "&nbsp;".trim($row[$c])."&nbsp;";    
                            }
                            $this->colClose();
                        }
                }
                $this->rowClose();                       
            }
            $this->rowOpen($r, $this->rowColor);
            $this->colOpen(($this->direction == "rtl")?"right":"left",2,$this->nowrap);
            $this->colClose();
            $this->rowClose();                       
        }
        $this->tblClose();
        echo "<br />";        
        if($r == $this->rowLower){ $this->noDataFound(); }
        else{
            $this->tblOpen();$this->rowOpen($r, $this->rowColor2);        
            $this->mainColOpen("center",0,$this->nowrap);
            if($this->mode === "details"){
                $cancel_url = $this->combine_url("cancel", $row[$this->keyFieldName]);
                $this->setUrlStringPaging($c_curr_url);
                $this->setUrlStringSorting($c_curr_url);
                $this->setUrlStringFiltering($c_curr_url);            
                $cancel_url .= $c_curr_url;
                echo "<div style='float:"; echo ($this->direction == "rtl")?"left":"right"; echo ";'><a class='class_a' href='$cancel_url'><b>Back</b></a>";                
            }else{
                if(isset($this->modes['delete'][$this->mode]) && $this->modes['delete'][$this->mode]){
                    $curr_url = $this->combine_url("delete", $row[$this->keyFieldName]);
                    $this->setUrlStringPaging($curr_url);
                    $this->setUrlStringSorting($curr_url);
                    $this->setUrlStringFiltering($curr_url);            
                    echo "<script>function verifyDelete(param){res_ok = confirm('Are you sure you want to delete this record?'); if(res_ok){document.location.href=param;} else { return false;}};</script>";
                    echo "<div style='float:"; echo ($this->direction == "rtl")?"right":"left"; echo ";'><a class='class_a' href='$curr_url' onClick=\"return verifyDelete('$curr_url')\"><b>Delete</b></a>";//$this->mainColClose();
                    echo "</div>";
                }
                if(isset($this->modes['edit'][$this->mode]) && $this->modes['edit'][$this->mode]){                
                    $curr_url = $this->combine_url("update", $row[$this->keyFieldName]);
                    $cancel_url = $this->combine_url("cancel", $row[$this->keyFieldName]);
                    $this->setUrlStringPaging($c_curr_url);
                    $this->setUrlStringSorting($c_curr_url);
                    $this->setUrlStringFiltering($c_curr_url);            
                    $cancel_url .= $c_curr_url;
                    $curr_url .= $c_curr_url;
                    if(isset($_REQUEST['mode']) &&  $_REQUEST['mode'] === "add") { $curr_url .= "&new=1"; $cancel_url .= "&new=1";}                    
                    $this->setEditFieldsFormScript($curr_url);
                    echo "<div style='float:"; echo ($this->direction == "rtl")?"left":"right"; echo ";'>";    
                    
                    if(isset($_REQUEST['mode']) &&  $_REQUEST['mode'] === "add") {
                        $cancel_url = $this->combine_url("delete", $row[$this->keyFieldName]);
                        $this->setUrlStringPaging($cancel_url);
                        $this->setUrlStringSorting($cancel_url);
                        $this->setUrlStringFiltering($cancel_url);            
                        echo "<script>function verifyCancel(param){res_ok = confirm('Are you sure you want to cancel creating new record?'); if(res_ok){document.location.href=param;} else { return false;}};</script>";                    
                        if(isset($this->modes['cancel'][$this->mode]) && $this->modes['cancel'][$this->mode]) echo "<a class='class_a' href='$cancel_url' onClick=\"return verifyCancel('$cancel_url')\"><b>Cancel</b></a>";
                    }else{
                       if(isset($this->modes['cancel'][$this->mode]) && $this->modes['cancel'][$this->mode]) echo "<a class='class_a' href='$cancel_url'><b>Cancel</b></a>";
                    }
                    
                    echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                    echo "<a class='class_a' href='' onClick=\"sendEditFields(); return false;\"><b>Update</b></a>";
                    echo "</div>";
                }
            }
            $this->mainColClose();            
        }
        $this->rowClose();
        $this->tblClose();        
  
        echo "</form>";
        if($this->allow_paging) $this->paging_part_2(false,$this->lower_paging, true, true, "Lower");               
    }            

    //--------------------------------------------------------------------------
    // draw messages
    //--------------------------------------------------------------------------
    function draw_messages(){
        if($this->messaging && $this->act_msg){
            echo "<div style='margin-top:10px;margin-bottom:10px;'><center><font color='red'><b>$this->act_msg</b></font></center></div>";
            $this->act_msg = "";
        }        
    }
 
    //--------------------------------------------------------------------------
    // combine url 
    //--------------------------------------------------------------------------
    function combine_url($mode, $rid=""){
        if(isset($_REQUEST['act'])){
            $a_url = "?act=".$_REQUEST['act']."&mode=".$mode."";
        }else {
            $a_url = "?mode=".$mode."";
        }
        if($rid !== "") $a_url .= "&rid=".$rid;
        return $a_url;         
    }
   
    //--------------------------------------------------------------------------
    // paging function - part 1
    //--------------------------------------------------------------------------
    function paging_part_1($ajax=false,$p='', $page_size=''){
        // (1) if we got a wrong number of page -> set page=1
        $req_page_num  = "";
        if($ajax){
            if($page_size) $this->req_page_size = $page_size;
            else $this->req_page_size = 10;
            if($p) $req_page_num  = $p;
            else $req_page_num = 1;
        }else {
            //if($_REQUEST[page_size]) $this->req_page_size = $_REQUEST[page_size];
            if(isset($_REQUEST['page_size'])) $this->req_page_size = $_REQUEST['page_size'];
            else $this->req_page_size = "10";
            if(isset($_REQUEST['p']))$req_page_num  = $_REQUEST['p'];
        }      
        
        if(is_numeric($req_page_num)){
            if($req_page_num > 0) $this->page_current = $req_page_num;
            else $this->page_current = 1;
        }else{
            $this->page_current = 1;
        }
                
        // (2) set pages_total & page_current vars for paging
        if(($srow=mysql_num_rows($this->dataSet)) > 0){
            if(is_float($srow / $this->req_page_size))
                $this->pages_total = intval(($srow / $this->req_page_size) + 1);
            else
                $this->pages_total = intval($srow / $this->req_page_size);
            }else{
                $this->pages_total = 0;
            }   
            if($this->page_current > $this->pages_total) $this->page_current = $this->pages_total;
               
                
        // (3) run until current start row
        $rows_offset = (($this->page_current-1)*$this->req_page_size);
        if($rows_offset >= 0){
            mysql_data_seek($this->dataSet, $rows_offset);
            $this->rowLower += $rows_offset;
        }
    }

    //--------------------------------------------------------------------------
    // paging function - part 2
    //--------------------------------------------------------------------------    
    function paging_part_2($ajax=false, $lu_paging=false, $upper_br, $lower_br, $type="1"){
        // (4) display paging line
        $text = "";
      //  $param1 = "document.getElementById('hdnProvince').value";
    //    $param2 = "document.getElementById('selCity').value";        
  //      $param6 = "'1'";
//        $param7 = "'asc'";                           
//        $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $this->page_current, $this->req_page_size); return false; \"";
        if($this->pages_total > 1){
            $href_string = $this->combine_url("view");
            $this->setUrlStringSorting($href_string);
            $this->setUrlStringFiltering($href_string);            
            $text .= "<script type='text/JavaScript'>";
            $text .= "function setPageSize".$type."(){document.location.href = '$href_string&page_size='+document.frmPaging$this->unique_extention".$type.".page_size".$type.".value;}";
            $text .= "</script>";
            $href_string .= "&page_size=".$this->req_page_size;
            $text .= "<form name='frmPaging$this->unique_extention".$type."'>";
            if($lu_paging['results'] || $lu_paging['pages'] || $lu_paging['page_size']) if($upper_br) $text .= "";  //<br>
            $text .= "<table dir='".$this->direction."' align='".$this->tblAlign[$this->mode]."' width='".$this->tblWidth[$this->mode]."' border='0' >";
            $text .= "<tr><td align='".$lu_paging['results_align']."' nowrap>";
            if($lu_paging['results']){
                $text .= "&nbsp;Results:&nbsp;";
                if(($this->page_current * $this->req_page_size) <= $this->rows) $total = ($this->page_current * $this->req_page_size);
                else $total = $this->rows;
                $text .= ($this->page_current * $this->req_page_size - $this->req_page_size + 1)." - ".$total;
                $text .= "&nbsp;of about:&nbsp;";
                $text .= $this->rows;
                $text .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";            
            }
            $text .= "</td><td align='".$lu_paging['pages_align']."' nowrap>";
            if($lu_paging['pages']){
                $text .= "&nbsp;Pages:&nbsp;";
                $text .= "&nbsp;<a title='first' class='class_a' style='text-decoration: none;' href='$href_string&p=1'>|<<</a>";
                if($this->page_current > 1) $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='previous' href='$href_string&p=".($this->page_current - 1)."'><<</a>";
                else $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='previous' href='$href_string&p=".$this->page_current."'><<</a>";
                $text .= "&nbsp;";
                $low_window_ind = $this->page_current - 3;
                $high_window_ind = $this->page_current + 3;
                if($low_window_ind > 1){ $start_index = $low_window_ind; $text .= "..."; }
                else $start_index = 1;
                if($high_window_ind < $this->pages_total) $end_index = $high_window_ind;
                else $end_index = $this->pages_total;
                for($ind=$start_index; $ind <= $end_index; $ind++){
                    if($ind == $this->page_current) $text .= "&nbsp;<a class='class_a' style='text-decoration: underline;' title='current' href='$href_string&p=".$ind."'><b><u>" . $ind . "</u></b></a>";
                    else $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' href='$href_string&p=".$ind."'>".$ind."</a>";
                    if($ind < $this->pages_total) $text .= ",&nbsp;";
                    else $text .= "&nbsp;";
                }
                if($high_window_ind < $this->pages_total) $text .= "...";
                if($this->page_current < $this->pages_total) $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='next' href='$href_string&p=".($this->page_current + 1)."'>>></a>";
                else $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='next' href='$href_string&p=".$this->page_current."'>>></a>";
                $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='last' href='$href_string&p=".$this->pages_total."'>>>|</a>";
            }
            $text .= "</td><td align='".$lu_paging['page_size_align']."' nowrap>";            
            if($lu_paging['page_size']){
                $text .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";            
                $text .= "&nbsp;Page size:&nbsp;";                
                $text .= "<select name='page_size".$type."' onChange='setPageSize".$type."()'>";            
                $text .= "<option value='10' "; if($this->req_page_size == 10) $text .= "selected"; $text .= ">10</option>";
                $text .= "<option value='25' "; if($this->req_page_size == 25) $text .= "selected"; $text .= ">25</option>";
                $text .= "<option value='50' "; if($this->req_page_size == 50) $text .= "selected"; $text .= ">50</option>";
                $text .= "<option value='100' "; if($this->req_page_size == 100) $text .= "selected"; $text .= ">100</option>";
                $text .= "<option value='250' "; if($this->req_page_size == 250) $text .= "selected"; $text .= ">250</option>";
                $text .= "<option value='500' "; if($this->req_page_size == 500) $text .= "selected"; $text .= ">500</option>";
                $text .= "<option value='1000' "; if($this->req_page_size == 1000) $text .= "selected"; $text .= ">1000</option>";
                $text .= "</select>";
            }
            $text .= "</td></tr>";            
            $text .= "</table>";
            $text .= "</form>";
            if($lu_paging['results'] || $lu_paging['pages'] || $lu_paging['page_size']) if($lower_br) $text .= ""; //<br>
            if($ajax) return $text;
            else echo $text;
        }               
    }

    //--------------------------------------------------------------------------
    // paging function - part 2
    //--------------------------------------------------------------------------    
    function pagingAjax_part_2($lu_paging=false, $upper_br, $lower_br){
        // (4) display paging line
        $text = "";
        $param1 = "document.getElementById('hdnProvince').value";
        $param2 = "document.getElementById('selCity').value";        
        $param6 = "'1'";
        $param7 = "'asc'";                           
        $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $this->page_current, $this->req_page_size); return false; \"";
        
        if($this->pages_total > 1){
            if($upper_br) $text .= "<br />";
            $text .= "<table align='$this->tblAlign' width='$this->tblWidth' border='0' >";
            $text .= "<tr><td align='".$lu_paging['results_align']."' nowrap>";            
            if($lu_paging['results']){
                $text .= "&nbsp;Resultaat&nbsp;";
                if(($this->page_current * $this->req_page_size) <= $this->rows) $total = ($this->page_current * $this->req_page_size);
                else $total = $this->rows;
                $text .= ($this->page_current * $this->req_page_size - $this->req_page_size + 1)." - ".$total;
                $text .= "&nbsp;van de&nbsp;";
                $text .= $this->rows;
                $text .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";            
            }
            $text .= "</td><td align='".$lu_paging['pages_align']."' nowrap>";
            if($lu_paging['pages']){
                $text .= "&nbsp;pagina&nbsp;";
                $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, 1, $this->req_page_size); return false; \"";
                $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='eerst' href='' $onClick>|<<</a>";
                
                if($this->page_current > 1){
                    $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, ($this->page_current - 1), $this->req_page_size); return false; \"";
                    $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='vorig' href='' $onClick ><<</a>";   
                }else{
                    $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $this->page_current, $this->req_page_size); return false; \"";
                    $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='vorig' href='' $onClick ><<</a>";                
                }
                $text .= "&nbsp;";
                $low_window_ind = $this->page_current - 3;
                $high_window_ind = $this->page_current + 3;
                if($low_window_ind > 1){ $start_index = $low_window_ind; $text .= "..."; }
                else $start_index = 1;
                if($high_window_ind < $this->pages_total) $end_index = $high_window_ind;
                else $end_index = $this->pages_total;
                for($ind=$start_index; $ind <= $end_index; $ind++){                    
                    if($ind == $this->page_current){
                        $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $ind, $this->req_page_size); return false; \"";
                        $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' style='text-decoration: underline;' title='current' href='' $onClick ><b><u>" . $ind . "</u></b></a>";
                    }else{
                        $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $ind, $this->req_page_size); return false; \"";
                        $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' href='' $onClick >".$ind."</a>";
                    }
                    if($ind < $this->pages_total) $text .= ",&nbsp;";
                    else $text .= "&nbsp;";
                }
                if($high_window_ind < $this->pages_total) $text .= "...";
                if($this->page_current < $this->pages_total){
                    $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, ($this->page_current + 1), $this->req_page_size); return false; \"";
                    $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='daarna' href='' $onClick>>></a>";
                }else {
                    $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $this->page_current, $this->req_page_size); return false; \"";
                    $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='daarna' href='' $onClick >>></a>";
                }
                $onClick = "onClick=\"xajax_fillDepartments($param1, $param2, $param6, $param7, $this->pages_total, $this->req_page_size); return false; \"";
                $text .= "&nbsp;<a class='class_a' style='text-decoration: none;' title='duur' href='' $onClick>>>|</a>";
            }
            $text .= "</td><td align='".$lu_paging['results_align']."' nowrap>";            
            if($lu_paging['page_size']){
                $text .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";            
                $text .= "&nbsp;Sizze van pagina:&nbsp;";           
                $param9 = "document.getElementById('page_size').value";                                   
                $onChange = "onChange=\"xajax_fillDepartments($param1, $param2, $param6, $param7, 1, $param9); return false; \"";
                $text .= "<select id='page_size' name='page_size' $onChange >";            
                $text .= "<option value='10' "; if($this->req_page_size == 10) $text .= "selected"; $text .= ">10</option>";
                $text .= "<option value='25' "; if($this->req_page_size == 25) $text .= "selected"; $text .= ">25</option>";
                $text .= "<option value='50' "; if($this->req_page_size == 50) $text .= "selected"; $text .= ">50</option>";
                $text .= "<option value='100' "; if($this->req_page_size == 100) $text .= "selected"; $text .= ">100</option>";
                $text .= "<option value='250' "; if($this->req_page_size == 250) $text .= "selected"; $text .= ">250</option>";
                $text .= "<option value='500' "; if($this->req_page_size == 500) $text .= "selected"; $text .= ">500</option>";
                $text .= "<option value='1000' "; if($this->req_page_size == 1000) $text .= "selected"; $text .= ">1000</option>";
                $text .= "</select>";
            }
            $text .= "</td></tr>";            
            $text .= "</table>";
            if($lower_br) $text .= "<br />";
            return $text;
        }               
    }
    
    //--------------------------------------------------------------------------
    // function - no data found
    //--------------------------------------------------------------------------
    function noDataFound($ajax=false){
        $this->setCssClass("default");
        $this->writeCssClass();
        $this->tblOpen();
        $text = $this->rowOpen(0, $this->rowColor, $ajax);
        $add_column = 0;
        if($this->modes['add'][$this->mode] || $this->modes['edit'][$this->mode]) $add_column += 1;
        if($this->mode['delete']) $add_column += 1;
        $text .= $this->colOpen("center", ($this->colUpper + $add_column),"", $ajax); 
        if($ajax) $text .= "<br>No data found<br>&nbsp;"; else echo "<br>No data found<br>&nbsp;";
        $text .= $this->colClose($ajax);                   
        $text .= $this->rowClose($ajax);
        if($ajax) return $text;
        $this->tblClose();
    }

    //--------------------------------------------------------------------------
    // delete row
    //--------------------------------------------------------------------------
    function deleteRow($rid){
        $sql = "DELETE FROM $this->tblName WHERE $this->keyFieldName=".$rid. " ;"; 
        mysql_query($sql, $this->db_handler);
        if(mysql_affected_rows($this->db_handler) > 0){
            $this->act_msg = "Record # $rid was deleted!";
            $this->getDataSet($this->sql_sort);
        }
        if($this->debug) echo $sql. " result: ".mysql_affected_rows($this->db_handler);
    }

    //--------------------------------------------------------------------------
    // update row
    //--------------------------------------------------------------------------
    function updateRow($rid, $new_row){
        $sql = "UPDATE $this->tblName SET ";
            $ind = 0;
            $this->addCheckBoxesValues();            
            $max = count($_POST);
            foreach($_POST as $fldName => $fldValue){
                $ind ++;
                $fldName = substr($fldName, 2, strlen($fldName));
                if($this->isText($fldName))
                    $sql .=  "$fldName = '$fldValue' ";
                else{
                    $sql .=  "$fldName = $fldValue ";                                                
                }
                if (intval($ind) < intval($max) ) $sql .= " , ";                    
            }
        $sql .= " WHERE $this->keyFieldName=$rid";
        mysql_query($sql, $this->db_handler);
        if($this->debug) echo $sql. " result: ".mysql_affected_rows($this->db_handler);
        if(mysql_affected_rows($this->db_handler) >= 0){
            $this->act_msg = "Record # $rid was updated!";
            $this->getDataSet($this->sql_sort);
        }
        if($new_row == 1){
            $fsort = " ORDER BY " . $this->keyFieldName . " DESC";
            $this->getDataSet($fsort);        
        }
    }

    //--------------------------------------------------------------------------
    // add row
    //--------------------------------------------------------------------------
    function addRow(){
        $sql = "INSERT INTO $this->tblName () VALUES () ;"; 
        mysql_query($sql, $this->db_handler);
        if($this->debug) echo $sql. " result: ".mysql_affected_rows($this->db_handler);
        echo mysql_error($this->db_handler);
        if(mysql_affected_rows($this->db_handler) > 0){
            $this->rid = mysql_insert_id($this->db_handler);
            $this->act_msg = "Record # $this->rid was added!";
            $this->getDataSet($this->sql_sort);            
        }
        $this->sql = "SELECT * FROM $this->tblName ";       
        $fsort = " ORDER BY " . $this->keyFieldName . " DESC";        
        $this->getDataSet($fsort);        
    }

    //--------------------------------------------------------------------------
    // get field offset
    //--------------------------------------------------------------------------
    function getFieldOffset($field_name){
        for($ind=0; $ind < mysql_num_fields($this->dataSet); $ind++){
            if($this->getFieldName($ind) === $field_name)
               return $ind;
        }
        return -1;
    }
   
    //--------------------------------------------------------------------------
    // check if field can Be Hypertext
    //--------------------------------------------------------------------------
    function canBeHypertext($field_name){
        if(array_key_exists($field_name, $this->fieldsAsHypertextArray)){
           return $this->fieldsAsHypertextArray[$field_name]; 
        }
        return false;
    }

    //--------------------------------------------------------------------------
    // check if field type needs ''(text) or not (numeric...)
    //--------------------------------------------------------------------------
    function isText($field_name){
        $field_type = mysql_field_type($this->dataSet, $this->getFieldOffset($field_name));
        $result = true;
        switch (strtolower($field_type)){
            case 'int':     // int: TINYINT, SMALLINT, MEDIUMINT, INT, INTEGER, BIGINT, TINY, SHORT, LONG, LONGLONG, INT24
            case 'real':    // real: FLOAT, DOUBLE, DECIMAL, NUMERIC
            case 'blob':    // blob: TINYBLOB, MEDIUMBLOB, LONGBLOB, BLOB
            case 'null':    // empty: NULL            
                $result = false; break;
            case 'string':  // string: CHAR, VARCHAR, TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT, ENUM, SET, VAR_STRING
            case 'date':    // date: DATE
            case 'timestamp':    // date: TIMESTAMP
            case 'year':    // date: YEAR
            case 'time':    // date: TIME
            case 'datetime':    // date: DATETIME
                $result = true; break;
            default:
                $result = true; break;
        }
        return $result;
    }

    //--------------------------------------------------------------------------
    // check if a field is a foreign key
    //--------------------------------------------------------------------------
    function isForeignKey($field_name){
        if(array_key_exists($field_name, $this->foreign_keys_array)){
           return true; 
        }
        return false;
    }

    //--------------------------------------------------------------------------
    // draw combobox for foreign key
    //--------------------------------------------------------------------------
    function drawForeignKeyInput($keyFieldValue, $fk_field_name, $fk_field_value, $mode="edit"){
        $sql  = " SELECT ".$fk_field_name;
        $sql .= " FROM ".$this->tblName;
        $sql .= " WHERE ".$this->keyFieldName."=".$keyFieldValue;
        $dSet = mysql_query($sql, $this->db_handler);
        if(mysql_affected_rows($this->db_handler) > 0){
            $row = mysql_fetch_array($dSet);
            $kFieldValue = $row[$fk_field_name];
        }
        // select from outer table
        $sql  = " SELECT ".$this->foreign_keys_array[$fk_field_name]['field_key'].",".$this->foreign_keys_array[$fk_field_name]['field_name'];
        $sql .= " FROM ".$this->foreign_keys_array[$fk_field_name]['table'] ;
        if($mode !== "edit")
            $sql .= " WHERE " .$this->foreign_keys_array[$fk_field_name]['field_key']."=".$kFieldValue;
        $sql .= " ORDER BY ".$this->foreign_keys_array[$fk_field_name]['field_key'];
        $dSet = mysql_query($sql, $this->db_handler);
        if($mode === "edit"){
            //'view_type"=>"radiobutton"
            if(isset($this->foreign_keys_array[$fk_field_name]['view_type']) && $this->foreign_keys_array[$fk_field_name]['view_type'] == "radiobutton"){
                while($row = mysql_fetch_array($dSet)){                    
                    if($row[$this->foreign_keys_array[$fk_field_name]['field_key']] === $kFieldValue)                    
                        echo "<input type='radio' title='".$this->getFieldTitle($fk_field_name)."' name='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' id='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' value='".$row[$this->foreign_keys_array[$fk_field_name]['field_key']]."' checked>".$row[$this->foreign_keys_array[$fk_field_name]['field_name']]."&nbsp;";                    
                    else
                        echo "<input type='radio' title='".$this->getFieldTitle($fk_field_name)."' name='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' id='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' value='".$row[$this->foreign_keys_array[$fk_field_name]['field_key']]."'>".$row[$this->foreign_keys_array[$fk_field_name]['field_name']]."&nbsp;";                    
                }
            //'view_type"=>"checkbox"
            }else if(isset($this->foreign_keys_array[$fk_field_name]['view_type']) && $this->foreign_keys_array[$fk_field_name]['view_type'] == "checkbox"){
                $first_time = true;
                while($row = mysql_fetch_array($dSet)){
                    if($first_time && ($row[$this->foreign_keys_array[$fk_field_name]['field_key']] === $kFieldValue)){ 
                        echo "<input type='checkbox' title='".$this->getFieldTitle($fk_field_name)."' name='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' id='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' value='".$row[$this->foreign_keys_array[$fk_field_name]['field_key']]."' checked>&nbsp;"; 
                    }else if($first_time) {
                        echo "<input type='checkbox' title='".$this->getFieldTitle($fk_field_name)."' name='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' id='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' value='".$row[$this->foreign_keys_array[$fk_field_name]['field_key']]."'>&nbsp;"; 
                    }
                    if($first_time) $first_time = false;
                    else echo "/";
                    echo $row[$this->foreign_keys_array[$fk_field_name]['field_name']];
                }
            //'view_type"=>"combobox" - default   
            }else{
                echo "<select title='".$this->getFieldTitle($fk_field_name)."' name='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."' id='".$this->getFieldRequiredType($fk_field_name).$fk_field_name."'>";
                echo "<option selected value=''>-- select --</option>";
                while($row = mysql_fetch_array($dSet)){
                    if($row[$this->foreign_keys_array[$fk_field_name]['field_key']] === $kFieldValue) 
                        echo "<option selected value='".$row[$this->foreign_keys_array[$fk_field_name]['field_key']]."'>".$row[$this->foreign_keys_array[$fk_field_name]['field_name']]."</option>";
                    else 
                        echo "<option value='".$row[$this->foreign_keys_array[$fk_field_name]['field_key']]."'>".$row[$this->foreign_keys_array[$fk_field_name]['field_name']]."</option>";
                }
                echo "</select>";                                
            }
        }else{
            $row = mysql_fetch_array($dSet);
            echo "&nbsp;".$row[$this->foreign_keys_array[$fk_field_name]['field_name']]."&nbsp;";
        }
        
    }

    ////////////////////////////////////////////////////////////////////////////
    // URL string creating
    ////////////////////////////////////////////////////////////////////////////
    //--------------------------------------------------------------------------
    // setUrlString Filtering
    //--------------------------------------------------------------------------  
    function setUrlStringFiltering(&$curr_url){
        if($this->allow_filtering){
            foreach($this->filter_fields as $fldFiled){
                $table_filed_name = "".$fldFiled['table']."_".$fldFiled['field'];
                if(isset($_REQUEST[$table_filed_name]) AND ($_REQUEST[$table_filed_name] != "")){
                    $curr_url .= "&".$fldFiled['table'].'_'.$fldFiled['field']."=".$_REQUEST[$table_filed_name]."";
                }
            }
            if(isset($_REQUEST['selSearchType']) && (trim($_REQUEST['selSearchType']) != ""))
                $curr_url .= "&selSearchType=".$_REQUEST['selSearchType']."";
            if(isset($_REQUEST['onSUBMIT_FILTER']) && (trim($_REQUEST['onSUBMIT_FILTER']) != ""))
                $curr_url .= "&onSUBMIT_FILTER=search";    
        }
    }

    //--------------------------------------------------------------------------
    // setUrlString Sorting
    //--------------------------------------------------------------------------  
    function setUrlStringSorting(&$curr_url){
        if(isset($_REQUEST['sort_field'])) {
           $this->sort_field = $_REQUEST['sort_field'];
           $curr_url .= "&sort_field=".$this->sort_field;
        }else {
            $curr_url .= "&sort_field=1";
        }; // make pKey      
        if(isset($_REQUEST['sort_type'])) {
            $this->sort_type = $_REQUEST['sort_type'];
            $curr_url .= "&sort_type=".$this->sort_type;
        } else {
            $curr_url .= "&sort_type=desc";
        };          
    }

    //--------------------------------------------------------------------------
    // setUrlString Pading
    //--------------------------------------------------------------------------  
    function setUrlStringPaging(&$curr_url){
        if($this->layouts['edit'] == 0){            
            if(isset($_REQUEST['page_size'])){
                $this->req_page_size = $_REQUEST['page_size'];
                $curr_url .= "&page_size=".$this->req_page_size;
            }else{ 
                $curr_url .= "&page_size=".$this->req_page_size;
            }            
        }else{            
            if($this->mode === "view"){
                $curr_url .= "&page_size=".$this->req_page_size;
            }else{
                if(isset($_REQUEST['page_size'])) $this->req_page_size = $_REQUEST['page_size']; 
                $curr_url .= "&page_size=".$this->req_page_size;
            }
        }
        if(isset($_REQUEST['p'])) {
            $this->page_current = $_REQUEST['p'];
            $curr_url .= "&p=".$this->page_current;
        }else {
            $this->page_current = 1;
            $curr_url .= "&p=1";
        };
    } 

    ////////////////////////////////////////////////////////////////////////////
    // View & Edit mode methods
    ////////////////////////////////////////////////////////////////////////////
    //--------------------------------------------------------------------------
    // get enum values
    //--------------------------------------------------------------------------
    function getEnumValues( $table , $field ){
        $query = " SHOW COLUMNS FROM `$table` LIKE '$field' ";
        $result = mysql_query( $query ) or die( 'error getting enum field ' . mysql_error() );
        $row = mysql_fetch_array( $result , MYSQL_NUM );
        #extract the values
        #the values are enclosed in single quotes
        #and separated by commas
        $regex = "/'(.*?)'/";
        preg_match_all( $regex , $row[1], $enum_array );
        $enum_fields = $enum_array[1];
        return( $enum_fields );
    } 
  
    //--------------------------------------------------------------------------
    // check if field exists & can be viewed
    //--------------------------------------------------------------------------
    function canViewField($field_name){
        if($this->mode === "view"){
            if(array_key_exists($field_name, $this->columns_view_mode)) return true;    
        }else if($this->mode === "edit"){
            if(array_key_exists($field_name, $this->columns_edit_mode)) return true;
        }else if($this->mode === "details"){
            if(array_key_exists($field_name, $this->columns_edit_mode)) return true;
        }
        return false;
    }
    //--------------------------------------------------------------------------
    // check if field exists & can be viewed
    //--------------------------------------------------------------------------
    function getHeaderName($field_name){        
        if($this->mode === "view"){
            if(array_key_exists($field_name, $this->columns_view_mode) && isset($this->columns_view_mode[$field_name]['header']))
                return $this->columns_view_mode[$field_name]['header']; 
        }else if($this->mode === "edit"){
            if(array_key_exists($field_name, $this->columns_edit_mode) && isset($this->columns_edit_mode[$field_name]['header'])){
                if(substr($this->getFieldRequiredType($field_name), 0, 1) == "r")
                    return $this->columns_edit_mode[$field_name]['header']." <font color='#ff0000'>*</font>";
                else
                    return $this->columns_edit_mode[$field_name]['header'];
            }
                
        }else if($this->mode === "details"){
            if(array_key_exists($field_name, $this->columns_edit_mode) && isset($this->columns_edit_mode[$field_name]['header']))
                return $this->columns_edit_mode[$field_name]['header']; 
        }        
        return $field_name;
    }

    //--------------------------------------------------------------------------
    // Returns field name
    //--------------------------------------------------------------------------
    function getFieldName($field_offset){
        $field_name = mysql_field_name($this->dataSet,$field_offset);
        if($field_name) return $field_name;
        else return $field_offset;
    }  

    //--------------------------------------------------------------------------
    // get Field Required Type
    //--------------------------------------------------------------------------
    function getFieldRequiredType($field_name){
        if(!isset($this->columns_edit_mode[$field_name]['req_type'])){
            return "sy";
        }else{
            return $this->columns_edit_mode[$field_name]['req_type'];
        }
    }

    //--------------------------------------------------------------------------
    // get Field Title
    //--------------------------------------------------------------------------
    function getFieldTitle($field_name){
        if(!isset($this->columns_edit_mode[$field_name]['title'])){
            return $field_name;
        }else{
            return $this->columns_edit_mode[$field_name]['title'];
        }
    }

    //--------------------------------------------------------------------------
    // getFieldValueByType
    //--------------------------------------------------------------------------
    function getFieldValueByType($field_value, $ind, $row){
        $field_name = $this->getFieldName($ind);
        if($this->mode === "view"){
            if(isset($this->columns_view_mode[$field_name]['text_length']) && ($this->columns_view_mode[$field_name]['text_length'] != "-1") && ($field_value != ""))
                $field_value = substr($field_value, 0, $this->columns_view_mode[$field_name]['text_length'])."...";            
            if(array_key_exists($field_name, $this->columns_view_mode)){
                if(!isset($this->columns_view_mode[$field_name]['type'])) $field_type = "label";
                else $field_type = $this->columns_view_mode[$field_name]['type'];
                switch($field_type){
                    case "label":
                        return "&nbsp;<label>".trim($field_value)."</label>&nbsp;"; break;
                    case "image":
                        if((trim($field_value) !== "")) //  && file_exists((trim($field_value)))
                            return "&nbsp;<img src='".trim($field_value)."' border='1' width='50px' height='30px' align='middle' />&nbsp;";
                        else
                            return "<div style='align: middle; display: block; border-color: #000000; width:50px; height: 30px'>[No]</div>";
                        break;
                    case "link":                        
                        if(isset($this->columns_view_mode[$field_name]['field'])){
                            $href_inner = $row[$this->columns_view_mode[$field_name]['field']];
                        }else if(isset($this->columns_view_mode[$field_name]['href'])){
                            $href_inner = $this->columns_view_mode[$field_name]['href']; 
                        }else{
                            $href_inner = "";
                        }
                        $prefix_inner = (isset($this->columns_view_mode[$field_name]['prefix']))?$this->columns_view_mode[$field_name]['prefix']:"";
                        $target_inner = (isset($this->columns_view_mode[$field_name]['target']))?$this->columns_view_mode[$field_name]['target']:"";
                        return "&nbsp;<a class='class_a2' href='".$prefix_inner.$href_inner."' target='".$target_inner."'>".trim($field_value)."</a>&nbsp;";                            
                        break;
                    case "password":
                        return "&nbsp;<label>*****</label>&nbsp;";
                        break;                    
                    default:
                        return "&nbsp;<label>".trim($field_value)."</label>&nbsp;"; break;
                }
            }            
        }else if(($this->mode === "edit") || ($this->mode === "details")){
            if ($this->mode === "details") $el_readonly ="readonly"; else $el_readonly ="";
            if(array_key_exists($field_name, $this->columns_edit_mode)){
                if(!$this->isText($this->getFieldName($ind))) $field_maxlength = "50";
                else $field_maxlength = mysql_field_len($this->dataSet, $ind);
                if(!isset($this->columns_edit_mode[$field_name]['type'])) $field_type = "label";
                else $field_type = $this->columns_edit_mode[$field_name]['type'];
                switch($field_type){
                    case "textarea":
                        return "<textarea $el_readonly title='".$this->getFieldTitle($field_name)."' id='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' name='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' rows='3' cols='20'>".trim($field_value)."</textarea>";
                        break;                    
                    case "textbox":                        
                        return "<input $el_readonly type='text' title='".$this->getFieldTitle($field_name)."' id='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' name='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' value='".trim($field_value)."' maxlength='".$field_maxlength."'>";
                        break;
                    case "date":
                        $ret_date  ="&nbsp;<a $el_readonly class='class_a2' title='".$this->getFieldTitle($field_name)."' href=\"javascript:openCalendar('', 'frmEditRow$this->unique_extention', '".$this->getFieldName($ind)."', 'datetime')\">
                        <img src='cal.gif' border='0' alt='Set Date' /></a>&nbsp;";
                        $ret_date .="<input readonly type='text' title='".$this->getFieldTitle($field_name)."' id='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' name='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' value='".trim($field_value)."' maxlength='".mysql_field_len($this->dataSet, $ind)."'>";
                        return $ret_date;
                        break;
                    case "label":
                        return "&nbsp;<label>".trim($field_value)."</label>&nbsp;"; break;
                        break;
                    case "password":
                        return "<input $el_readonly type='password' title='".$this->getFieldTitle($field_name)."' id='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' name='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' value='".trim($field_value)."' maxlength='".$field_maxlength."'>";
                        break;
                    default:
                        return "<input $el_readonly type='text' title='".$this->getFieldTitle($field_name)."' id='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' name='".$this->getFieldRequiredType($field_name).$this->getFieldName($ind)."' value='".trim($field_value)."' maxlength='".mysql_field_len($this->dataSet, $ind)."'>";  break;
                }
            }                        
        }
        return false;
    }

    //--------------------------------------------------------------------------
    // add Check Boxes Values
    //--------------------------------------------------------------------------
    function addCheckBoxesValues(){
        foreach($this->foreign_keys_array as $itemName => $itemValue){
            if(isset($itemValue['view_type']) && $itemValue['view_type'] == "checkbox"){
                $found = false;
                foreach($_POST as $i => $v){
                    if($i == $this->getFieldRequiredType($itemName).$itemName){
                        $found = true;
                    }
                }
                if(!$found){
                    $_POST[$this->getFieldRequiredType($itemName).$itemName] = 0;
                }
            }
            
        }
    }

    //--------------------------------------------------------------------------
    // set Common JavaScript
    //--------------------------------------------------------------------------
    function setCommonJavaScript(){
    //    echo "<script type='text/JavaScript'>"
    //    ."function reverseValue(el){"                        
      //  ."document.getElementById(el).style.value = !document.getElementById(el).style.value;"
        //."}</script>";        
    }
    
    //--------------------------------------------------------------------------
    // set Form Checking
    //--------------------------------------------------------------------------
    function setFormChecking(){
        echo "<script type='text/JavaScript' src='form.scripts.js'></script>";
    }

    //--------------------------------------------------------------------------
    // set Edit Fields Form Script
    //--------------------------------------------------------------------------
    function setEditFieldsFormScript($url){
        echo "<script type='text/JavaScript'>function sendEditFields(){";
        echo "document.frmEditRow$this->unique_extention.action +='".$url."';";
        echo "if(onSubmitCheck(document.frmEditRow$this->unique_extention)){";
        echo "document.frmEditRow$this->unique_extention.submit();";
        echo "}else{";
        echo "return false;";
        echo "}";
        echo "}</script>";
    }  
    
    //--------------------------------------------------------------------------
    // set Calendar
    //--------------------------------------------------------------------------
    function setCalendar(){
    /**
     * Opens calendar window.
     *
     * @param   string      calendar.php parameters
     * @param   string      form name
     * @param   string      field name
     * @param   string      edit type - date/timestamp
     */
    
    echo "<script type='text/JavaScript'>";
    echo "function openCalendar(params, form, field, type) {";
    echo "    window.open('calendar.php?' + params, 'calendar', 'width=220,height=260,status=yes');";
    echo "    dateField = eval('document.' + form + '.' + 'rt' + field);";
    echo "    dateType = type;";
    echo "}";
    echo "</script>";        
    }

}// end class




?>
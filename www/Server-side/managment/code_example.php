<?

################################################################################
##  Creating & Calling
##  ----------------------------------------------------------------------------
  require_once('datagrid/datagrid.class.php');
##
##  1.
##  *** creating variables that we need for database connection 

    $DB_USER='phpbuilder_dgrid';    // usually like this: prefix_name
    $DB_PASS='12345';               // must be already enscrypted
    $DB_HOST='db5.awardspace.com';  // often localhost
    $DB_NAME='phpbuilder_dgrid';    // usually like this: prefix_name   

  ob_start();
  $db_conn = mysql_connect($DB_HOST,$DB_USER,$DB_PASS);
  mysql_select_db($DB_NAME,$db_conn);
##  *** put primary key on the first place 
  $sql=" SELECT "
   ."tblCountries.CountryID, "
   ."tblRegions.Name as Region, "
   ."tblCountries.Name, "
   ."tblCountries.Description, "
   ."tblCountries.Population, "
   ."tblCountries.PictureURL, "
   ."tblDemocracy.description as is_democracy "
   ."FROM tblCountries INNER JOIN tblRegions ON tblCountries.RegionID=tblRegions.RegionID "
   ."LEFT OUTER JOIN tblDemocracy ON tblCountries.is_democracy=tblDemocracy.did ";
  $dgrid = new DataGrid();
  $dgrid->dataSource($db_conn, $sql);	    
##
##  General Settings
##  ---------
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
      "edit"=>array("view"=>true, "edit"=>true, "byfield"=>""),
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
  $top_paging = array();
  $dgrid->setPagingSettings($bottom_paging, $top_paging);
##

##  Filter Settings
##  ----------------------------------------------------------------------------
##  *** set filtering option: true or false(default)
  $f_option = true;
  $dgrid->allowFiltering(true);
##  *** set fileds in filtering mode:  
  $f_fileds = array(
      "Country"=>array("table"=>"tblCountries", "field"=>"Name", "operator"=>true),
      "Region"=>array("table"=>"tblRegions", "field"=>"Name", "operator"=>true),
      "Population"=>array("table"=>"tblCountries", "field"=>"Population", "operator"=>true)
  );
  $dgrid->setFieldsFiltering($f_fileds);
##

##  View Mode Settings: 
##  ----------------------------------------------------------------------------
##  *** set columns in view mode
  $vm_colimns = array(
      "Region"=>array("header"=>"Region Name","type"=>"label", "text_length"=>"-1"),
      "Name"=>array("header"=>"Country Name","type"=>"label", "text_length"=>"-1"),
      "Population"=>array("header"=>"Population","type"=>"label", "text_length"=>"-1"),
      "Description"=>array("header"=>"Short Description","type"=>"label", "text_length"=>"30"),
      "PictureURL"=>array("header"=>"Picture","type"=>"link", "field"=>"PictureURL", "prefix"=>"http://", "target"=>"_new", "text_length"=>"-1")
  );
  $dgrid->setColumnsInViewMode($vm_colimns);
##
##  Edit Mode settings:
##  ----------------------------------------------------------------------------
##  ***  set settings for details mode                             
  $table_name = "tblCountries";
  $primary_key = "CountryID";
  $dgrid->setTableEdit($table_name, $primary_key);
##  *** set columns in edit mode 
  $em_columns = array(
        "RegionID"      =>array("header"=>"Region","type"=>"textbox","req_type"=>"rt", "title"=>"Region Name"),
        "Name"          =>array("header"=>"Country","type"=>"textbox","req_type"=>"ry", "title"=>"Country Name"),
        "Description"   =>array("header"=>"Short Descr.","type"=>"textarea","req_type"=>"rt", "title"=>"Short Description"),
        "Population"    =>array("header"=>"Peoples","type"=>"textbox","req_type"=>"ri", "title"=>"Population(Peoples)"),
        "PictureURL"    =>array("header"=>"ImageURL","type"=>"textbox","req_type"=>"rt", "title"=>"Image URL"),
        "is_democracy"  =>array("header"=>"IsDemocracy","type"=>"textbox","req_type"=>"sy", "title"=>"Is Democraty")
  );
  $dgrid->setColumnsInEditMode($em_columns);
##  *** set foreign keys for edit mode 
  $f_keys = array(
      "RegionID"=>array("table"=>"tblRegions", "field_key"=>"RegionID", "field_name"=>"Name", "view_type"=>"combobox"),
      "is_democracy"=>array("table"=>"tblDemocracy ", "field_key"=>"did", "field_name"=>"description", "view_type"=>"radiobutton")
  ); 
  $dgrid->setForeignKeysEdit($f_keys);
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
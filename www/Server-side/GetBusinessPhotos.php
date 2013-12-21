<?php
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

class BusinessPhotoAPI {

    private $db;

    // Constructor - open DB connection
    public function __construct() {
        $this->db = new mysqli('localhost', USER, PASSWORD, DATABASE);
		mysqli_set_charset($this->db, "utf8");
        $this->db->autocommit(FALSE);
		
		//$statement = $this->db->prepare("SET NAMES 'hebrew'");
		//$statement->execute();

		
				
		/* check connection */
		if (mysqli_connect_errno()) {
			printf("Connect failed: %s\n", mysqli_connect_error());
			exit();
		}


    }

    // Destructor - close DB connection
    public function __destruct() {
        $this->db->close();
    }
		
    // Main method to redeem a code
    function GeBusinessPhotos() {
	
			$rw_app_id = $_GET["id"];
				
			$query = "SELECT BusinessID, PhotoID, PhotoURL 
						FROM businessphoto
						WHERE BusinessID = $rw_app_id and Active=1
						order by SortOrder
						";
			//echo $query;
            $result = $this->db->query(strtolower($query));
		
			if($result){
				json_encode_utf($result);	
				/* free result set */
				$result->free();
			}
			else{
				printf ("no data\n");
			}
    }

}

/*if(login_check($mysqli) == true)
{*/
	$api = new BusinessPhotoAPI();
	$api->GeBusinessPhotos();
/*} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}*/



	
?>
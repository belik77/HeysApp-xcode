<?php
header('Content-Type: text/html; charset=windows-1255');

include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

class BusinessSalesAPI {

    private $db;

    // Constructor - open DB connection
    public function __construct() {
        $this->db = new mysqli('localhost', USER, PASSWORD, DATABASE);
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
    function GeBusinessSaless() {
	
			$rw_app_id = $_GET["id"];
				
			$query = "SELECT BusinessID, SaleID, SaleDetail
						FROM businesssale
						WHERE BusinessID = $rw_app_id and Active = 1
						order by SortOrder
						";
			//echo $query;
            $result = $this->db->query(strtolower($query));
		
			if($result){	
				
				$myArray = array();
				
				while($row = $result->fetch_array(MYSQL_ASSOC)) {
						$myArray[] = $row;
				}
				// JSON-ify all rows together as one big array
				
				//echo "{<br>",'Items:<br>',json_encode($myArray),'<br>}';
				echo json_encode($myArray);

				/* free result set */
				$result->free();
			}
			else{
				printf ("no data\n");
			}
    }

}

if(login_check($mysqli) == true)
{
	$api = new BusinessSalesAPI();
	$api->GeBusinessSaless();
} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}



	
?>
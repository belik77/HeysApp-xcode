<?php
header('Content-Type: text/html; charset=windows-1255');

include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

class BusinessPhoneAPI {

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
    function GeBusinessPhones() {
	
			$rw_app_id = $_GET["id"];
				
			$query = "SELECT BusinessID, PhoneNumber
						FROM businessphone 
						WHERE BusinessID = $rw_app_id
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
	$api = new BusinessPhoneAPI();
	$api->GeBusinessPhones();
} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}



	
?>
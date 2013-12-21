
<?php

//INSERT INTO `business` (`id`, `business_name`, `Type_id`, `CapacityPercent`, `Country_ID`, `Location_ID`, `full_address`, `longitude`, `latitude`, `contact_email`, `status_id`, `last_update_time`) VALUES (NULL, '?????', '1', '30', NULL, '1', '????? 17 ???????', NULL, NULL, NULL, '0', '2013-01-31 00:00:00');


// Helper method to send a HTTP response code/message
function sendResponse($status = 200, $body = '', $content_type = 'text/html')
{
    $array = array(                     
	'business_id' => rand(1,13),                     
	'BusinessName' => 'Elis place'                        
	);
	// output this array json encoded.. the callback function being the padding (a function available in the web page)     
	echo json_encode($array); 

		
}

class BusinessAPI {

    private $db;

    // Constructor - open DB connection
    public function __construct() {
        $this->db = new mysqli('localhost', USER, PASSWORD, DATABASE);
        $this->db->autocommit(FALSE);
		
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
    function BusinessByID() {
    
			//read the params
			$rw_app_id = $_GET["id"];
			$rw_app_longitude = $_GET["longitude"];
			$rw_app_latitude = $_GET["latitude"];
			
			
            
            // Look up business in database
            $user_id = 0;
			$id=0;
			$businessName =""; $Type_id = -1; $CapacityPercent=0; $Country_ID=-1; $Location_ID=-1; $full_address=""; $longitude=-1; $latitude=-1; $contact_email="";
			$status_id=-1; $last_update_time;
			$query = "SELECT id, business_name, Type_id, CapacityPercent, Country_ID, Location_ID, full_address, longitude, latitude, contact_email, status_id, last_update_time 
						from Business 
						where id =$rw_app_id
						LIMIT 50";
			


		
            $result = $this->db->query(strtolower($query));
		
			if($result){	
				
				$myArray = array();

				while($row = $result->fetch_array(MYSQL_ASSOC)) {
						$myArray[] = $row;
				}
				// JSON-ify all rows together as one big array
				echo json_encode($myArray);

				/* free result set */
				$result->free();
			}
			else{
				printf ("no data\n");
			}
			
		/* $array = array(                     
		'business_id' => rand(1,13),                     
		'BusinessName' => 'Elis place'                        
		);
		// output this array json encoded.. the callback function being the padding (a function available in the web page)     
		echo json_encode($array);*/
			


            //$stmt->bind_param("is", $id);
            /*$stmt->execute();
            $stmt->bind_result($id, $businessName, $Type_id, $CapacityPercent, $Country_ID, $Location_ID, $full_address, $longitude, $latitude, $contact_email, $status_id, $last_update_time);
            while ($stmt->fetch()) {
                //while ( $row = $result->fetch_row() ) echo "Now it's: ", row[0]; 
				$row = $result->fetch_row();
				//echo "Now it's: ", $row[0];
		
				$id = $row[0];
				echo $row[0];
            }*/
            

	
            // Add tracking of redemption
            /*$stmt = $this->db->prepare("INSERT INTO rw_promo_code_redeemed (rw_promo_code_id, device_id) VALUES (?, ?)");
            $stmt->bind_param("is", $id, $device_id);
            $stmt->execute();
            $stmt->close();
            
            // Decrement use of code
            $this->db->query("UPDATE rw_promo_code SET uses_remaining=uses_remaining-1 WHERE id=$id");
            $this->db->commit();
            */
            // Return unlock code, encoded with JSON
            /*$result = array(
                "businessName" => $businessName,
            );
            sendResponse(200, json_encode($result));
            return true;
       // }
       // sendResponse(400, 'Invalid request');
      //  return false;*/
	  
	  // mysqli->query creates a NEW OBJECT
 //This object has it's own properties and methods


    }

}

$api = new BusinessAPI();
$api->BusinessByID();
	
?>
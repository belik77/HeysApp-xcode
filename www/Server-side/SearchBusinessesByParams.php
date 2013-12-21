<?php
header('Content-Type: text/html; charset=windows-1255');

include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

//INSERT INTO `business` (`id`, `business_name`, `Type_id`, `CapacityPercent`, `Country_ID`, `Location_ID`, `full_address`, `longitude`, `latitude`, `contact_email`, `status_id`, `last_update_time`) VALUES (NULL, '?????', '1', '30', NULL, '1', '????? 17 ???????', NULL, NULL, NULL, '0', '2013-01-31 00:00:00');



class BusinessAPI {

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
    function BusinessByCords() {
    
			//read the params
			$rw_app_longitude = $_GET["longitude"];
			$rw_app_latitude = $_GET["latitude"];
			
			            
            // Look up business in database far from the user no more than X KM			
			//echo $row[0];
            $distance = GetSysParam('MaxDistance',$this->db);//5
			//echo $distance;
			
			//Option 1( miles)			
			/*$query = "SELECT id, business_name, Type_id, CapacityPercent, Country_ID, Location_ID, full_address, longitude, latitude, contact_email, status_id, last_update_time,
							3956 * 2 * ASIN(SQRT( POWER(SIN(($rw_app_latitude -abs( `latitude`)) * pi()/180 / 2),2) + COS($rw_app_latitude * pi()/180 ) * COS( abs(`latitude`) *  pi()/180) * POWER(SIN(($rw_app_longitude -`longitude`) * pi()/180 / 2),2) )) as distance
						FROM Business
						having distance < $distance
						ORDER BY distance limit 10";*/
			//option 2. this is by KM	
			$LimitPlaces = GetSysParam('MaxBusinessLimit',$this->db);
			$query = "SELECT id, business_name BusinessName,(((acos(sin(($rw_app_latitude*pi()/180)) * sin((`Latitude`*pi()/180))+cos(($rw_app_latitude*pi()/180)) * cos((`Latitude`*pi()/180)) * cos((($rw_app_longitude- `Longitude`)*pi()/180))))*180/pi())*60*1.1515*1.609344) as distance 
						FROM Business
					    having distance < $distance
					  UNION
					  SELECT -1,'NOT IN PLACE',-1
					  FROM Business
					  ORDER BY distance limit $LimitPlaces";
			//echo $query;


		
            $result = $this->db->query($query);
		
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

if(login_check($mysqli) == true)
{
	$api = new BusinessAPI();
	$api->BusinessByCords();
} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}



	
?>
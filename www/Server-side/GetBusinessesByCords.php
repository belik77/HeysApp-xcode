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
			$rw_app_filtered = $_GET["filtered"];
			
			//echo $rw_app_filtered;
				//need to filter more
				if($rw_app_filtered==1)
				{
					$rw_app_location = $_GET["location"];//the location, city etc..
					$rw_app_cat = $_GET["cat"];//category
					$rw_app_text = $_GET["text"];//free text. search by bussines name or address
					$rw_app_lastrow = $_GET["lastrow"];//the last row we got in the previous read. used when user click more places in the list
				}
				

			            
            // Look up business in database far from the user no more than X KM			
			//echo $row[0];
            //
			if ($rw_app_filtered==1)//we are in the search screen
			{
				$distance = GetSysParam('MaxDistance',$this->db);
			}
			else//we are in the places near by me screen.
			{
				$distance = GetSysParam('MaxDistanceForNearBy',$this->db);
			}
			
			//echo $distance;
			
			//Option 1( miles)			
			/*$query = "SELECT id, business_name, Type_id, CapacityPercent, Country_ID, Location_ID, full_address, longitude, latitude, contact_email, status_id, last_update_time,
							3956 * 2 * ASIN(SQRT( POWER(SIN(($rw_app_latitude -abs( `latitude`)) * pi()/180 / 2),2) + COS($rw_app_latitude * pi()/180 ) * COS( abs(`latitude`) *  pi()/180) * POWER(SIN(($rw_app_longitude -`longitude`) * pi()/180 / 2),2) )) as distance
						FROM Business
						having distance < $distance
						ORDER BY distance limit 10";*/
			//option 2. this is by KM	
			$LimitPlaces = GetSysParam('MaxBusinessLimit',$this->db);
			
			$WHERE = "1 ";
			$ORDERBY = "";
			
			//if filtered, build the WHERE clause
			if ($rw_app_filtered==1)//we are in the search screen
			{
				if($rw_app_location!="-1")
				{
					$WHERE = $WHERE."AND Location_ID=$rw_app_location ";
				}
				if($rw_app_cat!="-1")
				{
					$WHERE = $WHERE."AND Type_id=$rw_app_cat ";
				}
				if($rw_app_text!="NOTEXTFILTER")
				{
					$WHERE = $WHERE."AND (business_name LIKE '%".$rw_app_text."%' OR full_address LIKE '%".$rw_app_text."%') ";
				}
			}
			
			//define the Order by column
			$rw_app_sortingBy = $_GET["sortingBy"];
			
			switch ($rw_app_sortingBy)
			{
				case "distance":
					$ORDERBY = $ORDERBY."distance ASC";
					break;
				case "Capacity":
					$ORDERBY = $ORDERBY."CapacityPercent DESC";
					break;
				case "last_update_time":
					$ORDERBY = $ORDERBY."last_update_time DESC";
					break;
				case "Likes":
					$ORDERBY = $ORDERBY."LikesCounter DESC";
					break;
				case "Age":
					$ORDERBY = $ORDERBY."MinAge+MaxAge ASC";
					break;
			}
			
			
			$query = "SELECT id, business_name BusinessName,(((acos(sin(($rw_app_latitude*pi()/180)) * sin((`Latitude`*pi()/180))+cos(($rw_app_latitude*pi()/180)) * cos((`Latitude`*pi()/180)) * cos((($rw_app_longitude- `Longitude`)*pi()/180))))*180/pi())*60*1.1515*1.609344) as distance";
			if ($rw_app_filtered=="1")//we are in the search screen
			{
				$query = $query.",MoreBoys, MoreGirls, CapacityPercent, last_update_time,MinAge, MaxAge, LikesCounter, LogoURL,account_level";
			}
			
			$query = $query."
						FROM Business
						WHERE $WHERE
					    having distance < $distance
						";
						
			if ($rw_app_filtered=="0")//we are in the near by screen
			{			
					  $query = $query." UNION
					  SELECT -1,'NOT IN PLACE',-1
					  FROM Business ";
			}
			
		    //concate the order by
			$query = $query."ORDER BY $ORDERBY 
							limit $LimitPlaces";
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

/*if(login_check($mysqli) == true)
{*/
	$api = new BusinessAPI();
	$api->BusinessByCords();
/*} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}*/



	
?>
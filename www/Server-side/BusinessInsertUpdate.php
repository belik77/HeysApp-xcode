<?php
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

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

	function GetNextBusinessID()
	{
		$id=-1;
		if ($stmt = $mysqli->prepare("SELECT max(id)+1 FROM business")) { 
			$stmt->execute(); // Execute the prepared query.
			$stmt->store_result();
	 
			if($stmt->num_rows == 1) { // If the user exists
			   $stmt->bind_result($id); // get variables from result.
			   $stmt->fetch();
			   return $id;
			} else {
				// Not logged in
				return 1;
			}
		 } else {
			// Not logged in
			return -1;
		 }
	}
	
	function GetLocationID($location_name)
	{
		$id=-1;
		if ($stmt = $mysqli->prepare("SELECT id FROM location where LocationName like $location_name")) { 
			$stmt->execute(); // Execute the prepared query.
			$stmt->store_result();
	 
			if($stmt->num_rows == 1) { // If the ocation exists
			   $stmt->bind_result($id); // get variables from result.
			   $stmt->fetch();
			   return $id;
			} else {
				// Not logged in
				return -1;
			}
		 } else {
			// Not logged in
			return -1;
		 }
	}
	
	function addBusinessType($type_id, $business_id)
	{
		if ($stmt = $mysqli->prepare("SELECT id FROM business_types where businessid = $business_id and typeid = $type_id" ) ) { 
			$stmt->execute(); // Execute the prepared query.
			$stmt->store_result();
	 
			if($stmt->num_rows == 0) { // If the  not type exists
			   $this->db->query("INSERT INTO business_types (business_id,type_id) VALUES($business_id,$type_id)");
			   
			   $this->db->commit();
			} else {
				// Not logged in
				return;
			}
		 } else {
			// Not logged in
			throw new Exception("failed: addBusinessType");
			return;
		 }
	}
	
	function removesBusinessType()
	{
		if ($stmt = $mysqli->prepare("SELECT id FROM business_types where businessid = $business_id and typeid = $type_id" ) ) { 
			$stmt->execute(); // Execute the prepared query.
			$stmt->store_result();
	 
			if($stmt->num_rows == 1) { // If the  not type exists
			   $this->db->query("DELETE FROM business_types WHERE business_id = $business_id AND type_id = $type_id");
			   
			   $this->db->commit();
			} else {
				// Not logged in
				return;
			}
		 } else {
			// Not logged in
			throw new Exception("failed: removesBusinessType");
			return;
		 }
	}
	
    // Main method to redeem a code
    function BusinessInsertUpdate() {
    
			//read the params
			if(isset($_POST['id'])) { 
				$id = $_POST['id'];
				}
				else{
					$id = -1;
				}
			if(isset($_POST['business_name '])) { 
				$business_name  = $_POST['business_name '];
				}
				else{
					$business_name  = "";
					throw new Exception("Business name must not be empty");
				}
			
			if(isset($_POST['Location']) && $_POST['Location'] !='') { 
				$Location = $_POST['Location'];
				}
				else{
					$Location = -1;
					throw new Exception("Location must not be empty");
				}
			
			if(isset($_POST['full_address']) && $_POST['full_address'] !='') { 
				$full_address = $_POST['full_address'];
				}
				else{
					$full_address = -1;
					throw new Exception("full_address must not be empty");
				}
			if(isset($_POST['longitude '])) { 
					$longitude  = $_POST['longitude'];;
					}
					else
					{
						$longitude =-1;
					}
			if(isset($_POST['latitude '])) { 
					$latitude  = $_POST['latitude'];;
					}
					else
					{
						$latitude =-1;
					}
					
			
			if(isset($_POST['LogoURL '])) { 
					$LogoURL  = $_POST['LogoURL'];;
					}
					else
					{
						$LogoURL ="resources/images/logo.png";
					}
			
			if(isset($_POST['HomePageURL '])) { 
					$HomePageURL  = $_POST['HomePageURL'];;
					}
					else
					{
						$HomePageURL ="";
					}
			
			if(isset($_POST['MinAge '])) { 
					$MinAge  = $_POST['MinAge'];;
					}
					else
					{
						$MinAge =0;
					}
			
			if(isset($_POST['MaxAge '])) { 
					$MaxAge  = $_POST['MaxAge'];;
					}
					else
					{
						$MaxAge =0;
					}
					
			if(isset($_POST['email']) && $_POST['email'] !='') { 
				$email = $_POST['email'];
				}
				else{
					$email   = "";
				}
			
			if(isset($_POST['BusinessHours']) && $_POST['BusinessHours'] !='') { 
				$BusinessHours = $_POST['BusinessHours'];
				}
				else{
					$BusinessHours   = "";
				}
			
			
			if(isset($_POST['business_phone']) && $_POST['business_phone'] !='') { 
				$business_phone = $_POST['business_phone'];
				}
				else{
					$business_phone   = "";
				}
			
			
			if(isset($_POST['BusinessSummary']) && $_POST['BusinessSummary'] !='') { 
				$BusinessSummary = $_POST['BusinessSummary'];
				}
				else{
					$BusinessSummary   = "";
				}
			
			
			if(isset($_POST['TodayStyle']) && $_POST['TodayStyle'] !='') { 
				$TodayStyle = $_POST['TodayStyle'];
				}
				else{
					$TodayStyle   = "";
				}
				
			
			if(isset($_POST['today_deals']) && $_POST['today_deals'] !='') { 
				$today_deals = $_POST['today_deals'];
				}
				else{
					$today_deals   = "";
				}
			
			if(isset($_POST['Pub']) && $_POST['Pub'] !='') { 
				$Pub = $_POST['Pub'];
				}
				else{
					$Pub   = 0;
				}
						
			if(isset($_POST['Restaurant']) && $_POST['Restaurant'] !='') { 
				$Restaurant = $_POST['Restaurant'];
				}
				else{
					$Restaurant   = 0;
				}
			
			
			if(isset($_POST['Coffee']) && $_POST['Coffee'] !='') { 
				$Coffee = $_POST['Coffee'];
				}
				else{
					$Coffee   = 0;
				}
			
			
			if(isset($_POST['mall']) && $_POST['mall'] !='') { 
				$mall = $_POST['mall'];
				}
				else{
					$mall   = 0;
				}
			
		$location_id = GetLocationID($Location);
		
			
		if ($id==-1)
		  {
		  
			$id = GetNextBusinessID();
			 $this->db->query("INSERT INTO business (
				id ,
				business_name ,
				Location_ID ,
				full_address ,
				longitude ,
				latitude ,
				LogoURL,
				MinAge,
				MaxAge,
				HomePageURL,
				TodayStyle,
				BusinessSummary,
				BusinessHours,
				business_phone,
				email ,
				today_deals,
				last_update_time
				)
				VALUES (
				$id ,
				$business_name ,
				$$location_id ,
				$full_address ,
				$longitude ,
				$latitude ,
				$LogoURL,
				$MinAge,
				$MaxAge,
				$HomePageURL,
				$TodayStyle,
				$BusinessSummary,
				$BusinessHours,
				$business_phone,
				$email ,
				today_deals,
				SYSDATE()
				)");
				
							
				$this->db->commit(); 
				}
			else {
			 // Update the ranks fields. the capacity and lineLenght fields are being overriden since it is done by the manager
			   if($id>-1){
				$this->db->query("UPDATE business SET business_name  = $business_name,
														Location_ID = $location_id,
														full_address = $full_address,
														longitude  = $longitude,
														latitude = $latitude ,
														LogoURL $LogoURL,
														MinAge = $MinAge,
														MaxAge = $MaxAge,
														HomePageURL = $HomePageURL,
														TodayStyle =$TodayStyle,
														BusinessSummary = $BusinessSummary,
														BusinessHours = $BusinessHours,
														business_phone = $business_phone,
														email = $email ,
														today_deals = $today_deals
								  WHERE id=$id");
				
				$this->db->commit();
				
				}
		}

}

if(login_check($mysqli) == true)
{
	$api = new BusinessAPI();
	$api->BusinessInsertUpdate();
} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}



	
?>
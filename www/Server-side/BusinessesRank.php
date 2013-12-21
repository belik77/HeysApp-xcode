
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

    // Main method to redeem a code
    function BusinessRank() {
    
			//read the params
			
			$id = $_GET["BusinessID"];
			$capacitybtnidx = $_GET["capacity"];
			$MoreBoysGirls = $_GET["MoreBoysGirls"];//0-boys, 1-girls, 2- norate
			$LineLenght = $_GET["LineLenght"];
			$user_id = $_GET["user_id"];
			$MoreBoys;$MoreGirls;
			$LineLenghtSum;
			$capacity;
			
			//do some cleanups
			$this->db->query("delete from businessuserrating where ratingtime<DATE_ADD(SYSDATE(),INTERVAL -3 HOUR)");
			
			$this->db->commit();
			
			switch ($capacitybtnidx)
				{
					case "0"://Empty 
						$capacity=14;
						break;
					case "1"://Cool 
						$capacity=43;
						break;
					case "2"://Hot 
						$capacity=77;
						break;
				    case "3"://full
						$capacity=99;
						break;
					default:
						$capacity=0;
				}
			
						
			if($capacity>0) { 
				$capacitySum = 1;
				}
				else{
					$capacity = 0;
					$capacitySum = 0;
				}
			if($LineLenght>0) { 
				$LineLenghtSum = 1;
				}
				else{
					$LineLenght = 0;
					$LineLenghtSum = 0;
				}
				
				
				switch ($MoreBoysGirls)
				{
					case "0"://boys
						$MoreBoys=1;$MoreGirls=0;
						break;
					case "1"://girls
						$MoreBoys=0;$MoreGirls=1;
						break;
					default:
						$MoreBoys=0;$MoreGirls=0;
				}
			
			            
          
			
           // $this->db->commit();			  
			 
			 $now = '"'.date('Y-m-d H:i:s').'"';
			 //echo $now;
			 $result = $this->db->query("SELECT COUNT(*) FROM businessuser where BusinessID=$id and UserID=$user_id");
			 $row = $result->fetch_array(MYSQLI_NUM);
			 //ECHO $row[0];
			 if($row[0]>0){
				
				$this->db->query("UPDATE businessuser set LastRatingTime = $now,  	RatingScore =  	RatingScore +1
								WHERE BusinessID=$id and UserID=$user_id");					
			    //$this->db->commit();
			 }
			 else
			 {
				$this->db->query("INSERT INTO businessuser(BusinessID, UserID, LastRatingTime, RatingScore, LastGoingClickTime)
									VALUES($id , $user_id, $now ,1,NULL)");
				//$this->db->commit();	
			 }
			 
			 //log the rating
			 $query = "INSERT INTO businessuserrating(BusinessID, UserID, RatingTime, capacity, MoreBoys, MoreGirls, LineLenght)
									VALUES($id , $user_id, $now ,$capacity, $MoreBoys, $MoreGirls, $LineLenght)";
			// echo $query; 
			 $this->db->query($query);
			 
			
			//update the business last update time
			$query = "UPDATE business set last_update_time = $now
								WHERE id=$id";	
		    $this->db->query($query);
			
			
			$this->db->commit();						
			// Update the ranks fields based on the last hour ratings
			/*$result = $this->db->query("SELECT COUNT(*) FROM businessuserrating where BusinessID=$id and UserID=$user_id and RatingTime>=DATE_ADD(SYSDATE(),INTERVAL -2 HOUR)");
			$row = $result->fetch_array(MYSQLI_NUM);
			$RatingCount = $row[0];
			
			//generate a random value for capacity
			$randomCapacity = mt_rand(28,64);
			//echo 'randomCapacity:'.$randomCapacity;
			//if($RatingCount>0)//there are ratings
			{
				$CapacityPercentAVG=0;$MoreBoysPercent=0;$MoreGirlsPercent=0;$LineLenghtAVG=0;
				
				//Capacity
				$query = "SELECT SUM(capacity) FROM businessuserrating where businessID=$id and UserID=$user_id and ratingtime>=DATE_ADD(SYSDATE(),INTERVAL -2 HOUR)";
				//echo $query;
				$result = $this->db->query($query);
				$row = $result->fetch_array(MYSQLI_NUM);
				$CapacitySum=$row[0];
				if($CapacitySum>0)//there are ratings
				{
					//echo 'CapacitySum:'.$CapacitySum;
					//echo 'RatingCount'.$RatingCount;
					//calculate the capacity average, and adding a random value between 35 to 60
					$CapacityPercentAVG = ($CapacitySum+$randomCapacity)/($RatingCount+1);
				}
				else
				{
					$CapacityPercentAVG=$randomCapacity;
				}
				
				//Boys/girls
				$result = $this->db->query("SELECT SUM(MoreBoys) FROM businessuserrating where BusinessID=$id and UserID=$user_id and RatingTime>=DATE_ADD(SYSDATE(),INTERVAL -2 HOUR)");
				$row = $result->fetch_array(MYSQLI_NUM);
				$MoreBoysSum=$row[0];
				if(!$MoreBoysSum>0)//there are no ratings
				{
					$MoreBoysSum=0;
				}
				$result = $this->db->query("SELECT SUM(MoreGirls) FROM businessuserrating where BusinessID=$id and UserID=$user_id and RatingTime>=DATE_ADD(SYSDATE(),INTERVAL -2 HOUR)");
				$row = $result->fetch_array(MYSQLI_NUM);
				$MoreGirlsSum=$row[0];
				if(!$MoreGirlsSum>0)//there are no ratings
				{
					$MoreGirlsSum=0;
				}
				
				if($MoreBoysSum+$MoreGirlsSum>0)
				{
					$MoreBoysPercent = ($MoreBoysSum/($MoreBoysSum+$MoreGirlsSum))*100;
					$MoreGirlsPercent = ($MoreGirlsSum/($MoreBoysSum+$MoreGirlsSum))*100;
				}
				
				
				//LineLenght
				//Capacity
				$result = $this->db->query("SELECT SUM(LineLenght) FROM businessuserrating where BusinessID=$id and UserID=$user_id and RatingTime>=DATE_ADD(SYSDATE(),INTERVAL -2 HOUR)");
				$row = $result->fetch_array(MYSQLI_NUM);
				$LineLenghtSum=$row[0];
				if($LineLenghtSum>0)//there are ratings
				{
					$LineLenghtAVG = $LineLenghtSum/$RatingCount;
				}
				else
				{
					$LineLenghtAVG=0;
				}
				
				
				//update the business with the underline data
				$this->db->query("UPDATE business SET CapacityPercent= $CapacityPercentAVG,
													  MoreBoys=$MoreBoysPercent,
													  MoreGirls=$MoreGirlsPercent,
													  LineLenght=$LineLenghtAVG,
													  LastRankTime = $now
								  WHERE id=$id");
			}
							  
			 
			$this->db->commit();*/
			
		  	
			echo '[{"result":true}]';


    }

}

/*if(login_check($mysqli) == true)
{*/
	$api = new BusinessAPI();
	$api->BusinessRank();
/*} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}*/



	
?>
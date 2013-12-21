<?php
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

class BusinessGoingAPI {

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
	
	//reset going counter
	function ResetGoingForAll($all)
	{
		$this->db->query("UPDATE business SET GoingCounter=0");
        $this->db->commit();
		
		$string = '{"result":true}';
		$json = $string;
		echo indent($json);
	}
	
	function IncrementGoing($BusinessID,$userID)
	{
		//check when last time user click the going button for specific business
		/*$stmt = $this->db->prepare("SELECT LastGoingClickTime FROM members WHERE UserID = ? and BusinessID = ? LIMIT 1");
		$stmt->bind_param('ii', $userID,$BusinessID); 
		$stmt->execute(); // Execute the prepared query.
		$stmt->store_result();
		$LastGoingClickTime;
		$stmt->bind_result($LastGoingClickTime);*/
		
		//$result = $this->db->query("SELECT LastGoingClickTime FROM businessuser WHERE UserID = $userID and BusinessID = $BusinessID LIMIT 1");
		/*if($result){
			$row = $result->fetch_object();
			$LastGoingClickTime = $row->LastGoingClickTime;
			$today = date("Y-m-d H:i:s");
			echo $today;*/
			
			//check if the user never click going or click more than 1 day ago.
		//	if(is_null($LastGoingClickTime) or $today->diff($LastGoingClickTime)->days > 0)
		//	{
			//increament the over all counter of the business
				
				$this->db->query("UPDATE business SET GoingCounter=IFNULL(GoingCounter,0)+1
								  WHERE id=$BusinessID");
				//$this->db->commit();
				//echo 'after in';		//set the user last going time update
			 //check if row exists already for user/business	
			 $result = $this->db->query("SELECT COUNT(*) FROM businessuser where BusinessID=$BusinessID and UserID=$userID");
			 $row = $result->fetch_array(MYSQLI_NUM);
			 //ECHO $row[0];
			 if($row[0]>0){
				
				$this->db->query("UPDATE businessuser SET LastGoingClickTime=SYSDATE()
								  WHERE BusinessID=$BusinessID and UserID=$userID");				
			    //$this->db->commit();
			 }
			 else
			 {
				$this->db->query("INSERT INTO businessuser(BusinessID, UserID, LastRatingTime, RatingScore, LastGoingClickTime)
									VALUES($BusinessID , $userID, NULL,1,SYSDATE())");
				//$this->db->commit();	
			 }	
			 
			 $this->db->commit();
				
				$string = '[{"result":true}]';
				$json = $string;
				echo indent($json);
		//	}
		
		//}
			
		//set the last time user click it
		
	}

    // Main method to redeem a code
    function BusinessGoing() {
    
	
			$rw_app_id = $_GET["BusinessID"];
			$user_id = $_GET['user_id'];
			
			if($rw_app_id==-1)//mean we need to rest all Going counters
			{
				//echo $rw_app_id;
				$this->ResetGoingForAll(1);
			}
			else
			{
				//echo $rw_app_id;
				//echo $rw_app_id, $user_id;
				$this->IncrementGoing($rw_app_id,$user_id);
			}
	
    }

}

/*if(login_check($mysqli) == true)
{*/
	$api = new BusinessGoingAPI();
	$api->BusinessGoing();
/*} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}*/



	
?>
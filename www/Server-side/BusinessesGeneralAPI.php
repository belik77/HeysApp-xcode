<?php
include 'db_connect.php';
include 'functions.php';
sec_session_start(); // Our custom secure way of starting a php session. 

class BusinessGeneralAPI {

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
	
	//user click the home page link
	function BusinessClickHomepage()
	{
	
		$rw_app_id = $_GET["BusinessID"];
		
		$this->db->query("UPDATE business SET HomePageURLClickCount=HomePageURLClickCount+1 where id = $rw_app_id");
        $this->db->commit();
	}
	
	//user click the like button
	function BusinessLikeClick()
	{
	
		$rw_app_id = $_GET["BusinessID"];
		
		$this->db->query("UPDATE business SET LikesCounter=LikesCounter+1 where id = $rw_app_id");
        $this->db->commit();
	}
	
	function BusinessPhoneClickCount()
	{
	
		$rw_app_id = $_GET["BusinessID"];
			
		$this->db->query("UPDATE business SET PhoneClickCounter=PhoneClickCounter+1 where id = $rw_app_id");
        $this->db->commit();
	}
	
	//add the businessID to the favorite list of the user
	function BusinessAddToFavorite()
	{
	
		$id = $_GET["BusinessID"];
		$user_id = $_SESSION['user_id'];
		
		//check if user already have the bussiness in his favorite list
		$result = $this->db->query("SELECT COUNT(*) FROM businessuserfavorite where BusinessID=$id and UserID=$user_id");
		$row = $result->fetch_array(MYSQLI_NUM);
		//ECHO $row[0];
		if($row[0]==0){//not found
			$query = "INSERT INTO businessuserfavorite(BusinessID, UserID)
									VALUES($id , $user_id)";
			//echo $query;							
			$this->db->query($query);
			$this->db->commit();
		}
		
        $this->db->commit();
	}
	
	//user click the like button
	function BusinessRemoveFromFavorite()
	{
	
		$id = $_GET["BusinessID"];
		$user_id = $_SESSION['user_id'];
		
		$this->db->query("delete from  businessuserfavorite where BusinessID=$id and UserID=$user_id");
        $this->db->commit();
	}
	
	function SetPushNotification()
	{
		$rw_app_id = $_GET["user_id"];
		$push_state = $_GET["push_state"];//0-off, 1-on
		
			
		$this->db->query("UPDATE user_data SET push_notification=$push_state where user_id = $rw_app_id");
        $this->db->commit();;
	}
	
	function GetTotalUserScore()
	{
		$user_id = $_SESSION['user_id'];
		
		$total_user_score;
		if ($stmt = $this->db->prepare("SELECT SUM(RatingScore) FROM businessuser WHERE UserID = ? LIMIT 1")) { 
				$stmt->bind_param('i', $user_id); // Bind "$email" to parameter.
				$stmt->execute(); // Execute the prepared query.
				$stmt->store_result();
				$stmt->bind_result($total_user_score); // get variables from result.
				//echo $total_user_score;
				$stmt->fetch();
				
				//echo "total_user_score:".$total_user_score;
				//echo "user_id:".$user_id;
				if($stmt->num_rows == 0)//an error occured and we do not find the new row.
				{
					//echo "stmt->num_rows == 0";
					$result='[{"result":false,"total_user_score":0}]';
					$total_user_score=-1;
				}
				else
				{
				
					
					$result='[{"result":true,"total_user_score":'.$total_user_score.'}]';
				}
			  }
			  else
			  {
					$result='[{"result":false,"total_user_score":0}]';
			  }
			  
			  $this->db->commit();
			  return $result;
	}
	
    // Main method to redeem a code
    function BusinessGeneral() {
    
	
			$rw_app_method = $_GET["MethodName"];
			
			$result='[{"result":true}]';
			
			//$string = '[{"result":true}]';
			switch ($rw_app_method)
			{
				case "BusinessClickHomepage":////user click the home page link
					$this->BusinessClickHomepage();
					break;
				case "BusinessPhoneClickCount"://user click the phone number
					$this->BusinessPhoneClickCount();
					break;
				case "BusinessLikeClick"://user click the phone number
					$this->BusinessLikeClick();
					break;
				case "BusinessAddToFavorite"://user click the phone number
					$this->BusinessAddToFavorite();
					break;
				case "BusinessRemoveFromFavorite"://user click the phone number
					$this->BusinessRemoveFromFavorite();
					break;
				case "GetTotalUserScore":
					$result=$this->GetTotalUserScore();
					break;
				case "SetPushNotification":
					$result=$this->SetPushNotification();
					break;
				default:
					$result='[{"result":false}]';
			}	
			
			//$string = '[{"result":true}]';
			$json = $result;
			echo indent($json);
    }

}

if(login_check($mysqli) == true)
{
	$api = new BusinessGeneralAPI();
	$api->BusinessGeneral();
} else {
   echo 'You are not authorized to access this page, please login. <br/>';
}



	
?>
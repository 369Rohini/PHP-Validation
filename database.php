<?php

echo"i'm in database.php now";
                    
  $conn = new mysqli("localhost","root","","login");  
  if ($conn->connect_error){
    echo " this is me rohini and it is a faild connection";
    die("DB connection failed ".$conn->connect_error);
}
else{
  echo " this is me rohini and it is a successful connection";
}

return $conn;
?>  





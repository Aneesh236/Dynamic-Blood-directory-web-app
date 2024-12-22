<HTML>
<HEAD>
<style type="text/css">
h2{ 
    color: red;
}
div{
    border:2em;
}
</style>
</HEAD>
<body>
<?php

    $name = $_POST['name'];
    $age = $_POST['age'];
    $sex = $_POST['sex'];
    $BLOOD = $_POST['BLOOD'];
    $num = $_POST['num'];
    $loc = $_POST['loc'];

        $host = "localhost";
        $dbUsername = "aneesh";
        $dbpassword = "password";
        $dbname = "blooddonor";
    
    $conn= new mysqli($host, $dbUsername, $dbpassword, $dbname);
    if($conn->connect_error){
        die("connection failed :" .$conn->connect_error);
    }
    
         $sql="INSERT INTO registration (name, age, sex, BLOOD, num, loc) VALUES ('$name', '$age', '$sex', '$BLOOD', '$num', '$loc')";
       
        if($conn->query($sql) === True){
       
            echo "<div><h2>You have been Registered as a donor, Thank you </h2></div>";
          
        }
        else{
            echo "Error: " . $sql . "<br>" . $conn->error ;
        }
      
    $conn->close();
?>
    </body>
    </html>
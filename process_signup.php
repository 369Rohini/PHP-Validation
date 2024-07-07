<?php
session_start();

echo"i reached here in process_signup.php";

// include "database.php";

if (empty($_POST["name"])) {
    echo "Name is required";
    exit;
}

if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    echo "Valid email is required";
    exit;
}

if (strlen($_POST["password"]) < 0) {
    echo "Password must be at least 8 characters";
    exit;
}

if (!preg_match("/[a-z]/i", $_POST["password"])) {
    echo "Password must contain at least one letter";
    exit;
}

if (!preg_match("/[0-9]/", $_POST["password"])) {
    echo "Password must contain at least one number";
    exit;
}

if ($_POST["password"]!== $_POST["password_confirmation"]) {
    echo "Passwords must match";
    exit;
}

echo"i reached here ";


// Hash the user's password
$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);
echo "i'm in this trap yaar ";

// Include the database connection file
$mysqli = require __DIR__ . "/database.php";

echo "i came back to process_signup.php after db connection ";

// Construct the SQL query with placeholders
$sql = "INSERT INTO user (name, email, password_hash) VALUES (?, ?, ?)";

echo" step 1 ";
// Prepare the SQL statement
$stm = $conn->prepare($sql);
echo" step 2 ";
if ($stm === false) {
    die("Error preparing the statement: " . $mysqli->error);
}

echo" step 3 ";
// Bind the parameters to the SQL query
$name = $_POST["name"];
$email = $_POST["email"];
if (!$stm->bind_param("sss", $name, $email, $password_hash)) {
    die("Error binding parameters: " . $stm->error);
}

echo" step 4 ";
// Execute the statement
if (!$stm->execute()) {
    echo" option 1 ";
    if ($conn->error === 1062) {
        echo "Email already taken";
    } else {
        echo"gadbaddd hai";
        echo $conn->error. " ". $mysqli->errno;
    }
} else {
    echo" option 2 ";
    $_SESSION["user_id"] = $mysqli->insert_id;
    header("Location: signup-success.html");
    exit;
}

?>





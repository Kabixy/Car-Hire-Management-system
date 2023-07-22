<?php
// This is a simple example. In a real-world application, you should validate and sanitize user input.
$name = $_POST['name'];
$email_id = $_POST['email_id'];
$phone_number = $_POST['phone_number'];
$address = $_POST['address'];
$mpesa_code = $_POST['mpesa_code'];
$amount = $_POST['amount'];

// Database connection and insertion code
include('includes/config.php'); // Ensure the correct path to the config file

try {
    $conn = new PDO("mysql:host='localhost';dbname='kingmotors'", $dbuser, $dbpass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("INSERT INTO payment_details (name, email_id, phone_number, address, mpesa_code) 
                           VALUES (:name, :email_id, :phone_number, :address, :mpesa_code)");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email_id', $email_id);
    $stmt->bindParam(':phone_number', $phone_number);
    $stmt->bindParam(':address', $address);
    $stmt->bindParam(':mpesa_code', $mpesa_code);

    $stmt->execute();
    // Close the connection
    $conn = null;
    echo "success";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

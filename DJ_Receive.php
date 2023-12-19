<?php

// Define database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "prepresstracker";

// Connect to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Define variables
$dj_numbers = $_POST['dj_number'];; // Your multi-line string
$product_line = ($_POST['product_line']);
$received_by = $_POST['received_by'];

// Explode the multi-line string into an array
$numbers = explode("\r\n", $dj_numbers);

// Loop through each DJ number
foreach ($numbers as $number) {

    // Prepare SQL query
    $sql = "INSERT INTO dj_receive_table (DJ_No, product_line, received_by) VALUES (?, ?, ?)";

    // Prepare statement
    $stmt = $conn->prepare($sql);

    // Bind parameters
    $stmt->bind_param("sss", $number, $product_line, $received_by);

    // Execute statement
    $stmt->execute();

    // Get the auto-incremented ID
    $id = $conn->insert_id;

    // Print the result
    echo "ID='" . $id . "', dj_numbers='" . $number . "' product_line ='" . $product_line . "' received_by ='" . $received_by . "'" . PHP_EOL;
}

// Close connection
$conn->close();

?>

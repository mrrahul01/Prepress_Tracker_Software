<?php

require 'link.php';

// Define variables
$dj_numbers = $_POST['dj_number1'];; // Your multi-line string
$product_line = ($_POST['product_line1']);
$received_by = $_POST['received_by1'];
$remarks = $_POST['remarks'];

// Explode the multi-line string into an array
$numbers = explode("\r\n", $dj_numbers);

// Loop through each DJ number
foreach ($numbers as $number) {

    // Prepare SQL query
    $sql = "INSERT INTO dj_release_table (DJ_No, product_line, released_by, Remarks) VALUES (?, ?, ?, ?)";

    // Prepare statement
    $stmt = $conn->prepare($sql);

    // Bind parameters
    $stmt->bind_param("ssss", $number, $product_line, $received_by, $remarks);

    // Execute statement
    $stmt->execute();

    // Get the auto-incremented ID
    $id = $conn->insert_id;

    // Print the result
    // echo "ID='" . $id . "', dj_numbers='" . $number . "' product_line ='" . $product_line . "' received_by ='" . $received_by . "'" . PHP_EOL;
    header("Location: http://localhost/Prepress_Tracker_Software/Prepress_Tracker_Software/track_Orders.php");
}

// Close connection
$conn->close();

?>

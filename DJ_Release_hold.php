<?php

require 'link.php';

// Define variables
$dj_numbers = $_POST['dj_number1'];
$hold_by = $_POST['hold_by'];
$hold_reason = $_POST['hold_reason'];

// Explode the multi-line string into an array
$numbers = explode("\r\n", $dj_numbers);

// Loop through each DJ number
foreach ($numbers as $number) {

    // Query dj_receive_table to get the corresponding id
    $query = "SELECT id FROM dj_receive_table WHERE DJ_No = '$number'";
    $result = mysqli_query($conn, $query);

    if ($row = mysqli_fetch_assoc($result)) {
        $dj_receive_id = $row['id'];

        // Prepare SQL query
        $sql = "INSERT INTO dj_hold_table (DJ_No, hold_by, Remarks, dj_receive_id) VALUES (?, ?, ?, ?)";

        // Prepare statement
        $stmt = $conn->prepare($sql);

        // Bind parameters
        $stmt->bind_param("sssi", $number, $hold_by, $hold_reason, $dj_receive_id);

        // Execute statement
        $stmt->execute();

        // Close the statement
        $stmt->close();
    } else {
        echo "Invalid DJ_No: $number";
    }
}

// Close connection
$conn->close();

// Redirect to another page
header("Location: http://localhost/Prepress_Tracker_Software/Prepress_Tracker_Software/TrackHoldOrders.php");
exit();
?>

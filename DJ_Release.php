<?php

require 'link.php';

// Define variables
$dj_numbers = $_POST['dj_number1'];
$received_by = $_POST['received_by1'];
$remarks = $_POST['remarks'];

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
        $sql = "INSERT INTO dj_release_table (DJ_No, released_by, Remarks, dj_receive_id) VALUES (?, ?, ?, ?)";

        // Prepare statement
        $stmt = $conn->prepare($sql);

        // Bind parameters
        $stmt->bind_param("ssss", $number, $received_by, $remarks, $dj_receive_id);

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
header("Location: http://localhost/Prepress_Tracker_Software/Prepress_Tracker_Software/track_Orders.php");
exit();
?>

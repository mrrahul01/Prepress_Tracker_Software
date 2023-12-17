<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "DJ_Receive";

// Create a connection to MySQL
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the barcode data from the form
$barcodes = $_POST['barcodes'];

// Split the barcode data into an array (assuming each barcode is separated by a newline)
$barcodeArray = explode("\n", $barcodes);

// Initialize a query to insert the barcodes using prepared statements
$query = "INSERT INTO barcodes (barcode) VALUES (?)";

// Prepare the statement
$stmt = $conn->prepare($query);

if (!$stmt) {
    die("Error in preparing statement: " . $conn->error);
}

// Bind the parameter
$stmt->bind_param("s", $barcodeValue);

// Loop through the barcode array and execute the prepared statement
foreach ($barcodeArray as $barcode) {
    $barcodeValue = trim($barcode); // Remove any extra whitespace
    
    // Execute the statement
    if (!$stmt->execute()) {
        echo "Error inserting barcode: " . $stmt->error;
        break; // Stop the loop on the first error
    }
}

// Close the prepared statement
$stmt->close();

// Check for errors during the entire process
if ($conn->error) {
    echo "Error: " . $conn->error;
} else {
    echo "Barcodes inserted successfully.";
}

// Close the database connection
$conn->close();
?>

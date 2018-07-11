<?php
error_reporting (E_ALL & ~ E_NOTICE & ~ E_DEPRECATED);

$servername = "localhost";
$username = "id3798099_adalmir";
$password = "324568";
$dbname = "id3798099_ofico";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
 
echo "Sucesso: Sucesso ao conectar-se com a base de dados MySQL." . PHP_EOL;
 
mysqli_close($conn);
?>
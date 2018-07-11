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
$sql ="insert into oficio(assunto,dia,texto,responsavel,diretor,destinatario,orgao,endereco)values('$_POST[assunto]','$_POST[dia]','$_POST[texto]','$_POST[responsavel]','$_POST[diretor]','$_POST[destinatario]','$_POST[orgao]','$_POST[endereco]')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
    echo '<meta http-equiv="refresh" content="1;url=https://oficiocultura.000webhostapp.com/index.html">';
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>	
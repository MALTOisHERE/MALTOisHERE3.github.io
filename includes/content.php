<?php

session_start();

include "../config/connectDB.php";

$idToSearch = $_SESSION['id'];
$userStatement = $mysqlconnection->prepare('SELECT * FROM users where id = :id ');
$userStatement->bindParam(':id', $idToSearch);
$userStatement->execute();
$users = $userStatement->fetchAll();

?>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="../public/style.css">
    <title>Content Page</title>
</head>

<body>
    <div class="content-container">
        <h1>Welcome to Content Page</h1>
        <?php foreach ($users as $user) { ?>
            <p>Hello, <?php echo $user['name']; ?>! You are now logged in.</p>
        <?php } ?>
        <!-- Add content here -->
        <p class="user-greeting">Thank you for using our website.</p>
        <p><a href="../includes/access.php?info=2">Logout</a></p>
    </div>
</body>

</html>

<?php
session_destroy()
?>
<?php
// Start session
session_start();

include "connectDB.php";

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the submitted username and password
    $utilisateur = $_POST["user"];
    $mot_de_passe = $_POST["pass"];

    // Perform authentication
    $userStatement = $mysqlconnection->prepare('SELECT * FROM users');
    $userStatement->execute();
    $users = $userStatement->fetchAll();
    $authenticationFailed = false;

    foreach ($users as $user) {
        if ($user['name'] == $utilisateur && $user['password'] == $mot_de_passe) {
            // Set session variable
            $_SESSION["user"] = $user["name"];
            $_SESSION["id"] = $user["id"];

            // Redirect to content page
            header("Location: content.php");
            exit;
        } else {
            $authenticationFailed = true;
        }
    }

    if ($authenticationFailed) {
        // Display the error message
        header("Location: access.php?info=1");
    }

}

// Close the database connection
?>
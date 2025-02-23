<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../public/style.css">
</head>

<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="../auth/login.php" method="post">
            <input type="text" name="user" placeholder="Username">
            <input type="password" name="pass" placeholder="Password">
            <input type="submit" name="login" value="Login">
            <?php if (isset($_GET['info']) && $_GET['info'] == 1) { ?>
                <p class="alert"> <?php echo 'Invalid password or username'; ?> </p>
            <?php } ?>
            <?php if (isset($_GET['info']) && $_GET['info'] == 2) { ?>
                <p class="alert-logout"> <?php echo 'Logout success'; ?> </p>
            <?php } ?>
        </form>
    </div>
</body>

</html>
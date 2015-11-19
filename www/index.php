<html>
<head>
<title>Watir with nginx+php-fpm on TravisCI</title>
</head>
<body>
<form action="" method="POST">
    <input type="text" name="email">
    <input type="password" name="password">    
    <button type="submit">Login</button>
</form>
<?php

if (isset($_POST['email'])) {
    echo '<div id="test">';
    echo $_POST['email'] .":". $_POST['password'];
    echo '</div>';
}

?>
</body>
</html>

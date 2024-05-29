<?php
// Set the timezone
date_default_timezone_set('Your/Timezone');

// Check if there is an existing cookie
if(isset($_COOKIE['last_visited'])) {
    $last_visited = $_COOKIE['last_visited'];
    echo "Welcome back! You last visited on: $last_visited";
}
// Set current date and time
$current_date_time = date('Y-m-d H:i:s');
// Store current date and time in a cookie
setcookie('last_visited', $current_date_time, time() + (86400 * 30), "/"); // 86400 = 1 day
?>
<!DOCTYPE html>
<html>
<head>
    <title>Last Visited Example</title>
</head>
<body>
    <h1>Cookie Example</h1>
    <p>This page stores your last visited date and time in a cookie: <?php echo $current_date_time; ?></p>
</body>
</html>

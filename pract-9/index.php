<?php
session_start();
// Check if the session variable for page views exists
if (!isset($_SESSION['page_views'])) {
$_SESSION['page_views'] = 1; // If not, initialize it to 1
} else {
$_SESSION['page_views']++; // If exists, increment it
}
$page_views = $_SESSION['page_views']; // Get the current page views count
?>
<!DOCTYPE html>
<html>
<head>
<title>Page Views Example</title>
</head>
<body>
<h1>Page Views Counter</h1>
<p>This page keeps track of the number of times it has been viewed.</p>
<p>Page views: <?php echo $page_views; ?></p>
</body>
</html>

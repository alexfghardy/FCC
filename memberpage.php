<?php require('includes/config.php'); 

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: login.php'); } 

//define page title
$title = 'Members Page';

//include header template
require('layout/header.php'); 
?>

<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <li class="active"><a href="memberpage.php">Welcome <span class="sr-only">(current)</span></a>
    	<li><a href="transfer.php">Transfer</a></li>
  </div>
</nav>

	<div class="row">

	    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			
				<h2>Member only page - Welcome <?php echo $_SESSION['email']; ?></h2>

				<p><a href='logout.php'>Logout</a></p>
				<hr>

		</div>
	</div>


</div>

<?php 
//include header template
require('layout/footer.php'); 
?>

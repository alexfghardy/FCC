<?php require('includes/config.php'); 

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: login.php'); } 

//define page title
$title = 'Members Page';

//include header template
require('layout/header.php'); 
?>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FCC Fantasy</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
  	<li><a href="memberpage.php">Welcome</a></li>
    <li class="active"><a href="transfer.php">Transfers</a></li>
      </ul>
    </div>
  </div>
</nav>
  <?php
$sql = $db->prepare("SELECT 2015_score, Name, Value FROM fcc_players");

    if($sql->execute()) {
       $sql->setFetchMode(PDO::FETCH_ASSOC);
   }
?>
 <div class="container"id="content">
 	<h1> 2015 Fantasy scores and values</h1>

    <table class="table table-bordered table-striped">
    	 <thead>
      <tr>
        <th>Name</th>
        <th>Value</th>
        <th>2015 Fantasy Score</th>
      </tr>
    </thead>
      <?php while($row = $sql->fetch()) { ?>
      <tr>
        <td><?php echo $row['Name']; ?></td>
        <td><?php echo $row['Value']; ?></td>
        <td><?php echo $row['2015_score']; ?></td>
      </tr>
      <?php } ?>
    </table>

   </div>
</body>
</html>


<?php 
//include header template
require('layout/footer.php'); 
?>
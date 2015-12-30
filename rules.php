<?php require('includes/config.php'); 

//if not logged in redirect to login page
if(!$user->is_logged_in()){ header('Location: login.php'); } 

//define page title
$title = 'Rules';

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
        <li><a href="transfer.php">Transfers</a></li>
        <li><a href="2015.php">2015 Season</a></li>
        <li class="active"><a href="rules.php">Rules</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <h1>Points will be allocated for the following:</h1>
  <h2>Batting</h2>
  <table class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>Reason</th>
        <TH>Points</TH>
      </tr>
    </thead>
    <tbody>
      <TR>
        <TD>Run Scored</TD>
        <TD>1</TD>
      </TR>
      <TR>
        <TD>50 Run Bonus</TD>
        <TD>10</TD>
      </TR>
      <TR>
        <TD>100 Run Bonus</TD>
        <TD>20</TD>
      </TR>
      <TR>
        <TD>150 Run Bonus</TD>
        <TD>30</TD>
      </TR>
      <TR>
        <TD>Four Scored</TD>
        <TD>1</TD>    
      </TR>
      <TR>
        <TD>Six scored</TD>
        <TD>4</TD>
      </TR>
      <TR>
        <TD>Duck</TD>
        <TD>-10</TD>   

      </TR>
      <TR>
        <TD>Golden Duck</TD>
        <TD>-25</TD>
      </TR>
    </tbody>  
  </table>
  <P>*Only the top run bonus will be awarded.</P>
</diV>
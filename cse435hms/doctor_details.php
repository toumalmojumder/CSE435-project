<?php include('db.php');
if(!isset($_SESSION["email"])){
header("Location: login.php");
exit(); }
extract($_POST);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Doctor Details</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .btn-glyphicon {
padding:8px;
background:#ffffff;
margin-right:4px;
}
.icon-btn {
padding: 1px 15px 3px 2px;
border-radius:50px;
}
  </style>


  
  
</head>


<body style="background-color:rgb(22,22,22);">

	




	
				<h3 align="left" style="color:red;"><b>Doctors List</b></h3>
	<hr>
<table class="table table-responsive table-bordered">

	

           
                <tr class="danger">
                    <th> S.no</th>
                    <th>Doctor Name</th>
                    <th>Doctor Specialization</th>
					<th>Modify</th>
					<th>Delete</th>
					</tr>
					   
					<?php


$rs1=mysqli_query($con,"SELECT * from doctor where doctor_available='YES' order by
doctor_name;");
$sno=1;
while( $row=mysqli_fetch_array($rs1)) {
 echo "<tr class='success'><td>$sno</td><td>$row[1]</td><td>$row[2]</td><td><a class='btn icon-btn btn-success' href=doctor_update.php?rno=".$row[0]."><span class='glyphicon btn-glyphicon glyphicon-edit img-circle text-success'></span> Edit</a></td><td><a class='btn icon-btn btn-danger' href=delete_doctors.php?rno=".$row[0]."><span class='glyphicon btn-glyphicon glyphicon-trash img-circle text-danger'></span> Delete</a></td></tr>";
 $sno++;
}
if ($sno==1) echo "<tr><td colspan='5' align='center'><font size=4 color=red>Records
Not Found</font></td></tr>";


	//<a class="btn icon-btn btn-danger" href="#">
//<span class="glyphicon btn-glyphicon glyphicon-trash img-circle text-danger"></span>
//Delete
//</a>


?>



            
        </table>


<hr />

<h3 align="left" style="color:red;"><b>Deleted Records</b></h3>
				
	<hr>
<table class="table table-responsive table-bordered">

	

           
                <tr class="danger">
                    <th> S.no</th>
                    <th>Doctor Name</th>
                    <th>Doctor Specialization</th>
					<th>Options</th>
					
					</tr>
					   
					<?php


$rs1=mysqli_query($con,"SELECT * from doctor where doctor_available='NOT' order by
doctor_name;");
$sno=1;
while( $row=mysqli_fetch_array($rs1)) {
 echo "<tr class='success'><td>$sno</td><td>$row[1]</td><td>$row[2]</td><td><a class='btn icon-btn btn-danger' href=undelete_doctors.php?rno=".$row[0]."><span class='glyphicon btn-glyphicon glyphicon-trash img-circle text-danger'></span> Undelete</a></td></tr>";
 $sno++;
}
if ($sno==1) echo "<tr><td colspan='5' align='center'><font size=4 color=red>Records
Not Found</font></td></tr>";
?>
            
        </table>
		


</body>


</html>


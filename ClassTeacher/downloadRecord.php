<?php 
error_reporting(0);
include '../Includes/dbcon.php';
include '../Includes/session.php';

?>
        <table border="1">
        <thead>
            <tr>
            <th>#</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Admission No</th>
            <th>Class</th>
            <th>Class Div</th>
            <th>Session</th>
            <th>Term</th>
            <th>Status</th>
            <th>Date</th>
            </tr>
        </thead>

<?php 
$filename="Attendance list";
$dateTaken = date("Y-m-d");

$cnt=1;			
$ret = mysqli_query($conn,"SELECT attendance.Id,attendance.status,attendance.dateTimeTaken,class.className,
        classDiv.classDivName,sessionterm.sessionName,sessionterm.termId,term.termName,
        students.firstName,students.lastName,students.admissionNumber
        FROM attendance
        INNER JOIN class ON class.Id = attendance.classId
        INNER JOIN classDiv ON classDiv.Id = attendance.classDivId
        INNER JOIN sessionterm ON sessionterm.Id = attendance.sessionTermId
        INNER JOIN term ON term.Id = sessionterm.termId
        INNER JOIN students ON students.admissionNumber = attendance.admissionNo
        where attendance.dateTimeTaken = '$dateTaken' and attendance.classId = '$_SESSION[classId]' and attendance.classDivId = '$_SESSION[classDivId]'");

if(mysqli_num_rows($ret) > 0 )
{
while ($row=mysqli_fetch_array($ret)) 
{ 
    
    if($row['status'] == '1'){$status = "Present"; $colour="#00FF00";}else{$status = "Absent";$colour="#FF0000";}

echo '  
<tr>  
<td>'.$cnt.'</td> 
<td>'.$firstName= $row['firstName'].'</td> 
<td>'.$lastName= $row['lastName'].'</td> 
<td>'.$admissionNumber= $row['admissionNumber'].'</td> 
<td>'.$className= $row['className'].'</td> 
<td>'.$classArmName=$row['classDivName'].'</td>	
<td>'.$sessionName=$row['sessionName'].'</td>	 
<td>'.$termName=$row['termName'].'</td>	
<td>'.$status=$status.'</td>	 	
<td>'.$dateTimeTaken=$row['dateTimeTaken'].'</td>	 					
</tr>  
';
header("Content-type: application/octet-stream");
header("Content-Disposition: attachment; filename=".$filename."-report.xls");
header("Pragma: no-cache");
header("Expires: 0");
			$cnt++;
			}
	}
?>
</table>
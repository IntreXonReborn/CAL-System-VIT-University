<html>
<head>
    <style type="text/css">
    .showdetails{
    position: relative;
    border: 3px solid black;
    top: 5%;
    text-align: center;
    background-color: #afbadc;
  }
  tr,td,th{
    border: 2px solid black;
    border-style: collapse;
    margin: 5px;
    padding: 5px;
    background-color: #f2dede;
    }
    th{
        background-color: black;
        color: white;
    }
    .showinfo{
    left:10%;
    top: 10%;
    position: relative;
  }
    .courseinfo{
        position: relative;
        left: 10%;
    }
    </style>
    <script src="https://code.jquery.com/jquery-1.7.2.js" integrity="sha256-FxfqH96M63WENBok78hchTCDxmChGFlo+/lFIPcZPeI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/divisioncontrol.js"></script>
</head>
<body>
<?php
    session_start();
    $connect=mysqli_connect("localhost","root","");
    $database=mysqli_select_db($connect, "iwp");
    $username=$_SESSION['username'];
    $studentid=$_POST['studentid'];
    $courseid=$_POST['courseid'];
    $i=0;
    $details=mysqli_query($connect,"SELECT * from reviews where Student_ID = '$studentid'");
    echo '<form method="POST" enctype="multipart/form-data" action="projectmanagement.php">
          <div class="showdetails"> Students </div>
          <br> <br> <br> <br>
          <table class="courseinfo">
          <thead>
          <th>Serial No.</th>
          <th>Review</th>
          <th>Max Mark</th>
          <th>Question</th>
          <th>Answer</th>
          <th>Marks</th>';
    while($result=mysqli_fetch_array($details)){
        $i+=1;
        $review=$result['Assignment'];
        $maxmark=$result['Max_Mark'];
        $question=;
        $answer=;
        $marks=$result['marks'];
        echo '';
    }
?>
</body>
</html>
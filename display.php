<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <style>


body
{
    background-color:#BB8FCE;
}
        table, td, th {
            border: 1px solid;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }
        <style>
    .con {
        margin-top: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    button {
        background-color: #2ECC71;
        border: 0;
        border-radius: 20px;
        margin-left: 10px;
        height: 30px;
        width: 75px;
        color: black;
        text-decoration: none;
    }
</style>
    </style>
</head>
<body>

<div class="con">
<center>
  <h1 style="font-size:30px;" >Job Details </h1>
</center>
    <table>
        <tr>
            <th>Job ID</th>
            <th>Job Title</th>
            <th>Email</th>
            <th>Category</th>
            <th>Description</th>
            <th>Operation</th>
        </tr>

        <?php
        include 'form.php';

        $sql = 'SELECT * FROM jobd';
        $result = mysqli_query($con, $sql);
        if ($result) {
            while ($row = mysqli_fetch_assoc($result)) {
                $jid = $row['J_ID'];
                $jtitle = $row['J_title'];
                $email = $row['Email'];
                $cat = $row['Catagory'];
                $des = $row['Description'];
                echo '<tr>
                        <td>' . $jid . '</td>
                        <td>' . $jtitle . '</td>
                        <td>' . $email . '</td>
                        <td>' . $cat . '</td>
                        <td>' . $des . '</td>
                        <td> <button style="background-color:#2ECC71;border:0px;border-radius:20px;margin-left:10px;height:15px;width:75px;"><a style="color:black;text-decoration:none;" href="delete.php?deleteid='.$jid.'">Delete</a></button>
                        
                        </td>
                      </tr>';
            }
        }
        ?>
    </table>
</div>

</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div align="right" class="search">
        <form action="search.php" method="post">
            <input type="text" name="search" placeholder="Type something..." id="">
            <button type="submit">Search</button>
        </form>
    </div><br>
    <div class="data">
        <table width="70%" align="center" border="1">
            <tr>
                <th>Id</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Display</th>
                <th>Camera</th>
                <th>Battery</th>
            </tr>
            <?php

                $conn = mysqli_connect("localhost", "root", "","phone");

                $search = $_POST['search'];

                $sql = mysqli_query($conn, "SELECT * from phonespecs where brand like '%$search%' OR model like '%$search%' OR display_size like '%$search%' OR camera_resolution like '%$search%' OR battery_capacity like '%$search%' ");

                $count = 1;

                if($sql->num_rows < 1){
                    ?>
                <tr>
                    <td align="center" colspan="6" style="color: red;">No Data Found</td>
                </tr>
                <?php
                    } else if($sql->num_rows > 0){
                        while($row = mysqli_fetch_assoc($sql)){
                            ?>
                            <tr>
                                <td><?php echo $count++; ?></td>
                                <td><?php echo $row['brand']; ?></td>
                                <td><?php echo $row['model']; ?></td>
                                <td><?php echo $row['display_size']; ?></td>
                                <td><?php echo $row['camera_resolution']; ?></td>
                                <td><?php echo $row['battery_capacity']; ?></td>
                            </tr>
                            <?php
                
                                }
                
                            }else{
                                ?>
                                <script>alert('Error in Search Query')</script>
                                <?php
                            }
                            ?>
        </table>
    </div>
</body>
</html>
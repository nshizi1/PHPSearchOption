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

                $sql = mysqli_query($conn, "SELECT * from phonespecs");

                $count = 1;

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

            ?>
        </table>
    </div>
</body>
</html>
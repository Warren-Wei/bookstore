<html>
  <body>
    <?php
      include_once 'dbh.inc.php';

      $query = $_POST['input_query'];

      $sql = "$query";
      if (strpos(strtolower($sql), 'drop') !== false) {
        echo "DO NOT SUPPORT DROP OPERATION! <br>";
      } else {
        $result = mysqli_query($conn, $sql);
        if ($result == True) {
          echo "QUERY IMPLEMENTED SUCCESSFULLY! <br>";
          //header("Location: ../index.php?submit=success");
        } else {
          echo "QUERY IMPLEMENTED FAILED... <br>";
        };
        $resultCheck = mysqli_num_rows($result);

        if ($resultCheck > 0) {
          $column_name_printed = false;
          echo '<table>';
          while ($row = mysqli_fetch_assoc($result)) {
            if (!$column_name_printed) {
              echo '<tr>';
              foreach ($row as $column_name => $value) {
                echo '<th>' . $column_name . '</th>';
              } 
              echo '</tr><br>';
            } 
            $column_name_printed = true;
            echo '<tr>';
            foreach ($row as $column_name => $value) {
              echo '<td>' . $value . '</td>';
            }
            echo '</tr><br>';
          }
          echo '</table>';
        }
      }
    ?>

    <button type='button' >Come back to Homepage</button>
  </body>
</html>

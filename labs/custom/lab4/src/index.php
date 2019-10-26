<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="icon" href="https://i.imgur.com/urv7rZx.png">

  <title>LoveLive! School idol project</title>

  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <a class="navbar-brand" href="./">LoveLive</a>
        
      </div>
    </nav>
  </header>
  <div class="container">
    <div class="page-header" id="banner">
      <div class="row my-4">
        <div class="col-12">
          <h1 class="display-5">Choose your <del>waifu</del></h1>
          <p class="lead">大家都是拉拉人</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <form action="/index.php" method="post">
        <div class="form-group">
          <label for="select1">あなたの推しは何ですか</label>
          <select class="form-control" id="select1" name="select">
            <?php
            @require_once('db.php');

            $res = mysqli_query($conn, "SELECT id, name from lovelive;") or die(mysqli_error($conn));
            if($res->num_rows > 0) {
              while($row = $res->fetch_assoc()) {
                printf("<option value=\"%d\"%s>%s</option>", $row["id"], $row["id"]==$_POST["select"] ? " selected" : "" ,$row["name"]);
              }
            }
            ?>
          </select>
        </div>
        <input type="hidden" name="debug" value="<?php echo isset($_POST["debug"]) ? $_POST["debug"] : 0?>">
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        </form>
        <div class="col-md-6"></div>
      </div>
    </div>
    <?php
    if($_SERVER["REQUEST_METHOD"] === "POST") {
      @require_once("db.php");
      @require_once("utils.php");
      // SQL lines
      $id = $_POST["select"];
      $sql = sprintf("SELECT * from lovelive WHERE id=%s;", $id);
      if(isset($_POST["debug"]) && $_POST["debug"] == "1") printf("<pre>%s</pre>", $sql);
      
      if(!$res = mysqli_query($conn, $sql)) die(mysqli_error($conn));

      $p = $res->fetch_assoc();
    ?>
    <!-- Details -->
    <div class="jumbotron">
      <div class="row">
          <div class="col-md-5">
            <img src="<?php echo $p["pic_url"]?>" class="img-fluid float-left" width="400">
          </div>
          <div class="col-md-7">
            <div class="row">
              <div class="col-md-6"><hi class="display-4"><?php echo $p["name"]?></hi></div>
              <div class="col-md-6"><img width="30%" src="<?php echo $p["neso_url"]?>" ></div>
            </div>
            <p class="lead"><?php echo $p["jp_name"]?></p>
            <p>聲優：<?php echo $p["cv"]?></p>
            <p>生日：<?php echo $p["birth_day"]?></p>
            <p>分隊：<?php echo $p["group"]?></p>

          </div>
      </div>
    </div>
    <?php } ?>
  </div>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="./js/bootstrap.min.js"></script>
</body>
</html>
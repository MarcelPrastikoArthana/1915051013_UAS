<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
            <title>Login Data Peserta Kelas Belajar Pemrograman Web Dasar</title>
                <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
                <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
                <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
                <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

            </head>
        <body class="bg-black">
            <center><h1>Pemrograman Web Dasar</h1></center>
                <center><small>Marcel Prastiko Arthana</small></center>
            <div class="form-box" id="container">
                <div class="header">Mendaftar</div>

                <form action="" method="post" id="contactform">
                    <div class="body bg-gray">
                        <div class="form-group">
                        	<label for="name">Username </label>
                            <input type="text" id="username" class="form-control"/>
                        </div>
                        <div class="form-group">
                        	<label for="email">Password </label>
                            <input type="password" id="pw" class="form-control"/>
                        </div>       
                    </div>
                    <div class="footer">                                     
                        <button type="submit" class="btn btn-primary btn-block">Sign Up</button>  
                        <a href="login.php">Back To Login</a>
                    </div>                                
                        
                </form>
                    <div class="result">
    </div>
        </div>
                
                <script>
  $(document).ready(function () {
    $('.btn-primary').click(function (e) {
      e.preventDefault();
      var name = $('#username').val();
      var email = $('#pw').val();
      $.ajax
        ({
          type: "POST",
          url: "prosesreg.php",
          data: { "username": name, "pw": email },
          success: function (data) {
            $('.result').html(data);
            $('#contactform')[0].reset();
          }
        });
    });
  });
</script> 
<script src="../../js/bootstrap.min.js" type="text/javascript"></script>     
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
  
    </body>
</html>
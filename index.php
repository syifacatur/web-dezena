<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Penerimaan Siswa Baru</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="assets/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="assets/css/main.css">

	<style>
    body {
        background-image: url('assets/img/sekolah.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        height: 100vh;
        margin: 0;
    }
</style>

<style>
    .card-background {
        background-color: rgba(255, 255, 255, 0.8); /* Warna putih dengan transparansi */
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        display: flex;
        justify-content: space-around;
        align-items: center;
        max-width: 800px; /* Sesuaikan lebar kotak */
        margin-top: 12%; /* Agar kotak berada di tengah */
    }

    .student, .note {
        flex: 1;
        text-align: center;
    }
</style>




</head>
<body>
	<div class="container">
	    <div class="row">
	    	<div class="col-md-10 col-md-offset-2">
	    		<div class="card-background">

					
	    		
	    			<div class="col-md-6 col-lg-5 col-sm-12 student">
	    				<center>
	    					<a href="login.php">
		    					<img src="assets/img/student.png" alt="Login">
								<h3>Login</h3>
							</a>
	    				</center>
	    			</div>

	    			<div class="col-md-6 col-lg-5 col-sm-12 note">
	    				<center>
	    					<a href="daftar_akun.php">
		    					<img src="assets/img/note.png" alt="Pendaftaran Siswa Baru">
								<h3>Daftar</h3>
							</a>
	    				</center>
	    			</div>	
				
	    		</div>
	    	</div>
	    </div>
	</div>
</body>
</html>
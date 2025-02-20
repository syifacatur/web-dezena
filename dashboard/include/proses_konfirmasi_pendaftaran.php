<?php  
session_start();
include '../../koneksi/koneksi.php';

date_default_timezone_set("Asia/Jakarta");

if (isset($_GET['idd'])) {
    $id  = $_GET['idd'];
    $idu = $_GET['idu'];

    $queryAge = "SELECT tanggal_lahir FROM pendaftaran WHERE Id = $id";
    $exec2 = mysqli_query($conn, $queryAge); 

    if ($exec2) {
        $tanggal_lahir = mysqli_fetch_array($exec2);
        $kelas = findage($tanggal_lahir['tanggal_lahir']);
        $age = getAge($tanggal_lahir['tanggal_lahir']);
    } else {
        die("Error in queryAge: " . mysqli_error($conn));
    }

    $query = "UPDATE detail_pendaftaran 
              SET status_pendaftaran = 1, id_admin = $idu, kelas = '$kelas', usia = '$age' 
              WHERE id_user = $id";
    $exec = mysqli_query($conn, $query);

    if ($exec) {
        $_SESSION['message'] = "1";
        echo '<script>window.location="../index.php?page=7"</script>';
    } else {
        die("Error in query: " . mysqli_error($conn));
    }
} else {
    echo 'tidak ada';
}

function findage($dob) {
    $dob = strtotime($dob);
    $current_time = time();

    $age_years = date('Y', $current_time) - date('Y', $dob);
    $age_months = date('m', $current_time) - date('m', $dob);
    $age_days = date('d', $current_time) - date('d', $dob);

    if ($age_days < 0) {
        $days_in_month = date('t', $current_time);
        $age_months--;
        $age_days = $days_in_month + $age_days;
    }

    if ($age_months < 0) {
        $age_years--;
        $age_months = 12 + $age_months;
    }

    $age = $age_years . "-" . $age_months;

    return ($age_years > 6 || ($age_years == 6 && $age_months >= 6)) ? "Rekayasa Perangkat Lunak" : "Kelas Tata Boga";
}

function getAge($dob) {
    $dob = strtotime($dob);
    $current_time = time();

    $age_years = date('Y', $current_time) - date('Y', $dob);
    $age_months = date('m', $current_time) - date('m', $dob);
    $age_days = date('d', $current_time) - date('d', $dob);

    if ($age_days < 0) {
        $days_in_month = date('t', $current_time);
        $age_months--;
        $age_days = $days_in_month + $age_days;
    }

    if ($age_months < 0) {
        $age_years--;
        $age_months = 12 + $age_months;
    }

    return $age_years . " tahun " . $age_months . " bulan";
}
?>

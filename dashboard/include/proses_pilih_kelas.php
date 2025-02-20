<?php
include 'koneksi.php'; // Pastikan koneksi database sudah ada

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = $_POST['user_id'];
    $kelas = $_POST['kelas'];

    // Pastikan user_id dan kelas tidak kosong
    if (!empty($user_id) && !empty($kelas)) {
        // Cek apakah user sudah ada di detail_pendaftaran
        $queryCek = "SELECT * FROM detail_pendaftaran WHERE id_user = '$user_id'";
        $resultCek = mysqli_query($conn, $queryCek);

        if (mysqli_num_rows($resultCek) > 0) {
            // Jika sudah ada, update kelas
            $queryUpdate = "UPDATE detail_pendaftaran SET kelas = '$kelas' WHERE id_user = '$user_id'";
            $execUpdate = mysqli_query($conn, $queryUpdate);
            
            if ($execUpdate) {
                echo "<script>alert('Kelas berhasil diperbarui!'); window.location.href='index.php?page=13';</script>";
            } else {
                echo "<script>alert('Gagal memperbarui kelas!'); history.back();</script>";
            }
        } else {
            // Jika belum ada, insert data baru
            $queryInsert = "INSERT INTO detail_pendaftaran (id_user, kelas) VALUES ('$user_id', '$kelas')";
            $execInsert = mysqli_query($conn, $queryInsert);
            
            if ($execInsert) {
                echo "<script>alert('Kelas berhasil dipilih!'); window.location.href='index.php?page=13';</script>";
            } else {
                echo "<script>alert('Gagal memilih kelas!'); history.back();</script>";
            }
        }
    } else {
        echo "<script>alert('Data tidak boleh kosong!'); history.back();</script>";
    }
} else {
    echo "<script>alert('Akses tidak valid!'); window.location.href='index.php';</script>";
}
?>

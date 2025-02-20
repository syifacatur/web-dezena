<?php  
if (isset($_GET['kelas'])) {
    $kelas = $_GET['kelas'];

    switch ($kelas) {
        case 'rpl':
            $nama_kelas = 'Rekayasa Perangkat Lunak';
            $biaya = [
                'Uang pangkal gedung' => 300000,
                'Uang Administrasi dan Seragam 5 Hari' => 300000,
                'Uang pembayaran bulan 1 (pertama)' => 300000
            ];
            break;
        case 'boga':
            $nama_kelas = 'Tata Boga';
            $biaya = [
                'Uang pangkal gedung' => 150000,
                'Uang Administrasi dan Seragam 5 Hari' => 150000,
                'Uang pembayaran bulan 1 (pertama)' => 150000
            ];
            break;
        case 'busana':
            $nama_kelas = 'Tata Busana';
            $biaya = [
                'Uang pangkal gedung' => 150000,
                'Uang Administrasi dan Seragam 5 Hari' => 150000,
                'Uang pembayaran bulan 1 (pertama)' => 150000
            ];
            break;
        default:
            echo "Kelas tidak valid.";
            exit;
    }

    // Simpan metode pembayaran ke database (opsional)
    $queryUpdate = "UPDATE detail_pendaftaran 
                    SET kelas='$nama_kelas'
                    WHERE id_user=$id";
    $execUpdate = mysqli_query($conn, $queryUpdate);
}
?>

<center><h2>Rincian Pembayaran Pendaftaran</h2></center>
<center><h3><b>SMK IBU KARTINI SEMARANG</b></h3></center>
<center>______________________________________________________________________________________________</center>

<div class="row">
    <div class="col-sm-12 col-md-8 col-lg-10 col-lg-offset-1">
        <div class="card" style="margin-top: 50px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); border-radius: 10px; overflow: hidden;">
            <div class="card-header" style="background-color: #00BCD4; padding: 20px; text-align: center; color: white;">
                <h4 class="title" style="margin: 0; font-weight: bold;">Biaya yang Harus Dibayarkan</h4>
            </div>
            <div class="card-content" style="padding: 20px;">
            <h4><b><?php echo $nama; ?></b>, Anda masuk ke dalam kelas <b><?php echo $nama_kelas; ?></b></h4>
            <table class="table table-bordered" style="width: 100%; border-collapse: collapse;">
                    <thead style="background-color: #f2f2f2;">
                        <tr>
                            <th style="padding: 10px; text-align: left;">Jenis Pengeluaran</th>
                            <th style="padding: 10px; text-align: right;">Biaya (Rp)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="padding: 10px;">Uang Pangkal Gedung</td>
                            <td style="padding: 10px; text-align: right;">150.000</td>
                        </tr>
                        <tr>
                            <td style="padding: 10px;">Uang Administrasi dan Seragam 5 Hari</td>
                            <td style="padding: 10px; text-align: right;">150.000</td>
                        </tr>
                        <tr>
                            <td style="padding: 10px;">Uang Pembayaran Bulan 1 (Pertama)</td>
                            <td style="padding: 10px; text-align: right;">150.000</td>
                        </tr>
                        <tr style="background-color: #e0f7fa;">
                            <td style="padding: 10px; text-align: center; font-weight: bold;">Total</td>
                            <td style="padding: 10px; text-align: right; font-weight: bold;">Rp. 450.000</td>
                        </tr>
                    </tbody>
                </table>
                <p style="margin-top: 20px;">Lakukan pembayaran ke rekening <b>XXX</b> a.n <b>XXX</b></p>
                <p style="font-weight: bold; color: #d32f2f;">Lakukan konfirmasi di halaman konfirmasi pendaftaran</p>

				<h5 align="right">Tanggal Cetak: <b><?php echo date("Y-m-d"); ?></b></h5>
                <button class="btn btn-primary btn-md pull-right" id="cetak" onclick="printTable()"><i class="fa fa-print"></i>&nbsp; Cetak</button>
            </div>
        </div>
    </div>
</div>

<script>
function printTable() {
    var divToPrint = document.querySelector('.card-content');
    var newWin = window.open('', '_blank');
    newWin.document.write('<html><head><title>Cetak Rincian Pembayaran</title>');
    newWin.document.write('<style>table {width: 100%; border-collapse: collapse;} th, td {border: 1px solid black; padding: 8px; text-align: left;} th {background-color: #f2f2f2;} </style>');
    newWin.document.write('</head><body>');
    newWin.document.write(divToPrint.innerHTML);
    newWin.document.write('</body></html>');
    newWin.print();
    newWin.close();
}
</script>
            </div>
        </div>
    </div>
</div>

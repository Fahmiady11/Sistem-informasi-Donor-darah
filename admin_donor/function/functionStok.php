<?php
$con = mysqli_connect("localhost", "root", "", "dbbandala");

function query($query)
{
    global $con;
    $result = mysqli_query($con, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function ubah($data)
{
    global $con;
    $idStok = htmlspecialchars($data["idDarah"]);
    $jenis = htmlspecialchars($data["jenisDarah"]);
    $jumlah = htmlspecialchars($data["jumlahDarah"]);
    $warna = htmlspecialchars($data["warna"]);
    $query = "UPDATE stok_darah SET 
                jenis_darah='$jenis',
                jumlah_darah='$jumlah',
                warna='$warna'
                WHERE id_darah  = '$idStok'";
    $coba = mysqli_query($con, $query);
    //var_dump($coba, $kodeFilm, $kodeJadwal, $tanggalTayang, $jamTayang, $harga);
    return mysqli_affected_rows($con);
}
function cari($keyword)
{
    $query = "SELECT * FROM stok_darah WHERE
                id_darah LIKE '%$keyword%'OR
                jenis_darah LIKE '%$keyword%' OR
                jumlah_darah LIKE '%$keyword%'";
    return query($query);
}

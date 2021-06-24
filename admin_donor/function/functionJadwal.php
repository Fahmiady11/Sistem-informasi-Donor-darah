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
function tambah($data)
{
    global $con;
    $idJadwal = htmlspecialchars($data["idJadwal"]);
    $jam = htmlspecialchars($data["jam"]);
    $tanggal = htmlspecialchars($data["tanggal"]);
    $tempat = htmlspecialchars($data["tempat"]);
    $link = htmlspecialchars($data["link"]);

    $query = "INSERT INTO datajadwal VALUES
              ('$idJadwal','$jam','$tanggal','$tempat','$link')";
    mysqli_query($con, $query);

    return mysqli_affected_rows($con);
}
function hapus($id)
{
    global $con;
    mysqli_query($con, "DELETE FROM datajadwal WHERE id_Jadwal = $id");
    return mysqli_affected_rows($con);
}
function ubah($data)
{
    global $con;
    $idJadwal = htmlspecialchars($data["idJadwal"]);
    $jam = htmlspecialchars($data["jam"]);
    $tanggal = htmlspecialchars($data["tanggal"]);
    $tempat = htmlspecialchars($data["tempat"]);
    $link = htmlspecialchars($data["link"]);
    $query = "UPDATE datajadwal SET 
                jam='$jam',
                tanggal='$tanggal',
                tempat='$tempat',
                link_Maps='$link'
                WHERE id_Jadwal  = '$idJadwal'";
    $coba = mysqli_query($con, $query);
    //var_dump($coba, $kodeFilm, $kodeJadwal, $tanggalTayang, $jamTayang, $harga);
    return mysqli_affected_rows($con);
}
function cari($keyword)
{
    $query = "SELECT * FROM datajadwal WHERE
                id_Jadwal LIKE '%$keyword%'OR
                jam LIKE '%$keyword%' OR
                tanggal LIKE '%$keyword%'OR
                tempat LIKE '%$keyword%'OR
                link_Maps LIKE '%$keyword%'";
    return query($query);
}

<?php
$con = mysqli_connect("localhost","root","","dbbandala");

function query ($query){
    global $con;
    $result = mysqli_query($con, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
function hapus($id){
    global $con;
    mysqli_query($con, "DELETE FROM data_input WHERE id_input = $id");
    return mysqli_affected_rows($con);
}
function cari($keyword){
    $query = "SELECT * FROM data_input WHERE
                id_input LIKE '%$keyword%'OR
                nama LIKE '%$keyword%' OR
                golongan LIKE '%$keyword%'OR
                tanggal LIKE '%$keyword%'OR
                alamat LIKE '%$keyword%'";
    return query($query);
}

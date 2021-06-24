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

function cari($keyword){
    $query = "SELECT * FROM datauser WHERE
                IdUser LIKE '%$keyword%'OR
                nama LIKE '%$keyword%' OR
                email LIKE '%$keyword%'";
    return query($query);
}

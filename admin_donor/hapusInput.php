<?php
require "function/functionFilm.php";
$id = $_GET["id"];
if (hapus($id)>0) {
    echo "
        <script>
            alert('Data berhasil dihapus!');
            document.location.href = 'dataInput.php'
        </script>";
}else {
        echo "
        <script>
        alert('Data gagal dihapus!') ;
        document.location.href = 'dataInput.php'
        </script>";
}

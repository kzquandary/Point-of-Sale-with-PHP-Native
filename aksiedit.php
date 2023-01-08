<?php
include 'koneksi.php';
$id = $_POST['id'];
$customer = $_POST['customer'];
    $qty = $_POST['qty'];
    $harga = $_POST['harga'];
    $varian = $_POST['varian'];
    $tanggal = $_POST['tanggal'];
    $status = $_POST['status'];

    $query = "UPDATE sale SET customer='$customer', qty='$qty', harga='$harga', varian='$varian', tanggal='$tanggal', status='$status' WHERE id='$id'";

$q = mysqli_query($con, $query);
    if (mysqli_query($con, $query)) {
        header('Location: index.php?pesanupdate=Sukses');
    } else {
        header('Location: index.php?pesanupdate=Gagal');
    
    }
?>
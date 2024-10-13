<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type");

$host = "127.0.0.1"; // Sesuaikan dengan host Anda
$user = "ujikom"; // Sesuaikan dengan user database Anda
$pass = "ujikom2024k4"; // Sesuaikan dengan password database Anda
$db   = "ujikom_pplg2_ilham"; // Nama database

$connection = new mysqli($host, $user, $pass, $db);

if ($connection->connect_error) {
    die("Koneksi gagal: " . $connection->connect_error);
}

header("Content-Type: application/json");

// Mendapatkan metode HTTP
$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        // Mendapatkan data informasi
        if (isset($_GET['kd_info'])) {
            $kd_info = $connection->real_escape_string($_GET['kd_info']);
            $sql = "SELECT * FROM info WHERE kd_info = '$kd_info'";
            $result = $connection->query($sql);
            $data = $result->fetch_assoc();
        } else {
            $sql = "SELECT * FROM info";
            $result = $connection->query($sql);
            $data = $result->fetch_all(MYSQLI_ASSOC);
        }
        echo json_encode($data);
        break;

    case 'POST':
        // Menambahkan data informasi baru
        $input = json_decode(file_get_contents('php://input'), true);
        $judul_info = $connection->real_escape_string($input['judul_info']);
        $isi_info = $connection->real_escape_string($input['isi_info']);
        $tgl_post_info = $connection->real_escape_string($input['tgl_post_info']);
        $status_info = $connection->real_escape_string($input['status_info']);
        $kd_petugas = $connection->real_escape_string($input['kd_petugas']);

        $sql = "INSERT INTO info (judul_info, isi_info, tgl_post_info, status_info, kd_petugas) 
                VALUES ('$judul_info', '$isi_info', '$tgl_post_info', '$status_info', '$kd_petugas')";
        
        if ($connection->query($sql)) {
            echo json_encode(["message" => "Data berhasil ditambahkan"]);
        } else {
            echo json_encode(["message" => "Gagal menambahkan data"]);
        }
        break;

    case 'PUT':
        // Memperbarui data informasi
        $input = json_decode(file_get_contents('php://input'), true);
        $kd_info = $connection->real_escape_string($input['kd_info']);
        $judul_info = $connection->real_escape_string($input['judul_info']);
        $isi_info = $connection->real_escape_string($input['isi_info']);
        $tgl_post_info = $connection->real_escape_string($input['tgl_post_info']);
        $status_info = $connection->real_escape_string($input['status_info']);
        $kd_petugas = $connection->real_escape_string($input['kd_petugas']);

        $sql = "UPDATE info SET 
                    judul_info = '$judul_info', 
                    isi_info = '$isi_info', 
                    tgl_post_info = '$tgl_post_info', 
                    status_info = '$status_info', 
                    kd_petugas = '$kd_petugas' 
                WHERE kd_info = '$kd_info'";
        
        if ($connection->query($sql)) {
            echo json_encode(["message" => "Data berhasil diperbarui"]);
        } else {
            echo json_encode(["message" => "Gagal memperbarui data"]);
        }
        break;

    case 'DELETE':
        // Menghapus data informasi
        if (isset($_GET['kd_info'])) {
            $kd_info = $connection->real_escape_string($_GET['kd_info']);
            $sql = "DELETE FROM info WHERE kd_info = '$kd_info'";

            if ($connection->query($sql)) {
                echo json_encode(["message" => "Data berhasil dihapus"]);
            } else {
                echo json_encode(["message" => "Gagal menghapus data"]);
            }
        } else {
            echo json_encode(["message" => "kd_info tidak ditemukan"]);
        }
        break;

    default:
        echo json_encode(["message" => "Metode tidak valid"]);
        break;
}

$connection->close();
?>

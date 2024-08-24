<?php
require_once 'pdo.php';
//session_start();

function insert_hoa_don($ma_dh,$ho_ten,$ten_san_pham,$tong_cong, $email, $sdt, $dia_chi, $ghi_chu)
{
    $sql = "INSERT INTO don_hang_2(ma_dh,ho_ten,ten_san_pham,gia_tien, email, sdt, dia_chi, ghi_chu) VALUES(?,?,?,?,?,?,?,?)";
    pdo_execute($sql,$ma_dh,$ho_ten,$ten_san_pham,$tong_cong, $email, $sdt, $dia_chi, $ghi_chu);
}

function phuong_thuc_select()
{
    $sql = "SELECT * FROM phuongthuc";
    return pdo_query($sql);
}
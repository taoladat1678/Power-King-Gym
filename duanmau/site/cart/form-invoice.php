<h5 class="alert-secondary mb-3 pt-3 pb-3 pl-sm-4 shadow-sm text-center text-sm-center text-md-center text-lg-center text-xl-center"
    style="margin-top: 5rem; margin-bottom: 0rem">Thông tin nhận hàng </h5>
<div class="row m-1 pb-5">
    <form action="invoice.php" method="POST" class="col-6 m-auto" id="invoice" enctype="multipart/form-data">
        <div class="form-group">
            <input type="hidden" name="ma_dh" id="ma_dh" class="form-control rounded-pill" value="<?= $ma_dh ?>"
                aria-describedby="helpId">
        </div>
        <div class="form-group form">
            <label for="ho_ten">Họ và tên</label>
            <input type="text" name="ho_ten" id="ho_ten" class="form-control rounded-pill" value="<?= $ho_ten ?>"
                aria-describedby="helpId">
        </div>
        <div class="form-group">
            <input type="hidden" name="ma_kh" id="ma_kh" class="form-control rounded-pill" value="<?= $ma_kh ?>"
                aria-describedby="helpId">
        </div>

        <?php
        $totalAll = 0;
        if (!empty($cartItems) && is_array($cartItems)) {
            foreach ($cartItems as $item) {
                $thanhTien = $item['don_gia'] * $item['sl'];
                $totalAll += $thanhTien;
                ?>
                <div class="form-group">
                    <label for="ten_san_pham">Tên sản phẩm</label>
                    <input type="text" name="ten_san_pham" id="ten_san_pham" class="form-control rounded-pill" value="<?= $item['ten_hh'] ?>"
                        aria-describedby="helpId" readonly>
                </div>
                <?php
            }
        } else {
            echo "Không có sản phẩm trong giỏ hàng.";
        }
        ?>

        <div class="form-group">
            <label for="tong_cong">Tổng cộng</label>
            <input type="text" name="tong_cong" id="tong_cong" class="form-control rounded-pill" value="<?= $totalAll ?> đ"
                aria-describedby="helpId" readonly>
        </div>

        <div class="form-group">
            <label for="email">Địa chỉ email</label>
            <input type="text" name="email" id="email" class="form-control rounded-pill" value="<?= $email ?>"
                aria-describedby="helpId">
        </div>
        <div class="form-group">
            <label for="sdt">Số điện thoại</label>
            <input type="text" name="sdt" id="sdt" class="form-control rounded-pill" placeholder=""
                aria-describedby="helpId">
        </div>
        <div class="form-group">
            <label for="dia_chi">Địa chỉ nhận hàng</label>
            <input type="text" name="dia_chi" id="dia_chi" class="form-control rounded-pill" placeholder=""
                aria-describedby="helpId">
        </div>
        <!--div class="form-group">
            <label for="phuong_thuc_tt">Phương thức thanh toán</label>
            <br>
            <select name="phuong_thuc_tt" id="phuong_thuc_tt" class="form-control">
                <?php
                // $paymentMethods là biến chứa danh sách phương thức thanh toán từ session
                // foreach ($paymentMethods as $method) {
                //     echo "<option value='" . $method['id_phuong_thuc'] . "'>" . $method['ten_phuong_thuc'] . "</option>";
                // }
                ?>
            </select>
        </div!-->

        <input type="hidden" name="trang_thai" value="0">
        <div class="form-group">
            <label for="ghi_chu">Ghi chú</label>
            <textarea name="ghi_chu" id="ghi_chu" class="form-control"></textarea>
        </div>
        <div class="d-flex justify-content-center">
            <button type="submit" name="btn_thanh_toan" class="btn btn-success btn-block pt-2 pb-2 rounded-pill">Xác nhận</button>
        </div>
    </form>
</div>

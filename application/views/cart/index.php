<?php
if ($this->session->userdata('session_sop') == "") {
    header('Location: ' . base_url());
}
?>
<div class="content-wrapper">
    <div class="container">
        <section class="content">
            <form action="<?= base_url('cart/checkout') ?>" method="POST" id="checkout">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <h3>Keranjang</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="show_error"></div>
                        <div class="box box-solid round">
                            <div class="box-body">
                                <table class="table" id="datatable" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Produk</th>
                                            <th></th>
                                            <th>Qty</th>
                                            <th>Harga</th>
                                            <th>Total harga</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php 
                                        $i = 0;
                                        foreach ($transaksi_produk as $row) {
                                            $photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idProduk'], 'table' => 'm_produk'));
                                            $produk = $this->mymodel->selectDataone('m_produk', array('idProduk' => $row['idProduk']));
                                            $kategori = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $produk['idKategori']));
                                            $desk = strlen($produk["deskProduk"]) > 50 ? substr($produk["deskProduk"], 0, 50) . "..." : $produk["deskProduk"];
                                            $rowStock = $this->mymodel->selectWithQuery("SELECT count(idStok) as rowstock from produk_stok WHERE idProduk = " . $row['idProduk'] . " AND statusStok = 'TERSEDIA' AND status = 'ENABLE'");
                                            ?>
                                            <tr>
                                                <td align="center">
                                                    <img src="<?= $photo['url'] ?>" alt="" width="100px" height="100px" class="img-fluid rounded shadow-sm">
                                                    <input type="hidden" name="dtd[<?= $i ?>][id]" value="<?= $row['id'] ?>">
                                                </td>
                                                <td>
                                                    <h4><?= $produk['namaProduk'] ?></h4>
                                                    <span class="text-muted font-weight-normal font-italic d-block">Kategori: <?= $kategori['namaKategori'] ?>
                                                    <br><small><?= $desk ?></small>
                                                </span>
                                            </td>
                                            <td align="center">
                                                <div class="input-group" style="width:120px">
                                                    <div class="input-group-btn">
                                                        <button id="minValue-<?= $row['id'] ?>" type="button" class="btn btn-primary" onclick="minValue(<?= $row['id'] ?>)" <?php if ($row['jumlahProduk'] <= 1) {
                                                            echo "disabled";
                                                        } ?>>
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                </div>
                                                <input type="text" class="form-control" value="<?= $row['jumlahProduk'] ?>" id="value-<?= $row['id'] ?>" name="dtd[<?= $i ?>][jumlahProduk]">
                                                <div class="input-group-btn">
                                                    <button id="addValue-<?= $row['id'] ?>" type="button" class="btn btn-primary" onclick="addValue(<?= $row['id'] ?>)" <?php if ($row['jumlahProduk'] >= $rowStock[0]['rowstock']) {
                                                        echo "disabled";
                                                    } ?>>
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <input type="hidden" value="<?= $rowStock[0]['rowstock'] ?>" id="stock-<?= $row['id'] ?>">
                                        <br>
                                        <span class="text-muted font-weight-normal font-italic d-block">
                                            Stock Tersedia : <b><?= $rowStock[0]['rowstock'] ?></b>
                                        </span>
                                    </td>
                                    <td>
                                        <b>
                                            Rp <?= number_format($produk['hargajProduk'], 0, ',', '.') ?>
                                            <input type="hidden" value="<?= $produk['hargajProduk'] ?>" id="hargaProduk-<?= $row['id'] ?>">
                                        </b>
                                    </td>
                                    <td>
                                        <b id="totalharga-<?= $row['id'] ?>">
                                            Rp <?= number_format($row['totalHarga'], 0, ',', '.') ?>
                                        </b>
                                        <input type="hidden" value="<?= $row['totalHarga'] ?>" id="valueHarga-<?= $row['id'] ?>" name="dtd[<?= $i ?>][totalHarga]">
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-danger" onclick="reqDelete(<?= $row['id'] ?>)">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                                <?php $i++; } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="box box-solid round">
                    <div class="box-header">
                        Mohon Untuk Mengisi Form Berikut !
                    </div>
                    <div class="box-body">
                        <div class="form-group">
                            <label>Nama Pengirim</label>
                            <input type="text" class="form-control" name="dt[nama_pengirim]">
                        </div>
                        <div class="form-group">
                            <label>Nomor Yang Dapat Dihubungi</label>
                            <input type="text" name="dt[noHubungi]" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                        </div>
                        <div class="form-group">
                            <label>Alamat Lengkap</label>
                            <textarea class="form-control" rows="3" name="dt[alamatKirim]"></textarea>
                        </div>
                    </div>
                </div>
                <div class="show_error"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <button type="submit" class="btn btn-send btn-success btn-block btn-lg round">
                    LANJUTKAN CHECKOUT
                </button>
            </div>
        </div>
    </form>
</section>
</div>
</div>
<script type="text/javascript">
    function addValue(id) {
        var value = $('#value-' + id).val();
        $('#value-' + id).val(parseInt(value) + 1);
        if ($('#value-' + id).val() >= $('#stock-' + id).val()) {
            $('#addValue-' + id).attr("disabled", true);
        }
        $('#minValue-' + id).attr("disabled", false);

        totalHarga(id);
    }

    function minValue(id) {
        var value = $('#value-' + id).val();
        $('#value-' + id).val(parseInt(value) - 1);
        if ($('#value-' + id).val() == '1') {
            $('#minValue-' + id).attr("disabled", true);;
        }
        $('#addValue-' + id).attr("disabled", false);
        totalHarga(id);
    }

    function totalHarga(id) {
        var hargaProduk = parseInt($('#hargaProduk-' + id).val());
        var qtyProduk = parseInt($('#value-' + id).val());

        $('#totalharga-' + id).text(rupiah(hargaProduk * qtyProduk));
        $('#valueHarga-' + id).val(hargaProduk * qtyProduk);
    }

    function reqDelete(id) {
        location.href = "<?= base_url('cart/delete/') ?>" + id;
    }

    $("#checkout").submit(function() {
        var form = $(this);
        var mydata = new FormData(this);
        $.ajax({
            type: "POST",
            url: form.attr("action"),
            data: mydata,
            cache: false,
            contentType: false,
            processData: false,
            beforeSend: function() {
                $(".btn-send").addClass("disabled").html("Processing...").attr('disabled', true);
                form.find(".show_error").slideUp().html("");
            },

            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    setTimeout(function() {

                    }, 1000);

                    $(".btn-send").removeClass("disabled").html('LANJUTKAN CHECKOUT').attr('disabled', false);
                } else {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('LANJUTKAN CHECKOUT').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                console.log(xhr);
                $(".btn-send").removeClass("disabled").html('LANJUTKAN CHECKOUT').attr('disabled', false);
                form.find(".show_error").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });
</script>
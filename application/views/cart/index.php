<?php
if ($this->session->userdata('session_sop') == "") {
    header('Location: ' . base_url());
}
?>
<div class="content-wrapper">
    <div class="container">
        <section class="content">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <h3>Keranjang</h3>
                </div>
            </div>
            <form action="#" method="GET">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="box box-solid round">
                            <div class="box-body">
                                <div class="show_error"></div>
                                <table class="table" id="datatable">
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
                                        <?php foreach ($transaksi_produk as $row) {
                                            $photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idProduk'], 'table' => 'm_produk'));
                                            $produk = $this->mymodel->selectDataone('m_produk', array('idProduk' => $row['idProduk']));
                                            $kategori = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $produk['idKategori']));
                                            $desk = strlen($produk["deskProduk"]) > 50 ? substr($produk["deskProduk"], 0, 50) . "..." : $produk["deskProduk"];
                                            $rowStock = $this->mymodel->selectWithQuery("SELECT count(idStok) as rowstock from produk_stok WHERE idProduk = " . $row['idProduk'] . " AND statusStok = 'TERSEDIA' AND status = 'ENABLE'");
                                            ?>
                                            <tr>
                                                <td align="center">
                                                    <img src="<?= $photo['url'] ?>" alt="" width="100px" height="100px" class="img-fluid rounded shadow-sm">
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
                                                        <input type="text" class="form-control" value="<?= $row['jumlahProduk'] ?>" id="value-<?= $row['id'] ?>">
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
                                                        <input type="hidden" value="<?= $row['totalHarga'] ?>" id="totalHarga-<?= $row['id'] ?>">
                                                    </b>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-send btn-danger" onclick="reqDelete(<?=$row['id']?>)">
                                                        <i class="fa fa-trash"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="box box-solid round">
                            <div class="box-header">
                                Catatan!
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <label>Nomor Yang Dapat Dihubungi</label>
                                    <input type="text" name="nomor" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                                <div class="form-group">
                                    <label>Alamat Lengkap</label>
                                    <textarea class="form-control" rows="3" name="alamat"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <button type="submit" class="btn btn-success btn-block btn-lg round">
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
    }

    function reqDelete(id){
      location.href = "<?= base_url('cart/delete/') ?>"+id;
    }

    $(document).ready(function() {});
</script>
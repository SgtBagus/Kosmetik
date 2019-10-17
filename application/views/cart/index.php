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
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th colspan="2">Product</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td align="center">
                                                    <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-1_zrifhn.jpg" alt="" width="100px" height="100px" class="img-fluid rounded shadow-sm">
                                                </td>
                                                <td>
                                                    <h3>
                                                        <a href="#" class="text-dark d-inline-block align-middle">
                                                            Timex Unisex Originals
                                                        </a>
                                                    </h3>
                                                    <span class="text-muted font-weight-normal font-italic d-block">Category: Watches</span>
                                                    <input type="hidden" class="form-control" value="1" name="produk">
                                                </td>
                                                <td><b>Rp 15.000,00,-</b></td>
                                                <td align="center">
                                                    <div class="input-group" style="width:120px">
                                                        <div class="input-group-btn">
                                                            <button type="button" class="btn btn-primary" id="minValue">
                                                                <i class="fa fa-minus"></i>
                                                            </button>
                                                        </div>
                                                        <input type="text" class="form-control" value="15" name="value" id="value">
                                                        <div class="input-group-btn">
                                                            <button type="button" class="btn btn-primary" id="addValue">
                                                                <i class="fa fa-plus"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#">
                                                        <button class="btn btn-danger">
                                                            <i class="fa fa-trash"></i>
                                                        </button>
                                                    </a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
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
    $(document).ready(function() {
        $('#addValue').click(function() {
            var value = $('#value').val();
            $('#value').val(parseInt(value) + 1);
        });

        $('#minValue').click(function() {
            var value = $('#value').val();
            $('#value').val(parseInt(value) - 1);
        });
    });
</script>
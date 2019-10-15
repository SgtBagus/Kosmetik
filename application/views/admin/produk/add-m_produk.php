<form method="POST" action="<?= base_url('admin/produk/store') ?>" id="upload-create" enctype="multipart/form-data">
    <div class="show_error"></div>
    <input type="hidden" class="form-control" id="form-idCreator" value="<?= $this->session->userdata('id') ?>" placeholder="Masukan IdCreator" name="dt[idCreator]">
    <div class="form-group">
        <label for="form-namaProduk">Nama Produk</label>
        <input type="text" class="form-control" id="form-namaProduk" placeholder="Masukan Nama Produk" name="dt[namaProduk]">
    </div>
    <div class="form-group">
        <label for="form-hargabProduk">Harga Beli Produk</label>
        <input type="text" class="form-control" id="form-hargabProduk" placeholder="Masukan Harga Beli Produk" name="dt[hargabProduk]">
    </div>
    <div class="form-group">
        <label for="form-hargajProduk">Harga Jual Produk</label>
        <input type="text" class="form-control" id="form-hargajProduk" placeholder="Masukan Harga Jual Produk" name="dt[hargajProduk]">
    </div>
    <div class="form-group">
        <label for="form-idKategori">Kategori</label>
        <select name="dt[idKategori]" class="form-control select2">
            <?php
            $m_kategori = $this->mymodel->selectWhere('m_kategori', null);
            foreach ($m_kategori as $m_kategori_record) {
                echo "<option value=" . $m_kategori_record['idKategori'] . ">" . $m_kategori_record['namaKategori'] . "</option>";
            }
            ?>
        </select>
    </div>
    <div class="form-group">
        <label for="form-file">File</label>
        <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
    </div>
    <hr>
    <button type="submit" class="btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
    <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
</form>
<script type="text/javascript">
    $("#upload-create").submit(function() {
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
                $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);
                form.find(".show_error").slideUp().html("");
            },
            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    setTimeout(function() {
                        $("#load-table").html('');
                        loadtable($("#select-status").val());
                        $("#modal-form").modal('hide');
                    }, 1000);
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                } else {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                form.find(".show_error").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });
</script>
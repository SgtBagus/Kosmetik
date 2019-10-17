<h3 align="center"><b><?= $produk['namaProduk'] ?><br><small><?= $kategori['namaKategori'] ?></small></b></h3>
<div class="row">
  <div class="col-md-12 col-xs-12" align="center">
    <h4> Harga : <b> Rp. <?= number_format($produk['hargajProduk'], 0, ',', '.') ?>,- </b></h4>
  </div>
  <div class="col-md-6 col-xs-12" align="center">
    <img class="lazy" src="<?= $file['url'] ?>" alt="Second slide" style="height: 100%; width: 100%; object-fit: cover; display: inline;">
    <br>
    <h4> Sisa Stock : <b><?= $rowStock[0]['rowstock'] ?></b> </h4>
  </div>
  <div class="col-md-6 col-xs-12">
    <p> <?= $produk['deskProduk'] ?></p>
  </div>
  <div class="col-md-12" align="center">
    <?php if ($this->session->userdata('session_sop') == "") { ?>
      <p class="help-block">Di Mohon untuk Login Terlebih Dahulu sebelum Membeli</p>
    <?php } else if ($rowStock[0]['rowstock'] == 0) { ?>
      <p class="help-block">Stock Telah Habis</p>
    <?php } else if ($rowStock[0]['rowstock'] == $totalkeranjang['jumlahProduk']) { ?>
      <p class="help-block">Anda Telah menambahkan Produk ini sebanyak stock yang kami punya, Mohon Cek Kembali Keranjang anda <a href="<?= base_url('cart') ?>"> Disini!</a></p>
    <?php }else { ?>
      <form action="<?= base_url('produk/addCrat/' . $produk['idProduk']) ?>" method="post" id="addCrat">
        <button type="submit" class="btn btn-send btn-primary btn-md">
          <i class="fa fa-cart-plus"></i> Tambah Keranjang
        </button>
        <br>
        <br>
        <div class="show_error"></div>
      </form>
    <?php } ?>
  </div>
</div>

<script type="text/javascript">
  $("#addCrat").submit(function() {
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
            location.reload();
          }, 1000);
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-cart-plus"></i> Tambah Keranjang').attr('disabled', false);
        } else {
          form.find(".show_error").hide().html(response).slideDown("fast");
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-cart-plus"></i> Tambah Keranjang').attr('disabled', false);
        }
      },
      error: function(xhr, textStatus, errorThrown) {
        console.log(xhr);
        $(".btn-send").removeClass("disabled").html('<i class="fa fa-cart-plus"></i> Tambah Keranjang').attr('disabled', false);
        form.find(".show_error").hide().html(xhr).slideDown("fast");
      }
    });
    return false;
  });
</script>
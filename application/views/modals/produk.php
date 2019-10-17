<h3 align="center"><b><?= $produk['namaProduk'] ?><br><small><?= $kategori['namaKategori'] ?></small></b></h3>
<div class="row">
  <div class="col-md-12 col-xs-12" align="center">
    <h4> Harga : <b> Rp. <?= number_format($produk['hargajProduk'],0,',','.')?>,- </b></h4>
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
    <?php } else { ?>
      <button class="btn btn-primary btn-md">
        <i class="fa fa-cart-plus"></i> Tambah Keranjang
      </button>
    <?php } ?>
  </div>
</div>
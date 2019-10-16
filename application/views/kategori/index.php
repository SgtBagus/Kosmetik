<div class="content-wrapper">
  <div class="container">
    <section class="content">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <h3>List Kategori</h3>
        </div>
      </div>
      <div class="row">
        <?php foreach ($kategori as $row) {
          $photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idKategori'], 'table' => 'm_kategori')); ?>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="box box-solid round">
              <div class="box-header" align="center">
                <img src="<?= $photo['url'] ?>" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
              </div>
              <div class="box-body" align="center">
                <h4 style="margin-top:0px"><b><?= $row['namaKategori'] ?></b></h4>
                <a href="<?= base_url('produk?kategori=' . $row['idKategori']) ?>">
                  <button class="btn btn-primary round btn-sm">
                    <i class="fa fa-search"></i> Cari Produk !
                  </button>
                </a>
              </div>
            </div>
          </div>
        <?php  } ?>
      </div>
    </section>
  </div>
</div>
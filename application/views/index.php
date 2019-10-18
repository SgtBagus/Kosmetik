<div class="content-wrapper">
  <div class="container">
    <section class="content">
      <div class="row" align="center">
        <div class="col-md-12 col-12 mb-md-0 mb-5">
          <h1>Lorem ipsum dolor</h1>
        </div>
      </div>
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
          <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner round">
          <div class="item active">
            <img class="round img-slide" src="https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="First slide" width="100%" style="height: 300px">

            <div class="carousel-caption">
              First Slide
            </div>
          </div>
          <div class="item">
            <img class="round img-slide" src="https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Second slide" width="100%" style="height: 300px;">

            <div class="carousel-caption">
              Second Slide
            </div>
          </div>
          <div class="item">
            <img class="round img-slide" src="https://images.pexels.com/photos/68147/waterfall-thac-dray-nur-buon-me-thuot-daklak-68147.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="Third slide" width="100%" style="height: 300px;">
            <div class="carousel-caption">
              Third Slide
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="fa fa-angle-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="fa fa-angle-right"></span>
        </a>
      </div>
      <br>
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12" align="center">
          <h3>Kategori Barang</h3>
        </div>
      </div>
      <div class="row">
        <?php foreach ($kategori as $row) {
          $photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idKategori'], 'table' => 'm_kategori')); ?>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="box box-solid round">
              <div class="box-header" align="center">
                <img class="lazy" src="<?= $photo['url'] ?>" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
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
        <div class="col-md-12" align="center">
          <a href="<?= base_url('kategori') ?>">
            <button class="btn btn-primary round">
              <i class="fa fa-search"></i> Buka Selengkapnya !
            </button>
          </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
          <h3>List Produk</h3>
          <div class="box box-solid round">
            <div class="box-body">
              <form action="<?= base_url('produk') ?>" method="GET">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <h4>Cari Produk : </h4>
                  </div>
                  <div class="col-md-9 col-sm-9 col-xs-9">
                    <div class="form-group">
                      <div class="input-group">
                        <div class="input-group-addon">
                          <i class="fa fa-archive"></i>
                        </div>
                        <input type="text" class="form-control" name="name" placeholder="Masukan Nama Produk">
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-3 col-xs-3">
                    <div class="form-group">
                      <button type="submit" class="btn btn-block btn-success"><i class="fa fa-search"></i> Cari</button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <?php foreach ($produk as $row) {
          $photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idProduk'], 'table' => 'm_produk'));
          $kategori = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $row['idKategori'])); 
          $rowStock = $this->mymodel->selectWithQuery("SELECT count(idStok) as rowstock from produk_stok WHERE idProduk = ".$row['idProduk']." AND statusStok = 'TERSEDIA' AND status = 'ENABLE'");
          ?>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="box box-solid round" onclick="view(<?= $row['idProduk'] ?>)">
              <div class="box-header" align="center">
                <img class="lazy" src="<?= $photo['url'] ?>" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
              </div>
              <div class="box-body" align="center">
                <h4 style="margin-top:0px">
                  <b>
                    <?= strlen($row["namaProduk"]) > 20 ? substr($row["namaProduk"], 0, 20) . "..." : $row["namaProduk"] ?>
                  </b><br>
                  <small><?= $kategori['namaKategori'] ?></small>
                </h4>
                Sisa Stock : <b><?= $rowStock[0]['rowstock'] ?></b>
                <br>
                Harga : <b> Rp. <?= number_format($row['hargajProduk'], 0, ',', '.') ?>,- </b>
              </div>
            </div>
          </div>
        <?php  } ?>
        <div class="col-md-12" align="center">
          <a href="<?= base_url('produk') ?>">
            <button class="btn btn-primary round">
              <i class="fa fa-search"></i> Buka Selengkapnya !
            </button>
          </a>
        </div>
      </div>
    </section>
  </div>
</div>
<div class="modal modal-default fade" id="modal-view" style="display: none;">
  <div class="modal-dialog round">
    <div class="modal-content round">
      <div class="modal-header top-round bg-green">
        <h4 class="modal-title" align="center" id="title-view"></h4>
      </div>
      <div class="modal-body">
        <div id="load-view"></div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  function view(id) {
    $("#load-view").html('loading...');
    $("#modal-view").modal();
    $("#title-view").html('Produk');
    $("#load-view").load("<?= base_url('produk/view/') ?>" + id);
  }
</script>
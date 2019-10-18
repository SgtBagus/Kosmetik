<div class="content-wrapper">
  <div class="container">
    <section class="content">
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
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="form-group">
                      <label>Nama Produk</label>
                      <div class="input-group">
                        <div class="input-group-addon">
                          <i class="fa fa-archive"></i>
                        </div>
                        <input type="text" class="form-control" name="name" placeholder="Masukan Nama Produk" <?php if ($_GET['name']) {
                                                                                                                echo 'value="' . $_GET['name'] . '"';
                                                                                                              } ?> id="filter-name">
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="form-group">
                      <label>Kategori</label>
                      <select name="kategori" class="form-control" id="filter-kategori">
                        <option value="">-Pilih Kategori-</option>
                        <?php
                        $m_kategori = $this->mymodel->selectWhere('m_kategori', null);
                        foreach ($m_kategori as $m_kategori_record) { ?>
                          <option value=<?= $m_kategori_record['idKategori'] ?> <?php if ($_GET['kategori'] == $m_kategori_record['idKategori']) {
                                                                                    echo "selected";
                                                                                  } ?>> <?= $m_kategori_record['namaKategori'] ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="form-group">
                      <label>Cari</label>
                      <button type="submit" class="btn btn-block btn-success" style="buttom:0px">
                        <i class="fa fa-search"></i> Cari
                      </button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div id="load_data">
        </div>
      </div>
      <div id="load_data_message"></div>
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
  $(document).ready(function() {

    var limit = 8;
    var start = 0;
    var action = 'inactive';

    function load_data(limit, start) {
      lazzy_loader(limit);
      var name = $('#filter-name').val();
      var kategori = $('#filter-kategori').val();

      $.ajax({
        url: "<?= base_url(); ?>produk/fetch?name=" + name + "&kategori=" + kategori,
        method: "POST",
        data: {
          limit: limit,
          start: start
        },
        cache: false,
        success: function(data) {
          if (data == '') {
            $('#load_data_message').html('<div class="row">' +
              '<div class="col-xs-12" align="center">' +
              'Semua Produk telah Ditampilkan' +
              '</div>' +
              '</div>');
            action = 'active';
          } else {
            $('#load_data').append(data);
            $('#load_data_message').html('');
            action = 'inactive';
          }
        }
      })
    }

    if (action == 'inactive') {
      action = 'active';
      load_data(limit, start);
    }

    $(window).scroll(function() {
      if ($(window).scrollTop() + $(window).height() > $("#load_data").height() && action == 'inactive') {
        lazzy_loader(limit);
        action = 'active';
        start = start + limit;
        setTimeout(function() {
          load_data(limit, start);
        }, 1000);
      }
    });
  });
</script>
<?php
if ($this->session->userdata('role_id') == '17') {
  redirect(base_url('admin'));
}
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>KOSMETIK</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>plugins/iCheck/all.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>plugins/timepicker/bootstrap-timepicker.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/select2/dist/css/select2.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <script src="<?= base_url('assets/') ?>/jquery/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">

  <link rel="icon" href="<?= base_url('assets/') ?>icon.png">

  <script type="text/javascript" src='https://maps.google.com/maps/api/js?libraries=places&key=AIzaSyASx6JCkfcpuUIDho2q_G_ayRSsq4BpV2Q'></script>
  <script src="<?= base_url('assets/') ?>maps/locationpicker.jquery.min.js"></script>
  <link rel="stylesheet" href="<?= base_url('assets/') ?>custom/css_custom.css">
  <style>
    #myList li {
      display: none;
      list-style-type: none;
    }

    #showLess {
      display: none;
    }
  </style>
</head>
<?php
$actual_link = "https://{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";
$this->session->set_userdata(array('url_session' => $actual_link));
?>

<body class="hold-transition skin-green layout-top-nav scroll-bar">
  <div class="wrapper">
    <header class="main-header">
      <nav class="navbar navbar-static-top">
        <div class="container">
          <div class="navbar-header">
            <a href="<?= base_url() ?>" class="navbar-brand">
              <b>
                KOSMETIK
              </b>
            </a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
              <i class="fa fa-bars"></i>
            </button>
          </div>
          <div class="collapse navbar-collapse pull-left menu-custom_css" id="navbar-collapse">
            <ul class="nav navbar-nav">
              <li><a href="<?= base_url('kategori') ?>"><i class="fa fa-th"></i> Kategori</a></li>
              <li><a href="<?= base_url('produk') ?>"><i class="fa fa-list"></i> Produk</a></li>
              <li>
                <form action="<?= base_url('produk') ?>" class="navbar-form navbar-left" role="search" method="GET">
                  <div class="form-group">
                    <input type="text" class="form-control" id="navbar-search-input" placeholder="Search" name="name">
                  </div>
                </form>
              </li>
            </ul>
          </div>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <?php if ($this->session->userdata('session_sop') == "") { ?>
                <li>
                  <a href="#" data-toggle="modal" data-target="#modal-login">
                    Login
                  </a>
                </li>
                <li>
                  <a href="<?= base_url('register') ?>">
                    Daftar
                  </a>
                </li>
              <?php } else {
                $userdata = $this->mymodel->selectDataone('tbl_user', array('id' => $this->session->userdata('id')));
                $photo = $this->mymodel->selectDataone('file', array('table' => 'tbl_user', 'table_id' => $this->session->userdata('id')));

                ?>
                <li>
                  <a href="<?= base_url('cart') ?>">
                    <i class="fa fa-shopping-cart"></i>
                    <span class="label label-danger">9</span>
                  </a>
                </li>
                <li class="dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="<?= $photo['url'] ?>" class="img-circle" alt="User Image" width="25px" height="25px">
                    <span class="hidden-xs"><?= $userdata['name'] ?></span>
                  </a>
                  <ul class="dropdown-menu">
                    <li class="user-header">
                      <img src="<?= $photo['url'] ?>" class="img-circle" alt="User Image">
                      <p>
                        <?= $userdata['name'] ?>
                        <small><?= $userdata['email'] ?></small>
                      </p>
                    </li>
                    <li class="user-footer">
                      <div class="pull-left">
                        <a href="<?= base_url('profil') ?>" class="btn btn-default btn-flat"> Profile Akun</a>
                      </div>
                      <div class="pull-right">
                        <a href="<?= base_url('login/logout') ?>" class="btn btn-default btn-flat"> Keluar</a>
                      </div>
                    </li>
                  </ul>
                </li>
              <?php } ?>
              <li>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" id="refresh">
                  <i class="fa fa-refresh"></i>
                </button>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <div class="row" style="height: 50px;background-color: #f3f3f3;"></div>
    <?= $contents ?>
    <div class="modal modal-default fade" id="modal-login" style="display: none;">
      <div class="modal-dialog round">
        <div class="modal-content round">
          <div class="modal-header top-round bg-green">
            <h4 class="modal-title" align="center"><b>Login</b></h4>
          </div>
          <div class="modal-body">
            <?php $this->load->view('modals/login_form') ?>
          </div>
        </div>
      </div>
    </div>
    <footer class="main-footer">
      <div class="container" style="margin-top: 15px">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12 text-center">
            <img src="<?= base_url('assets/') ?>icon.png" width="100px" height="100px">
            <h1><b>AGNOV.ID</b></h1>
            <p>Copyright <i class="fa fa-copyright"></i> 2019</p>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 text-center">
            <h2><b>AGNOV</b></h2>
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-6">
                <a href="<?= base_url('project') ?>" style="color: white">
                  Proyek
                </a>
              </div>
              <div class="col-md-6 col-sm-6 col-xs-6">
                <a href="<?= base_url('blog') ?>" style="color: white">
                  Blog
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12 text-center">
            <h2><b>IKUTI KAMI</b></h2>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <a class="btn btn-social-icon btn-facebook round" style="margin: 2px">
                  <i class="fa fa-facebook"></i>
                </a>
                <a class="btn btn-social-icon btn-instagram round" style="margin: 2px">
                  <i class="fa fa-instagram"></i>
                </a>
                <a class="btn btn-social-icon btn-success round" style="margin: 2px">
                  <i class="fa fa-whatsapp"></i>
                </a>
                <a class="btn btn-social-icon btn-twitter round" style="margin: 2px">
                  <i class="fa fa-twitter"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
</body>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="<?= base_url('assets/') ?>plugins/input-mask/jquery.inputmask.js"></script>
<script src="<?= base_url('assets/') ?>plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?= base_url('assets/') ?>plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/moment/min/moment.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<script src="<?= base_url('assets/') ?>plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/ckeditor/ckeditor.js"></script>
<script src="<?= base_url('assets/') ?>plugins/iCheck/icheck.min.js"></script>
<script src="<?= base_url('assets/') ?>bower_components/fastclick/lib/fastclick.js"></script>
<script src="<?= base_url('assets/') ?>dist/js/adminlte.min.js"></script>
<script src="<?= base_url('assets/') ?>dist/js/demo.js"></script>
<script src="<?= base_url('assets/') ?>custom/number-separator.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.3/Chart.min.js"></script>
<script>
  function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
  }


  function lazzy_loader(limit) {
    var output = '<div class="row">' +
      '<div class="col-xs-12" align="center">' +
      '<h4><i class="fa fa-fw fa-spinner fa-spin"></i> Memuat Data !</h4' +
      '</div>' +
      '</div>';
    $('#load_data_message').html(output);
  }

  $(function() {
    $('.select2').select2()
    $('#datemask').inputmask('dd/mm/yyyy', {
      'placeholder': 'dd/mm/yyyy'
    })

    $('#datepicker').datepicker({
      format: 'dd-mm-yyyy',
    });

    $('#datatable').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": false,
      "scrollX": true,
      "scrollY": true,
      "language": {
        "search": "<b> Pencarian : </b>",
        "zeroRecords": function() {
          return "<img src='https://icon-library.net/images/no-data-icon/no-data-icon-20.jpg' width='100px' height='100px'><p><b>Tidak Ada Data</b><p>";
        },
        "paginate": {
          "previous": "Sebelumnya",
          "next": "Selanjutnya"
        }
      },
    });

    $('#datatable-history').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": false,
      "ordering": true,
      "info": false,
      "scrollX": true,
      "scrollY": true,
      "language": {
        "search": "<b> Pencarian : </b>",
        "zeroRecords": function() {
          return "<img src='https://icon-library.net/images/no-data-icon/no-data-icon-20.jpg' width='100px' height='100px'><p><b>Tidak Ada Data</b><p>";
        },
        "paginate": {
          "previous": "<i class='fa fa-arrow-left'></i>",
          "next": "<i class='fa fa-arrow-right'></i>"
        },
        "lengthMenu": '<label>Tampilkan <select name="datatable_length" aria-controls="datatable" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> Data</label>'
      },
    });
  });

  $("#btnFile").click(function() {
    document.getElementById('imageFile').click();
  });

  $("#imageFile").change(function() {
    imagePreview(this);
  });

  function imagePreview(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $('#preview_image').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  };
</script>

</html>
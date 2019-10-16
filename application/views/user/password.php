<?php 
if($this->session->userdata('session_sop')) {
  header('Location: '.base_url());
}
?>
<div class="content-wrapper">
  <div class="container"> 
    <section class="content">
      <div class="row" align="center"> 
        <h1><i class="fa fa-lock"></i> Lupa Password </h1>
        <small>Mohon masukan Email anda yang terdaftar unutk proses lebih lanjut</small>
      </div>
      <br>
      <div class="row">
        <div class="col-md-3 col-sm-2 col-xm-12">
        </div>
        <div class="col-md-6 col-sm-8 col-xm-12">
          <div class="box box-solid round">
            <div class="box-body">
              <form action="#" method="POST" id="login_form">
                <div class="show_error" id="error_input">

                </div>
                <div class="form-group">
                  <label>Email</label>
                  <input type="email" name="email" class="form-control">
                  <p class="help-block pull-right">Sudah ingat password anda ? <a href="#" data-toggle="modal" data-target="#modal-login">Login Disini </a></p>
                </div>
                <button type="submit" class="btn btn-block btn-primary">
                  <i class="fa fa-send"> </i> Kirim Email
                </button>
                <p class="help-block pull-right">Tidak Punya Akun ? <a href="<?= base_url('user') ?>/register">Daftar Disini </a></p>
                <br>
                <hr>
              </form>
              <h4 align="center">atau</h4>
              <div class="row">
                <div class="col-md-12" align="center">
                  <a href="<?=$this->google_url?>" class="btn btn-block btn-social btn-login btn-md">
                    <img src="http://transformations-spafitness.com/wp-content/uploads/2013/11/google-logo-icon-PNG-Transparent-Background-1.png">
                    <div class="row" align="center">
                      Masuk Dengan Google
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-2 col-xm-12">
        </div>
      </div>
    </section>
  </div>
</div>
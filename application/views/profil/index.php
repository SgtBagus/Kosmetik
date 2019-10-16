<?php
if ($this->session->userdata('session_sop') == "") {
    header('Location: ' . base_url());
}
?>
<div class="content-wrapper">
    <div class="container">
        <section class="content">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <h1><?= $title ?> </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="box box-solid round">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12" align="center">
                                    <img src="<?= base_url() . $file['dir'] ?>" class="img-circle" alt="User Image" width="100px" height="100px">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="<?= base_url('/dashboard/account') ?>">
                                <button type="submit" class="btn btn-block btn-primary btn-md round"><i class="fa fa-edit"></i> Ubah Profil</button>
                            </a>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box box-solid round">
                                <div class="box-body">
                                    <ul class="list-group list-group-unbordered">
                                        <a href="<?= base_url('profil') ?>">
                                            <li class="list-group-item a_black" style="margin-bottom: 5px;" id="profil">
                                                <i class="fa fa-dashboard"></i> Profil
                                            </li>
                                        </a>
                                        <a href="<?= base_url('profil/account') ?>">
                                            <li class="list-group-item a_black" style="margin-bottom: 5px;" id="account">
                                                <i class="fa fa-user-circle"></i> Akun Saya
                                            </li>
                                        </a>
                                    </ul>
                                    <a href="<?= base_url('AuthLogin/logout') ?>"><button type="button" class="btn btn-block btn-danger btn-md"><i class="fa fa-sign-out"></i> Logout</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 col-sm-6 col-xs-12">
                    <?= $alert ?>
                    <?php
                    $data['user'] = $user;
                    $data['file'] = $file;

                    if ($content == 'profil') {
                        $this->load->view('profil/profil');
                    } else if ($content == 'account') {
                        $this->load->view('profil/account');
                    } else {
                        $this->load->view('errors/html/error_404.php');
                    }
                    ?>
                </div>
            </div>
        </section>
    </div>
</div>
<script>
    $(document).ready(function() {
        if ('<?= $content ?>' == 'profil') {
            $("#profil").addClass("active");
        } else if ('<?= $content ?>' == 'account') {
            $("#account").addClass("active");
        }
    });
</script>
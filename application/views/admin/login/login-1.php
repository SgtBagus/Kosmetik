<?php
if ($this->session->userdata('session_sop') != "") {
    redirect('/admin');
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= TITLE_LOGIN_APPLICATION ?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="<?= base_url('assets') ?>/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/main.css">
</head>

<body class="hold-transition lockscreen" style="<?= LOGIN_BACKGROUND ?>">
    <div class="show_error"></div>
    <div style="width: 100%;
min-height: 100vh;
display: -webkit-box;
display: -webkit-flex;
display: -moz-box;
display: -ms-flexbox;
display: flex;
flex-wrap: wrap;
justify-content: center;
align-items: center;
padding: 15px;
background-repeat: no-repeat;
background-position: center;
background-size: cover;
position: relative;
z-index: 1;">
        <div class="lockscreen-wrapper" style="<?= LOGIN_BOX  ?>;padding: 20px;color: #607d8b; margin-top: 0;border-radius: 5px;">
            <div class="lockscreen-logo">
                <a href="<?= base_url('admin/login/') ?>" style="color:#607d8b !important"><b><?= LOGIN_TITLE  ?></b></a>
            </div>
            <div class="lockscreen-name">Enter Username</div>
            <div class="lockscreen-item">
                <div class="lockscreen-image">
                    <img src="<?= LOGO ?>" alt="User Image">
                </div>
                <form action="<?= base_url('admin/login/lockscreen') ?>" class="lockscreen-credentials" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="user" placeholder="Username" style="border-bottom: solid 1px #ddd;">

                        <div class="input-group-btn">
                            <button type="submit" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
                        </div>
                    </div>
                </form>
            </div>
            <br>
            <div class="lockscreen-footer text-center">
                Copyright <?= COPYRIGHT ?>
            </div>
        </div>
    </div>
    <script src="<?= base_url('assets') ?>/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="<?= base_url('assets') ?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>

</html>
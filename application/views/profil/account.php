<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-solid round">
                    <div class="box-body">
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab_info" data-toggle="tab" aria-expanded="false">Info</a></li>
                                <li class=""><a href="#tab_password" data-toggle="tab" aria-expanded="false">Password</a></li>
                                <li class=""><a href="#tab_image" data-toggle="tab" aria-expanded="false">Foto Profil</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_info">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="box-body">
                                                <form action="<?= base_url('profil/editaccount') ?>" method="post" enctype="multipart/form-data" id="editaccount">
                                                    <div class="show_error_account"></div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Nama Lengkap</label>
                                                                <input type="text" name="dt[name]" class="form-control" placeholder="Masukan Nama Lengkap" value="<?= $user['name'] ?>">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Email</label>
                                                                <input type="text" name="dt[email]" class="form-control" placeholder="Masukan Email" value="<?= $user['email'] ?>" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>No Hp</label>
                                                        <input type="text" name="dt[phone]" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask value="<?= $user['phone'] ?>">
                                                    </div>
                                                    <div class="row" align="right">
                                                        <div class="col-md-12">
                                                            <button type="submit" class="btn-send btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab_password">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="box-body">
                                                <form action="<?= base_url('profil/editpassword') ?>" method="post" enctype="multipart/form-data" id="editpassword">
                                                    <div class="show_error_password"></div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Password Baru</label>
                                                                <input type="password" name="newPassword" class="form-control">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Konfirmasi Password</label>
                                                                <input type="password" name="confPassword" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <?php if ($user['password'] == 'notset-'.$user['id'].'_NULL') { ?>
                                                        <input type="hidden" name="action" class="form-control" value="new">
                                                    <?php } else { ?>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label>Password Lama</label>
                                                                    <input type="password" name="lastPassword" class="form-control">
                                                                    <input type="hidden" name="action" class="form-control" value="change">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <?php } ?>
                                                    <div class="row" align="right">
                                                        <div class="col-md-12">
                                                            <button type="submit" class="btn-send btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab_image">
                                    <form action="<?= base_url('profil/editphoto') ?>" method="post" enctype="multipart/form-data" id="editphoto">
                                        <div class="show_error_image"></div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Foto Profil</label>
                                            <div class="row">
                                                <div class="col-md-5" align="center">
                                                    <img src="<?= base_url() . $file['dir'] ?>" class="img-circle" alt="User Image" width="250px" height="250px" id="preview_image">
                                                </div>
                                                <div class="col-md-7">
                                                    <button type="button" class="btn btn-sm btn-primary" id="btnFile"><i class="fa fa-file"></i> Browser File</button>
                                                    <input type="file" class="file" id="imageFile" style="display: none;" name="file" accept="image/x-png,image/jpeg,image/jpg" />
                                                    <p class="help-block">Foto yang diupload disarankan berukuran 70px x 70px dan memiliki format PNG, JPG, atau JPEG</p>
                                                </div>
                                            </div>
                                            <div class="row" align="right">
                                                <div class="col-md-12">
                                                    <button type="submit" class="btn-send btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $("#editaccount").submit(function() {
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
                form.find(".show_error_account").slideUp().html("");
            },

            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error_account").hide().html(response).slideDown("fast");
                    setTimeout(function() {

                    }, 1000);

                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                } else {
                    form.find(".show_error_account").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                console.log(xhr);
                $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                form.find(".show_error_account").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });

    
    $("#editpassword").submit(function() {
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
                form.find(".show_error_password").slideUp().html("");
            },

            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error_password").hide().html(response).slideDown("fast");
                    setTimeout(function() {

                    }, 1000);

                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                } else {
                    form.find(".show_error_password").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                console.log(xhr);
                $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                form.find(".show_error_password").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });

    $("#editphoto").submit(function() {
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
                form.find(".show_error_image").slideUp().html("");
            },

            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error_image").hide().html(response).slideDown("fast");
                    setTimeout(function() {

                    }, 1000);

                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                } else {
                    form.find(".show_error_image").hide().html(response).slideDown("fast");
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                console.log(xhr);
                $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);
                form.find(".show_error_image").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });
</script>
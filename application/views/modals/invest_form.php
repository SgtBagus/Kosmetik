<?php 
$unit = $this->mymodel->selectWithQuery("SELECT SUM(unit) as unit FROM tbl_project_invest WHERE project_id = '".$tbl_project['id']."' AND status_pembayaran = 'APPROVE'");

$unit_terjual = 0;
if($unit[0]['unit']){
  $unit_terjual = $unit[0]['unit'];
}

$sisa_unit = $tbl_project['unit'] - $unit_terjual;

?>

<h3 align="center"> Ingin Menginvestasi Berapa Unit ?</h3>
<form class="form-horizontal" action="<?= base_url('project/invest') ?>" method="POST" id="invest-upload">
  <div class="invest_error"></div>
  <div class="form-group" align="center">
    <h4>Harga : <b>Rp <?= number_format($tbl_project['harga'],0,',','.') ?>,- / Unit</b></h4>
    <small>Sisa Slot : <b><?= $sisa_unit ?></b> / <?= $tbl_project['unit'] ?> </small>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Jumlah Unit*</label>
    <div class="col-sm-9">
      <input type="number" name="dt[unit]" id="unit_proyek" class="form-control" id="unit" placeholder="Masukan Jumlah Unit..">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-4 control-label">Total Harga Proyek*</label>
    <div class="col-sm-8">
      <div class="input-group">
        <div class="input-group-addon">
          <i class="fa fa-money"></i> Rp. 
        </div>
        <input type="hidden" name="dt[project_id]" value="<?=$tbl_project['id']?>">
        <input type="hidden" name="dt[harga]" value="<?=$tbl_project['harga']?>">
        <input type="text" name="dt[total_harga]" id="total_proyek" class="number-separator form-control" readonly="true"> 
      </div>
    </div>
  </div>
  <div class="row" align="center">
    <div class="col-md-6 col-sm-6 col-xs-12" style="margin-bottom: 10px;">
      <button type="button" class="btn btn-block btn-danger btn-md round" data-dismiss="modal">
        <i class="fa fa-close"></i> Batalkan
      </button>
    </div>
    <div class="col-md-6 col-sm-6 col-xs-12" style="margin-bottom: 10px;"> 
      <button type="submit" class="btn btn-send btn-block btn-primary btn-md round">
        <i class="fa fa-send"></i> Kirim
      </button>
    </div>
  </div>
</form>
<script type="text/javascript">
  $(function () {

    var harga = 0
    var unit = 0

    $('#total_proyek').val('Total Harga');

    $('#unit_proyek').keyup(function(){
      if($('#unit_proyek').val() >= <?= $sisa_unit?> ){
        $('#unit_proyek').val(<?= $sisa_unit ?>);
        var hrg = '<?= $tbl_project['harga'] ?>'
        var harga = parseFloat(hrg.replace(/,/g, ''));
        var unit = $('#unit_proyek').val();
        $('#total_proyek').val(formatNumber(harga*unit));    
      }else{
        var hrg = '<?= $tbl_project['harga'] ?>'
        var harga = parseFloat(hrg.replace(/,/g, ''));
        var unit = $('#unit_proyek').val();
        $('#total_proyek').val(formatNumber(harga*unit));        
      }
    })
  });

  $("#invest-upload").submit(function(){
    var form = $(this);
    var mydata = new FormData(this);
    $.ajax({
      type: "POST",
      url: form.attr("action"),
      data: mydata,
      cache: false,
      contentType: false,
      processData: false,
      beforeSend : function(){
        $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
        form.find(".invest_error").slideUp().html("");
      },

      success: function(response, textStatus, xhr) {
        var str = response;
        if (str.indexOf("success") != -1){
          form.find(".invest_error").hide().html(response).slideDown("fast");
          setTimeout(function(){

          }, 1000);

          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
        }else{
          form.find(".invest_error").hide().html(response).slideDown("fast");
          $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
        }
      },
      error: function(xhr, textStatus, errorThrown) {
        console.log(xhr);
        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
        form.find(".invest_error").hide().html(xhr).slideDown("fast");
      }
    });
    return false;
  });

</script>
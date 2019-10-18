<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"
src="https://app.sandbox.midtrans.com/snap/snap.js"
data-client-key="SB-Mid-client-BwKVZAEn_uaPXdIe"></script>
<form id="payment-form" method="post" action="<?=site_url()?>/snap/finish">
  <input type="hidden" name="result_type" id="result-type" value=""></div>
  <input type="hidden" name="result_data" id="result-data" value=""></div>
</form>
<div class="content-wrapper">
  <div class="container">
    <section class="content">
      <div class="row" align="center">
        <h1><i class="fa fa-credit-card"></i> Invoice </h1>
        <small>Selesaikan Pembayaran Anda ! </small>
      </div>
      <br>
      <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 15px"> 
          <div class="row">
            <div class="col-md-12">
              <div class="box box-solid round">
                <div class="box-header with-border">
                  <h3 class="box-title pull-left">Sisa Waktu</h3> 
                  <h3 class="box-title pull-right">
                    <?php if($invoice['statusTransaksi'] == "APPROVE") { ?>
                      <span type="button" class="btn-primary btn-sm round">
                        <i class="fa fa-check"></i> Di Terima
                      </span>
                    <?php }else if($invoice['statusTransaksi'] == "REJECT") { ?>
                      <span type="button" class="btn-danger btn-sm round">
                        <i class="fa fa-check"></i> Sudah Tidak ada
                      </span>
                    <?php }else { ?>
                      <span type="button" class="btn-success btn-sm round">
                        <i class="fa fa-check"></i> Masih Ada
                      </span>
                    <?php } ?>
                  </h3>
                </div>
                <div class="box-body" align="center">
                  <?php if($invoice['statusTransaksi'] == "APPROVE") { ?>
                    <h1><b>DITERIMA</b></h1>
                  <?php }else if($invoice['statusTransaksi'] == "REJECT") { ?>
                    <h1><b>DITOLAK</b></h1>
                  <?php }else { ?>
                    <h1><b id="countDownKadarluasa">00 : 00 : 00</b></h1>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="box box-solid round">
                <div class="box-header with-border">
                  <h3 class="box-title pull-left">Total Harga</h3>
                </div>
                <div class="box-body" align="center">
                  <h1><b>Rp <?= number_format($invoice['totalTransaksi'],0,',','.'); ?>,-</b></h1>
                </div>
              </div>
            </div>
          </div>
          <a href="#" target="_blank"> 
            <button  type="button" class="btn btn-success btn-block btn-lg round">
              <i class="fa fa-whatsapp"></i> Konfirmasi Lewat WA
            </button>
          </a>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top: 15px">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-solid round">
                <div class="box-header with-border">
                  <h3 class="box-title pull-left">Rincian Invoice</h3>
                  <h3 class="box-title pull-right">
                    <span id="cetak" type="button" class="btn-primary btn-sm round">
                      <i class="fa fa-print"></i> Cetak Invoice
                    </span>
                  </h3>
                </div>
                <div class="box-body">
                  <table class="table table-bordered">
                    <tr>
                      <th>Kode Invoice</th>
                      <td><b><?= $kode ?></b></td>
                    </tr>
                    <tr>
                      <th>Nama Pembeli</th>
                      <td><?= $user['name'] ?></td>
                    </tr>
                    <tr>
                      <th>Email Pembeli</th>
                      <td><?= $user['email'] ?></td>
                    </tr>
                    <tr>
                      <th>No Telpon Pembeli</th>
                      <td><?= $user['phone'] ?></td>
                    </tr>
                    <tr>
                      <th>Tanggal Mengajukan Pembayaran</th>
                      <td><?=date('Y-m-d H:i:s', strtotime($invoice['transaksiDibuat']))?></td>
                    </tr>
                    <tr>
                      <th>Tanggal Kadarluasa</th>
                      <td><?=date('Y-m-d H:i:s', strtotime($invoice['transaksiEXP']))?></td>
                    </tr>
                    <tr>
                      <th>Total Produk Dibeli</th>
                      <td><b><?= $invoice['totalBeliProduk']; ?></b></td>
                    </tr>
                    <tr>
                      <th>Total Jumlah Barang</th>
                      <td><b><?= $invoice['jumlahBarang']; ?></b></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 15px"> 
          <div class="row">
            <div class="col-md-12">
              <div class="box box-solid round">
                <div class="box-header with-border">
                  <h3 class="box-title pull-left">Detail Pengirim</h3> 
                </div>
                <div class="box-body">
                  <div class="form-group">
                    <label>Nama Pengirim</label>
                    <input type="text" class="form-control" value="<?= $invoice['nama_pengirim'] ?>" readonly>
                  </div>
                  <div class="form-group">
                    <label>Nomor Pengirim</label>
                    <input type="text" class="form-control" value="<?= $invoice['noHubungi'] ?>" readonly>
                  </div>
                  <div class="form-group">
                    <label>Alamat Pengirim</label>
                    <textarea class="form-control" rows="5px" readonly><?= $invoice['alamatKirim'] ?></textarea>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-9 col-sm-9 col-xs-12" style="margin-top: 15px">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-solid round">
                <div class="box-header with-border">
                  <h3 class="box-title pull-left">Detail Produk</h3> 
                </div>
                <div class="box-body">
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Produk</th>
                          <th></th>
                          <th>Qty</th>
                          <th>Harga Produk</th>
                          <th>Total harga</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php 
                        $i = 0;
                        foreach ($invoice_produk as $row) {
                          $photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idProduk'], 'table' => 'm_produk'));
                          $produk = $this->mymodel->selectDataone('m_produk', array('idProduk' => $row['idProduk']));
                          $kategori = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $produk['idKategori']));
                          $desk = strlen($produk["deskProduk"]) > 50 ? substr($produk["deskProduk"], 0, 50) . "..." : $produk["deskProduk"];
                          $rowStock = $this->mymodel->selectWithQuery("SELECT count(idStok) as rowstock from produk_stok WHERE idProduk = " . $row['idProduk'] . " AND statusStok = 'TERSEDIA' AND status = 'ENABLE'");
                          ?>
                          <tr>
                            <td align="center">
                              <img src="<?= $photo['url'] ?>" alt="" width="100px" height="100px" class="img-fluid rounded shadow-sm">
                              <input type="hidden" name="dtd[<?= $i ?>][id]" value="<?= $row['id'] ?>">
                            </td>
                            <td>
                              <h4><a href="<?=base_url('produk?name=').$produk['namaProduk']?>" target="_blank"><?= $produk['namaProduk'] ?></a></h4>
                              <span class="text-muted font-weight-normal font-italic d-block">Kategori: <?= $kategori['namaKategori'] ?>
                              <br><small><?= $desk ?></small>
                            </span>
                          </td>
                          <td align="center">
                            <b><?= $row['jumlahProduk'] ?></b>
                          </td>
                          <td>
                            <b>
                              Rp <?= number_format($produk['hargajProduk'], 0, ',', '.') ?>
                            </b>
                          </td>
                          <td>
                            <b id="totalharga-<?= $row['id'] ?>">
                              Rp <?= number_format($row['totalHarga'], 0, ',', '.') ?>
                            </b>
                          </td>
                        </tr>
                        <?php $i++; } ?>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td align="right" colspan="2">Produk</td>
                          <td align="center"><b><?=  $invoice['jumlahBarang']?></b></th>
                            <td align="right">Subtotal</td>
                            <td align="center"><b>Rp <?= number_format($invoice['totalTransaksi'], 0, ',', '.') ?></b></th>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12" style="margin-top: 15px">
              <div class="row">
                <div class="col-md-12">
                  <div class="box box-solid round">
                    <div class="box-header with-border">
                      <h3 class="box-title pull-left">Tambahan Catatan</h3> 
                    </div>
                    <div class="box-body">
                      <p><?= $invoice['catatan'] ?></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top: 15px">
              <button type="button" class="btn btn-block btn-primary btn-lg round" align="center">
                <i class="fa fa-credit-card"></i> Bayar Sekarang
              </button>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top: 15px">
              <a  href="https://api.whatsapp.com/send?phone=6281995020895?>&text=Halo Admin AGNOV. Perkenalkan Saya <?=$investor['name']?>. Saya ingin melakukan konfirmasi pembayaran donasi dengan link <?=base_url()?>invoice/payment/<?=$invoice['code']?>. Berikut saya sertakan bukti pembayarannya. Terimakasih..." target="_blank"> 
                <button  type="button" class="btn btn-success btn-block btn-lg round">
                  <i class="fa fa-whatsapp"></i> Konfirmasi Lewat WA
                </button>
              </a>
            </div>
          </div>
        </section>
      </div>
    </div>


    <script type="text/javascript">

      $('#pay-button').click(function (event) {
        event.preventDefault();
        $(this).attr("disabled", "disabled");

        $.ajax({
          url: '<?=base_url()?>Snap/token?code=<?=$this->uri->segment(2)?>',
          cache: false,

          success: function(data) {
      //location = data;

      console.log('token = '+data);
      
      var resultType = document.getElementById('result-type');
      var resultData = document.getElementById('result-data');

      function changeResult(type,data){
        $("#result-type").val(type);
        $("#result-data").val(JSON.stringify(data));
      }

      snap.pay(data, {

        onSuccess: function(result){
          changeResult('success', result);
          console.log(result.status_message);
          console.log(result);
          $("#payment-form").submit();
        },
        onPending: function(result){
          changeResult('pending', result);
          console.log(result.status_message);
          $("#payment-form").submit();
        },
        onError: function(result){
          changeResult('error', result);
          console.log(result.status_message);
          $("#payment-form").submit();
        }
      });
    }
  });
      });

    </script>

    <script>
  // Set the date we're counting down to
  var countDownDate = new Date("<?=$invoice['transaksiEXP']?>").getTime();
  //alert(countDownDate);2018-09-07 16:29:17
  //alert("2018-09-07 16:29:17");
  // Update the count down every 1 second
  var x = setInterval(function () {

    // Get todays date and time
    var now = new Date().getTime();

    // Find the distance between now an the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Output the result in an element with id="demo"
    document.getElementById("countDownKadarluasa").innerHTML = hours + " : " +minutes + " : " + seconds;

    // If the count down is over, write some text
    if (distance < 0) {
      clearInterval(x);
      document.getElementById("countDownKadarluasa").innerHTML = "Kadaluarsa";
    }
  }, 1000);
</script>

<script>
  $('#cetak').click(function(){
   window.print();
 });
</script>
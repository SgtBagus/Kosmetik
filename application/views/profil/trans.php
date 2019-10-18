<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">        
                <div class="box box-solid round" >
                    <div class="box-body">
                        <div class="row" align="center">
                            <h3><b>Data Transaksi</b></h3>
                        </div>
                        <table id="datatable" class="table table-bordered table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Code</th>
                                    <th>Total Beli Produk</th>
                                    <th>Jumlah Qty Barang</th>
                                    <th>Nama Pengirim</th>
                                    <th>Alamat Dikirim</th>
                                    <th>Nomor Pengirim</th>
                                    <th>Status Transaksi</th>
                                    <th>Dibuat Pada</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php  
                                $i = 1; 
                                foreach ($trans as $row) {
                                    ?>
                                    <tr>
                                        <td><?= $i ?></td>
                                        <td><b><?= $row['kodeTransaksi'] ?></b></td>
                                        <td><?= $row['totalBeliProduk'] ?></td>
                                        <td><?= $row['jumlahBarang'] ?></td>
                                        <td><?= $row['nama_pengirim'] ?></td>
                                        <td><?= $row['alamatKirim'] ?></td>
                                        <td><?= $row['noHubungi'] ?></td>
                                        <td>
                                            <?php if($row['statusTransaksi'] == "APPROVE") {
                                                echo '<small class="label bg-green"><i class="fa fa-check"> </i> Di Terima </small>';

                                            }else if($row['statusTransaksi'] == "REJECT") { 
                                                echo '<small class="label bg-red"><i class="fa fa-ban"> </i> Di Tolak </small>';

                                            }else if($row['statusTransaksi'] == "EXPIRED") {
                                                echo '<small class="label bg-red"><i class="fa fa-ban"> </i> Kadarluasa</small>';

                                            }else if($row['statusTransaksi'] == "WAITING_PAYMENT") {
                                                echo '<small class="label bg-yellow"><i class="fa fa-warning"> </i> Menunggu Pembayaran </small>';
                                            }
                                            ?>
                                        </td>
                                        <td><?= $row['transaksiDibuat'] ?></td>
                                        <td>
                                            <a target="_blank" href="<?= base_url('invoice/payment/').$row['kodeTransaksi']?>" target="_blank">
                                                <button class="btn btn-primary btn-xs">
                                                    <i class="fa fa-print"></i>
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    <?php $i++; } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
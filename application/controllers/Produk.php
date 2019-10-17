<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Produk extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page'] = 'Produk';
		$data['produk'] = $this->db->order_by('idProduk', 'DESC')->get_where('m_produk', array('status' => 'ENABLE'))->result_array();
		$this->template->load('template/template', 'produk/index', $data);
	}

	public function view($id)
	{
		$data['produk'] = $this->mymodel->selectDataone('m_produk', array('idProduk' => $id));
		$data['kategori'] = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $data['produk']['idKategori']));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_produk'));
		$data['rowStock'] = $this->mymodel->selectWithQuery("SELECT count(idStok) as rowstock from produk_stok WHERE idProduk = ".$id." AND statusStok = 'TERSEDIA' AND status = 'ENABLE'");
		
		$data['totalkeranjang'] = $this->mymodel->selectDataone('transaksi_produk', array('idUser' => $this->session->userdata('id'), 'idProduk' => $id, 'statusTransaksi' => 'KERANJANG'));

		$data['page_name'] = "Kategori";
		$this->load->view('modals/produk', $data);
	}


	public function fetch()
	{
		$output = '';

		$name = $_GET['name'];
		$kategori = $_GET['kategori'];
		if ($name && $kategori) {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE'  AND LOWER(namaProduk) like LOWER('%" . $name . "%') AND idKategori = " . $kategori . " ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		} else if ($name) {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE' AND LOWER(namaProduk) like LOWER('%" . $name . "%') ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		} else if ($kategori) {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE' AND idKategori = " . $kategori . " ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		} else {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE' ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		}

		if ($produk) {
			foreach ($produk as $row) {
				$photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idProduk'], 'table' => 'm_produk'));
				$kategori = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $row['idKategori']));
				$title = strlen($row["namaProduk"]) > 25 ? substr($row["namaProduk"], 0, 25) . "..." : $row["namaProduk"];
				$rowStock = $this->mymodel->selectWithQuery("SELECT count(idStok) as rowstock from produk_stok WHERE idProduk = ".$row['idProduk']." AND statusStok = 'TERSEDIA' AND status = 'ENABLE'");
				$output .= '<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="box box-solid round" onclick="view('.$row['idProduk'].')">
              	<div class="box-header" align="center">
                <img class="lazy" src="' . $photo['url'] . '" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
              	</div>
              	<div class="box-body" align="center">
                <h4 style="margin-top:0px">
                  <b>' . $title . '
                  </b><br>
                  <small>' . $kategori['namaKategori'] . '</small>
                </h4>
                Sisa Stock : <b>'.$rowStock[0]['rowstock'].'</b>
                <br>
                Harga : <b> Rp. ' . number_format($row['hargajProduk'], 0, ',', '.') . ',- </b>
              	</div>
            	</div>
          		</div>';
			}
		}
		echo $output;
	}

	public function addCrat($id){
		$idCreator = $this->session->userdata('id');
		$produk = $this->mymodel->selectDataone('m_produk', array('idProduk' => $id));

		$transaksi_produk = $this->mymodel->selectDataone('transaksi_produk', array('idUser' => $idCreator, 'idProduk' => $id, 'statusTransaksi' => 'KERANJANG'));
		if($transaksi_produk){
			$dt['jumlahProduk'] = $transaksi_produk['jumlahProduk'] + 1;
			$dt['totalHarga'] = $produk['hargajProduk'] * ($transaksi_produk['jumlahProduk'] + 1);
			$dt['updated_at'] = date('Y-m-d H:i:s');
			$this->mymodel->updateData('transaksi_produk', $dt, array('id' => $transaksi_produk['id']));
		}else{
			$dt['idUser'] = $idCreator;
			$dt['idProduk'] = $id;
			$dt['jumlahProduk'] = 1;
			$dt['hargaProduk'] = $produk['hargajProduk'];
			$dt['totalHarga'] = $produk['hargajProduk'];
			$dt['statusTransaksi'] = 'KERANJANG';
			$dt['status'] = 'ENABLE';
			$dt['created_at'] = date('Y-m-d H:i:s');
			$this->db->insert('transaksi_produk', $dt);
		}
		
		$this->alert->alertsuccess('Berhasil Ditambahkan Di Keranjang!');
	}
}

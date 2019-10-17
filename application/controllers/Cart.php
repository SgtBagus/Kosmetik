<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Cart extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page'] = 'Home';

		$data['transaksi_produk'] = $this->mymodel->selectWhere('transaksi_produk', array('idUser' => $this->session->userdata('id'), 'statusTransaksi' => 'KERANJANG'));

		$this->template->load('template/template', 'cart/index', $data);
	}

	public function delete($id)
	{
		$this->mymodel->deleteData('transaksi_produk',  array('id' => $id));
		redirect(base_url('cart'));
	}


	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[nama_pengirim]', '<strong>Nama Pengirim</strong> Mohon Disini!', 'required');
		$this->form_validation->set_rules('dt[noHubungi]', '<strong>Nomor yang dapat Dihubungi</strong> Mohon Disini!', 'required');
		$this->form_validation->set_rules('dt[alamatKirim]', '<strong>Alamat Lengkap</strong> Mohon Disini!', 'required');
		$this->form_validation->set_message('required', '%s');
	}


	public function checkout()
	{
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			$res = "";
			for (;;) {
				for ($i = 0; $i < 10; $i++) {
					$res .= $chars[mt_rand(0, strlen($chars) - 1)];
				}

				$query = $this->db->query("SELECT * FROM transaksi WHERE kodeTransaksi='$res'")->result();
				if (count($query) == 0) {
					break;
				} else { }
			}
			$kode = 'STO-' . $res;

			$detailcount = count($_POST['dtd']);
			for ($row = 0; $row < $detailcount; $row++) {
				$dtd['kodeKeranjang'] = $kode;
				$dtd['jumlahProduk'] = $_POST['dtd'][$row]['jumlahProduk'];
				$dtd['totalHarga'] = $_POST['dtd'][$row]['totalHarga'];
				$dtd['statusTransaksi'] = 'WAITING_PAYMENT';
				$dtd['updated_at'] = date('Y-m-d H:i:s');
				$this->mymodel->updateData('transaksi_produk', $dtd, array('id' => $_POST['dtd'][$row]['id']));
			}

			$totalTransaksi = $this->mymodel->selectWithQuery("SELECT SUM(totalHarga) as totalTransaksi from transaksi_produk WHERE kodeKeranjang = '".$kode."'");
			$totalBeliProduk = $this->mymodel->selectWithQuery("SELECT COUNT(id) as totalBeliProduk from transaksi_produk WHERE kodeKeranjang = '".$kode."'");
			$jumlahBarang = $this->mymodel->selectWithQuery("SELECT SUM(jumlahProduk) as jumlahBarang from transaksi_produk WHERE kodeKeranjang = '".$kode."'");

			$dt['idUser'] = $this->session->userdata('id');
			$dt['kodeTransaksi'] = $kode;
			$dt['totalTransaksi'] = $totalTransaksi[0]['totalTransaksi'];
			$dt['totalBeliProduk'] = $totalBeliProduk[0]['totalBeliProduk'];
			$dt['jumlahBarang'] = $jumlahBarang[0]['jumlahBarang'];
			$dt['alamatKirim'] = $_POST['dt']['alamatKirim'];
			$dt['nama_pengirim'] = $_POST['dt']['nama_pengirim'];
			$dt['noHubungi'] = $_POST['dt']['noHubungi'];
			$dt['statusTransaksi'] = 'WAITING_PAYMENT';
			$dt['status'] = 'ENABLE';
			$dt['created_at'] = date('Y-m-d H:i:s');
			$this->db->insert('transaksi', $dt);

			$this->alert->alertsuccess('Permintaan pembelian Telah Dikirim dan menunggu untuk melakukan Pembayaran <br> Cek Proses Pembelian di <a href="'.base_url('profil/buys').'"> Profil</a>');
			echo '<script type="text/javascript" language="Javascript">window.open("'.base_url('invoice/payment/').$dt['code'].'");</script>';
		}
	}
}

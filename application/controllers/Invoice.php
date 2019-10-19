<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Invoice extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function payment($kode){
		$data['kode'] = $kode;
		$data['invoice'] = $this->mymodel->selectDataone('transaksi', array('kodeTransaksi' => $kode));
		if($data['invoice']['transaksiEXP'] <= date("Y-m-d H:i:s")){
			$dt['statusTransaksi'] = 'EXPIRED';
			$this->mymodel->updateData('transaksi', $dt, array('idTransaksi' => $data['invoice']['idTransaksi']));
		}
		$data['invoice_produk'] = $this->mymodel->selectWhere('transaksi_produk', array('kodeKeranjang' => $kode));
		$data['user'] = $this->mymodel->selectDataone('tbl_user', array('id' => $data['invoice']['idUser']));
        $data['file_tranksaksi'] = $this->mymodel->selectDataone('file', array('table' => 'bukti_pembayaran', 'table_id' => $data['invoice']['idTransaksi']));
		$data['page_name'] = "Invoice";
		if($data['invoice']){
			$this->template->load('invoice/template','invoice/index', $data);
		}else{
			$this->load->view('errors/html/error_404');
			return false;
		}
	}
}
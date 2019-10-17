<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Cart extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data['page'] = 'Home'; 

		$data['transaksi_produk'] = $this->mymodel->selectWhere('transaksi_produk', array('idUser' => $this->session->userdata('id'), 'statusTransaksi' => 'KERANJANG'));

		$this->template->load('template/template','cart/index', $data); 
	}
	
	public function delete($id){
        $this->mymodel->deleteData('transaksi_produk',  array('id' => $id));
        redirect(base_url('cart'));
	}
}
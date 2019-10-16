<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Produk extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data['page'] = 'Produk';
        $this->template->load('template/template','produk/index', $data); 
	}
	
	public function view($id){
        $data['produk'] = $this->mymodel->selectDataone('m_produk', array('idProduk' => $id));
        $data['kategori'] = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $data['produk']['idKategori']));
        $data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_produk'));
        $data['page_name'] = "Kategori";
        $this->load->view('modals/produk', $data);
	}
}
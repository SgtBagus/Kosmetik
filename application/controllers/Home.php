<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data['page'] = 'Home'; 
		$data['kategori'] = $this->db->limit(4)->order_by('idKategori', 'DESC')->get_where('m_kategori', array('status' => 'ENABLE'))->result_array();
		$data['produk'] = $this->db->limit(4)->order_by('idProduk', 'DESC')->get_where('m_produk', array('status' => 'ENABLE'))->result_array();
		$this->template->load('template/template','index', $data); 
	}
	
}
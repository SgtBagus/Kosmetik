<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Kategori extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data['page'] = 'Kategori';
		$data['kategori'] = $this->db->order_by('idKategori', 'DESC')->get_where('m_kategori', array('status' => 'ENABLE'))->result_array();
        $this->template->load('template/template','kategori/index', $data); 
    }
    
}
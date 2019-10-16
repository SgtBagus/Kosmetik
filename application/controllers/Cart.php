<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Cart extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data['page'] = 'Home'; 
		$this->template->load('template/template','cart/index', $data); 
	}
	
}
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Item extends MY_Controller {
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$data['page'] = 'Item';
        $this->template->load('template/template','item/index', $data); 
	}
	
}
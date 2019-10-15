<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Stock extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page_name'] = "Stock";
		$this->template->load('admin/template/template', 'admin/stock/all-produk_stok', $data);
	}

	public function create()
	{
		$this->load->view('admin/stock/add-produk_stok');
	}

	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[idCreator]', '<strong>IdCreator</strong>', 'required');
		$this->form_validation->set_rules('dt[idProduk]', '<strong>IdProduk</strong>', 'required');
		$this->form_validation->set_rules('dt[kodeBarang]', '<strong>KodeBarang</strong>', 'required');
		$this->form_validation->set_rules('dt[statusStok]', '<strong>StatusStok</strong>', 'required');
	}

	public function store()
	{
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt = $_POST['dt'];
			$dt['created_at'] = date('Y-m-d H:i:s');
			$dt['status'] = "ENABLE";
			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function json()
	{
		$status = $_GET['status'];
		if ($status == '') {
			$status = 'ENABLE';
		}
		header('Content-Type: application/json');
		$this->datatables->select('idStok,idCreator,idProduk,kodeBarang,statusStok,status');
		$this->datatables->where('status', $status);
		$this->datatables->from('produk_stok');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'idStok');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'idStok');
		}
		echo $this->datatables->generate();
	}

	public function edit($id)
	{
		$data['produk_stok'] = $this->mymodel->selectDataone('produk_stok', array('idStok' => $id));
		$data['page_name'] = "produk_stok";
		$this->load->view('admin/stock/edit-produk_stok', $data);
	}
	public function update()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$id = $this->input->post('idStok', TRUE);
			$dt = $_POST['dt'];
			$dt['updated_at'] = date("Y-m-d H:i:s");
			$this->mymodel->updateData('produk_stok', $dt, array('idStok' => $id));
			$this->alert->alertsuccess('Success Update Data');
		}
	}

	public function delete()
	{
		$id = $this->input->post('idStok', TRUE);
		$this->mymodel->deleteData('produk_stok',  array('idStok' => $id));
		$this->alert->alertdanger('Success Delete Data');
	}

	public function status($id, $status)
	{

		$this->mymodel->updateData('produk_stok', array('status' => $status), array('idStok' => $id));
        redirect(base_url('admin/stock'));
	}
}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */

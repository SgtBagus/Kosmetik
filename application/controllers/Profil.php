<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Profil extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['user'] = $this->mymodel->selectDataOne('tbl_user',  array('id' => $this->session->userdata('id')));
		$data['file'] = $this->mymodel->selectDataOne('file',  array('table_id' => $this->session->userdata('id'), 'table' => 'tbl_user'));

		$data['title'] = "Profil";
		$data['content'] = "profil";
		$this->template->load('template/template', 'profil/index', $data);
	}

	public function account()
	{
		$data['user'] = $this->mymodel->selectDataOne('tbl_user',  array('id' => $this->session->userdata('id')));
		$data['file'] = $this->mymodel->selectDataOne('file',  array('table_id' => $data['user']['id'], 'table' => 'tbl_user'));

		$data['title'] = "Akun Saya";
		$data['content'] = "account";
		$this->template->load('template/template', 'profil/index', $data);
	}

	public function alamat()
	{
		$data['title'] = "Alamat";
		$data['content'] = "address";
		$this->template->load('template/template', 'profil/index', $data);
	}


	public function vali_akun()
	{

		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[name]', '<strong>Nama Lengkap</strong> Tidak Boleh Kosong', 'required');
		$this->form_validation->set_rules('dt[phone]', '<strong>No Hp</strong> Tidak Boleh Kosong', 'required');
		$this->form_validation->set_message('required', '%s');
	}

	public function editaccount()
	{
		$this->vali_akun();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$id = $this->session->userdata('id');
			$dt = $_POST['dt'];
			$dt['updated_at'] = date("Y-m-d H:i:s");
			$this->mymodel->updateData('tbl_user', $dt, array('id' => $id));

			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function editpassword()
	{
		$id = $this->session->userdata('id');
		$newPassword = md5($_POST['newPassword']);
		$action = $_POST['action'];

		if ($_POST['newPassword'] != $_POST['confPassword']) {
			$this->alert->alertdanger('<strong>Password Baru</strong> & <strong>Konfirmasi Password</strong> harus Sama !');
			return FALSE;
		} else {
			if ($action == 'change') {
				$password = $this->mymodel->selectDataOne('tbl_user', array('id' => $id));
				$lastPassword = md5($_POST['lastPassword']);
				if ($lastPassword != $password['password']) {
					$this->alert->alertdanger('Masukan <strong>Password Lama</strong> anda dengan benar');
					return FALSE;
				} else {
					$dt['password'] = $newPassword;
					$this->mymodel->updateData('tbl_user', $dt, array('id' => $id));
				}
			} else {
				$dt['password'] = $newPassword;
				$this->mymodel->updateData('tbl_user', $dt, array('id' => $id));
			}
		}
		$this->alert->alertsuccess('Success Send Data');
	}


	public function editphoto()
	{
		$id = $this->session->userdata('id');
		if (!empty($_FILES['file']['name'])) {
			$dir  = "webfile/user/";
			$config['upload_path']          = $dir;
			$config['allowed_types']        = '*';
			$config['file_name']           = md5('smartsoftstudio') . rand(1000, 100000);
			$this->load->library('upload', $config);
			if (!$this->upload->do_upload('file')) {
				$error = $this->upload->display_errors();
				$this->alert->alertdanger($error);
			} else {
				$file = $this->upload->data();

				$data = array(
					'name' => $file['file_name'],
					'mime' => $file['file_type'],
					'dir' => $dir . $file['file_name'],
					'url' => base.url().$dir.$file['file_name'],
					'table' => 'tbl_user',
					'table_id' => $id,
					'updated_at' => date('Y-m-d H:i:s')
				);

				$file_dir = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'tbl_user'));
				if ($file_dir['name'] == 'default.png') {
					$this->mymodel->updateData('file', $data, array('table_id' => $id, 'table' => 'tbl_user'));
				} else {
					@unlink($file_dir['dir']);
					$this->mymodel->updateData('file', $data, array('table_id' => $id, 'table' => 'tbl_user'));
				}
			}
		}
		$this->alert->alertsuccess('Success Send Data');
	}

}

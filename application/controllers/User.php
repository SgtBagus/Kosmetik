<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class User extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function password()
	{
		$data['page_name'] = "password";
		$this->template->load('template/template', 'user/password', $data);
	}

	public function register()
	{
		$data['page_name'] = "register";
		$this->template->load('template/template', 'user/register', $data);
	}


	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[name]', '<strong>Name</strong> Tidak Boleh Kosong', 'required');
		$this->form_validation->set_rules('dt[email]', '<strong>Email</strong> Tidak Boleh Kosong', 'required');
		$this->form_validation->set_rules('password', '<strong>Password</strong> Tidak Boleh Kosong', 'required');
		$this->form_validation->set_rules('passwordKonfrim', '<strong>Konfirmasi Password</strong> Tidak Boleh Kosong', 'required');
		$this->form_validation->set_rules('dt[phone]', '<strong>No Hp</strong> Tidak Boleh Kosong', 'required');

		$this->form_validation->set_message('required', '%s');
	}

	public function register_proses()
	{
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$email_query = $this->mymodel->selectWhere('tbl_user', array('email' => $_POST['dt']['email']));
			if ($email_query != null) {
				$this->alert->alertdanger('<strong>Email</strong> tersebut sudah Terdaftar');
				return false;
			} else if ($_POST['password'] != $_POST['passwordKonfrim']) {
				$this->alert->alertdanger('<strong>Password</strong> & <strong> Konfirmasi Password </strong> tidak sama !');
				return false;
			} else {
				$dt = $_POST['dt'];
				$dt['password'] = md5($_POST['password']);
				$dt['status'] = "ENABLE";
				$dt['created_at'] = date('Y-m-d H:i:s');
				$this->db->insert('tbl_user', $dt);

				$file['name'] = 'default.png';
				$file['mime'] = 'image/png';
				$file['dir'] = 'webfile/user/default.png';
				$file['url'] = base_url().'webfile/user/default.png';
				$file['table'] = 'tbl_user';
				$file['table_id'] = $this->db->insert_id();
				$file['status'] = 'ENABLE';
				$file['created_at'] = date('Y-m-d H:i:s');
				
				$this->db->insert('file', $file);

				$session     = $this->mlogin->login($_POST['dt']['email'], md5($_POST['password']));

				$this->session->set_userdata('session_sop', true);
				$this->session->set_userdata('id', $session['id']);
				$this->session->set_userdata('email', $session['email']);
				$this->session->set_userdata('name', $session['name']);
				$this->session->set_userdata('role', 'Investor');

				$this->alert->alertsuccess('Akun Berhasil Terdaftar anda akan di arahkan ke halaman utama');

			}
		}
	}
}

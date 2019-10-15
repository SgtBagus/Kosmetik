<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Kategori extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['page_name'] = "Kategori";
        $this->template->load('admin/template/template', 'admin/kategori/all-m_kategori', $data);
    }

    public function create()
    {
        $this->load->view('admin/kategori/add-m_kategori');
    }

    public function validate()
    {
        $this->form_validation->set_error_delimiters('<li>', '</li>');
        $this->form_validation->set_rules('dt[namaKategori]', '<strong>NamaKategori</strong>', 'required');
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
            $str = $this->db->insert('m_kategori', $dt);
            $last_id = $this->db->insert_id();
            if (!empty($_FILES['file']['name'])) {
                $dir  = "webfile/kategori/";
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
                        'id' => '',
                        'name' => $file['file_name'],
                        'mime' => $file['file_type'],
                        'dir' => $dir . $file['file_name'],
                        'table' => 'm_kategori',
                        'table_id' => $last_id,
                        'status' => 'ENABLE',
                        'created_at' => date('Y-m-d H:i:s')
                    );
                    $str = $this->db->insert('file', $data);
                    $this->alert->alertsuccess('Success Send Data');
                }
            } else {
                $data = array(
                    'id' => '',
                    'name' => '',
                    'mime' => '',
                    'dir' => '',
                    'table' => 'm_kategori',
                    'table_id' => $last_id,
                    'status' => 'ENABLE',
                    'created_at' => date('Y-m-d H:i:s')
                );
                $str = $this->db->insert('file', $data);
                $this->alert->alertsuccess('Success Send Data');
            }
        }
    }

    public function json()
    {
        $status = $_GET['status'];
        if ($status == '') {
            $status = 'ENABLE';
        }
        header('Content-Type: application/json');
        $this->datatables->select('idKategori,namaKategori,status');
        $this->datatables->where('status', $status);
        $this->datatables->from('m_kategori');
        if ($status == "ENABLE") {
            $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'idKategori');
        } else {
            $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'idKategori');
        }

        echo $this->datatables->generate();
    }

    public function edit($id)
    {
        $data['m_kategori'] = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $id));
        $data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_kategori'));
        $data['page_name'] = "m_kategori";
        $this->load->view('admin/kategori/edit-m_kategori', $data);
    }

    public function update()
    {
        $this->form_validation->set_error_delimiters('<li>', '</li>');
        $this->validate();
        if ($this->form_validation->run() == FALSE) {
            $this->alert->alertdanger(validation_errors());
        } else {
            $id = $this->input->post('idKategori', TRUE);
            if (!empty($_FILES['file']['name'])) {
                $dir  = "webfile/kategori/";
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
                        // 'size'=> $file['file_size'],
                        'dir' => $dir . $file['file_name'],
                        'table' => 'm_kategori',
                        'table_id' => $id,
                        'updated_at' => date('Y-m-d H:i:s')
                    );
                    $file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_kategori'));
                    @unlink($file['dir']);
                    if ($file == "") {
                        $this->mymodel->insertData('file', $data);
                    } else {
                        $this->mymodel->updateData('file', $data, array('id' => $file['id']));
                    }
                    $dt = $_POST['dt'];
                    $dt['updated_at'] = date("Y-m-d H:i:s");
                    $this->mymodel->updateData('m_kategori', $dt, array('idKategori' => $id));
                    $this->alert->alertsuccess('Success Update Data');
                }
            } else {
                $dt = $_POST['dt'];
                $dt['updated_at'] = date("Y-m-d H:i:s");
                $this->mymodel->updateData('m_kategori', $dt, array('idKategori' => $id));
                $this->alert->alertsuccess('Success Update Data');
            }
        }
    }

    public function delete()
    {
        $id = $this->input->post('idKategori', TRUE);
        $file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_kategori'));
        @unlink($file['dir']);
        $this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'm_kategori'));
        $this->mymodel->deleteData('m_kategori',  array('idKategori' => $id));
        $this->alert->alertdanger('Success Delete Data');
    }
    public function status($id, $status)
    {
        $this->mymodel->updateData('m_kategori', array('status' => $status), array('idKategori' => $id));
        redirect(base_url('admin/kategori'));
    }
}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */

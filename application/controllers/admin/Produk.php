<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Produk extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['page_name'] = "Produk";
        $this->template->load('admin/template/template', 'admin/produk/all-m_produk', $data);
    }
    public function create()
    {
        $this->load->view('admin/produk/add-m_produk');
    }

    public function validate()
    {
        $this->form_validation->set_error_delimiters('<li>', '</li>');
        $this->form_validation->set_rules('dt[idCreator]', '<strong>IdCreator</strong>', 'required');
        $this->form_validation->set_rules('dt[namaProduk]', '<strong>NamaProduk</strong>', 'required');
        $this->form_validation->set_rules('dt[hargabProduk]', '<strong>HargabProduk</strong>', 'required');
        $this->form_validation->set_rules('dt[hargajProduk]', '<strong>HargajProduk</strong>', 'required');
        $this->form_validation->set_rules('dt[idKategori]', '<strong>IdKategori</strong>', 'required');
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
            $str = $this->db->insert('m_produk', $dt);
            $last_id = $this->db->insert_id();
            if (!empty($_FILES['file']['name'])) {
                $dir  = "webfile/produk/";
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
                        'table' => 'm_produk',
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
                    'table' => 'm_produk',
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
        $this->datatables->select('idProduk,user.name as idCreator,namaProduk,hargabProduk,hargajProduk,m_kategori.namaKategori as idKategori,m_produk.status');
        $this->datatables->where('m_produk.status', $status);
        $this->datatables->from('m_produk');
        $this->datatables->join('user', 'm_produk.idCreator = user.id', 'left');
        $this->datatables->join('m_kategori', 'm_produk.idKategori = m_kategori.idKategori', 'left');
        if ($status == "ENABLE") {
            $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'idProduk');
        } else {
            $this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'idProduk');
        }
        echo $this->datatables->generate();
    }

    public function edit($id)
    {
        $data['m_produk'] = $this->mymodel->selectDataone('m_produk', array('idProduk' => $id));
        $data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_produk'));
        $data['page_name'] = "m_produk";
        $this->load->view('admin/produk/edit-m_produk', $data);
    }

    public function update()
    {
        $this->form_validation->set_error_delimiters('<li>', '</li>');
        $this->validate();
        if ($this->form_validation->run() == FALSE) {
            $this->alert->alertdanger(validation_errors());
        } else {
            $id = $this->input->post('idProduk', TRUE);
            if (!empty($_FILES['file']['name'])) {
                $dir  = "webfile/produk/";
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
                        'table' => 'm_produk',
                        'table_id' => $id,
                        'updated_at' => date('Y-m-d H:i:s')
                    );
                    $file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_produk'));
                    @unlink($file['dir']);
                    if ($file == "") {
                        $this->mymodel->insertData('file', $data);
                    } else {
                        $this->mymodel->updateData('file', $data, array('id' => $file['id']));
                    }
                    $dt = $_POST['dt'];
                    $dt['updated_at'] = date("Y-m-d H:i:s");
                    $this->mymodel->updateData('m_produk', $dt, array('idProduk' => $id));
                    $this->alert->alertsuccess('Success Update Data');
                }
            } else {
                $dt = $_POST['dt'];
                $dt['updated_at'] = date("Y-m-d H:i:s");
                $this->mymodel->updateData('m_produk', $dt, array('idProduk' => $id));
                $this->alert->alertsuccess('Success Update Data');
            }
        }
    }

    public function delete()
    {
        $id = $this->input->post('idProduk', TRUE);
        $file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_produk'));
        @unlink($file['dir']);
        $this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'm_produk'));
        $this->mymodel->deleteData('m_produk',  array('idProduk' => $id));
        $this->alert->alertdanger('Success Delete Data');
    }

    public function status($id, $status)
    {
        $this->mymodel->updateData('m_produk', array('status' => $status), array('idProduk' => $id));
        redirect(base_url('admin/produk'));
    }
}
/* End of file Home.php */
/* Location: ./application/controllers/Home.php */

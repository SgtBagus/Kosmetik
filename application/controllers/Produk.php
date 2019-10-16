<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Produk extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page'] = 'Produk';
		$data['produk'] = $this->db->order_by('idProduk', 'DESC')->get_where('m_produk', array('status' => 'ENABLE'))->result_array();
		$this->template->load('template/template', 'produk/index', $data);
	}

	public function view($id)
	{
		$data['produk'] = $this->mymodel->selectDataone('m_produk', array('idProduk' => $id));
		$data['kategori'] = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $data['produk']['idKategori']));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'm_produk'));
		$data['page_name'] = "Kategori";
		$this->load->view('modals/produk', $data);
	}


	public function fetch()
	{
		$output = '';

		$name = $_GET['name'];
		$kategori = $_GET['kategori'];

		if ($name) {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE' AND LOWER(namaProduk) like LOWER('%" . $name . "%') ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		} else if ($kategori) {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE' AND idKategori = " . $kategori . " ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		} else if ($name && $kategori) {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE'  AND LOWER(namaProduk) like LOWER('%" . $name . "%') AND idKategori = " . $kategori . " ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		} else {
			$produk = $this->mymodel->selectWithQuery("SELECT * FROM m_produk WHERE status = 'ENABLE' ORDER BY idProduk DESC LIMIT " . $this->input->post('limit') . " OFFSET " . $this->input->post('start'));
		}

		if ($produk) {
			foreach ($produk as $row) {
				$photo = $this->mymodel->selectDataone('file', array('table_id' => $row['idProduk'], 'table' => 'm_produk'));
				$kategori = $this->mymodel->selectDataone('m_kategori', array('idKategori' => $row['idKategori']));

				$desk = strlen($row["namaProduk"]) > 25 ? substr($row["namaProduk"], 0, 25) . "..." : $row["namaProduk"];
				$output .= '<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="box box-solid round" onclick="view('.$row['idProduk'].')">
              	<div class="box-header" align="center">
                <img src="' . $photo['url'] . '" alt="Second slide" style="height: 180px; width: 100%; object-fit: cover; display: inline;">
              	</div>
              	<div class="box-body" align="center">
                <h4 style="margin-top:0px">
                  <b>' . $desk . '
                  </b><br>
                  <small>' . $kategori['namaKategori'] . '</small>
                </h4>
                Sisa Stock : <b>15</b>
                <br>
                Harga : <b> Rp. ' . number_format($row['hargajProduk'], 0, ',', '.') . ',- </b>
              	</div>
            	</div>
          		</div>';
			}
		}
		echo $output;
	}
}

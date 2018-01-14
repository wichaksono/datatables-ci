<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Karyawan extends CI_Controller 
{
    public function __construct()
    {
		parent::__construct();
    }
	
    public function index()
    {
    	$this->load->view('view_karyawan');
    }
	
    function datatables_ajax()
    {
		/** AJAX Handle */
		if( $this->input->is_ajax_request() )  {

			$this->load->model('M_Karyawan');

			/**
			 * Mengambil Parameter dan Perubahan nilai dari setiap 
 			 * aktifitas pada table
 			 *
			 */
			$datatables  = $_POST;
			$datatables['table']    = 'karyawan';
			$datatables['id-table'] = 'id_karyawan';
			
			/**
			 * Kolom yang ditampilkan
			 */
			$datatables['col-display'] = array(
			               'first_name',
			               'last_name',
			               'position_name',
			               'office',
			               'start_date'
			             );
			/**
			* menggunakan table join
			*/
			$datatables['join']    = 'INNER JOIN position ON position = id_position';
			$this->M_Karyawan->Datatables($datatables);
		}
		return;
    }
}

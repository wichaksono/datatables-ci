<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Karyawan extends CI_Controller {
    
    public function index()
    {
    	$this->load->view('view_karyawan');
    }

    function datatables_ajax()
    {
    	/** AJAX Handle */
    	if(
    		isset($_SERVER['HTTP_X_REQUESTED_WITH']) && 
    		!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && 
    		strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'
    		)
    	{
            $this->load->model('M_Karyawan');
    		
    		/**
    		 * Mengambil Parameter dan Perubahan nilai dari setiap 
    		 * aktifitas pada table
    		 */
    		$start  = $this->input->post('start') > 0 
    		          ? $this->input->post('start') 
    		          : 0;

    		$limit  = $this->input->post('length') > 0 
    		          ? $this->input->post('length') 
    		          : 10;

    		$column = isset( $this->input->post('order')[0]['column'] ) 
    		          ? $this->input->post('order')[0]['column'] 
    		          : 0;

    		$order  = isset( $this->input->post('order')[0]['dir'] ) 
    		          ? $this->input->post('order')[0]['dir'] 
    		          : 'asc';

    		$search = $this->input->post('search')['value'] != '' 
    		          ? $this->input->post('search')['value'] 
    		          : '';
    		

	    	$columns = array(
	    		           'first_name',
	    		           'last_name',
	    		           'position',
	    		           'office',
	    		           'start_date'
	    		        );


    		$property = array(
			               'start' => $start,
			               'limit' => $limit,
			               'order' => $order,
			               'search'=> $search,
			               'column_order' =>$column
			            );

	    	$this->M_Karyawan->Datatables('karyawan', $columns, $property);
    	}

    	return;
    }
}

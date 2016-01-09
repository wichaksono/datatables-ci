<?php

class M_Karyawan extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}

	function Datatables($table, $column, $queries = array())
	{
		/**
		 * Nilai default ketika variable $queries tidak di isi
		 * @var array
		 */
		$default = array(
			         'start' => 0,
			         'limit' => 10,
			         'order' => 'asc',
			         'column_order' => 0,
			         'search'=> '',
			         'column_search' => ''
			       );
        
        /**
         * merge nilai saat variable $queries diberi nilai.
         */
        if (count($queries) > 0) {
        	$default = array_merge($default, $queries);
        }
        
        /**
         * Query Data 
         */
        $this->db->select(implode(',', $column));
        $this->db->from($table);

        /**
         * apabila fungsi Search digunakan.
         */
        if ($default['search'] != '') {
        	for($i=0; $i < count($column); $i++) {
        		if ($i == 0) {
        			$this->db->like($column[$i], $default['search']);
        		} else {
        			$this->db->or_like($column[$i], $default['search']);
        		}
        	}
        }
        
        /**
         * fungsi untuk menangani pencarian individual 
         * perkolom.
         * @var array
         */
    	$columns = '';
    	for($i=0; $i < count($column); $i++) {
    		if (isset($this->input->post('columns')[$i]) &&
    			$this->input->post('columns')[$i]['search']['value'] != '') 
    		{
    			$columns = array(
    				          $column[$i],
    				          $this->input->post('columns')[$i]['search']['value']
    				        );
    			break;
    		}

    	}
        
        /**
         * jika pencarian perkolom diaktifkan dan digunakan
         */
    	if ($columns != '') {
    		$this->db->like($columns[0], $columns[1]);
    	}
        
        /**
         * fungsi Sort perkolom
         * $default['column_order'] 
         * @return integer
         */
        $column_order = $column[ $default['column_order'] ];
        
		$this->db->order_by($column_order, $default['order']);

		/**
		 * Fungsi pembatas data yang ingin ditampilkan
		 */
        $this->db->limit($default['limit'], $default['start']);

        $query = $this->db->get();
        
        /**
         * hitung semua data yang ada
         * @var [type]
         */
        $count = $this->db->get($table);
        $recordsTotal = $count->num_rows();

        /**
         * jika fungsi search baik global maupun individ
         * akan dilakukan penghitungan total
         */
        if ($default['search'] != '' || $columns != '') {
        	$recordsTotal = $query->num_rows();
        }

        /**
         * Menyusun data
         */
        $options['draw']    = 0;
		$options['recordsTotal']    = $recordsTotal;
		$options['recordsFiltered'] = $recordsTotal;
		$options['data'] = array();
 
        foreach($query->result() as $row) {
        	$options['data'][] = array(
        		               $row->first_name,
        		               $row->last_name,
        		               $row->position,
        		               $row->office,
        		               $row->start_date
        		               );
        }

        /**
         * convert to json
         */
		echo json_encode($options);

	}
}

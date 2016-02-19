<?php

class M_Karyawan extends CI_Model
{
    
    function __construct()
    {
        parent::__construct();
    }

    function Datatables($dt)
    {
        $columns = implode(', ', $dt['col-display']) . ', ' . $dt['id-table'];

        $join = $dt['join'];

        $sql  = "SELECT {$columns} FROM {$dt['table']} {$join}";


        $data = $this->db->query($sql);

        $rowCount = $data->num_rows();

        $data->free_result();

        // pengkondisian aksi seperti next, search dan limit
        $columnd = $dt['col-display'];
        $count_c = count($columnd);

        // search
        $search = $dt['search']['value'];

        /**
         * Search Global
         * pencarian global pada pojok kanan atas
         */
        $where = '';
        if ($search != '') {   
            for ($i=0; $i < $count_c ; $i++) {
                $where .= $columnd[$i] .' LIKE "%'. $search .'%"';
                
                if ($i < $count_c - 1) {
                    $where .= ' OR ';
                }
            }
        }
        
        /**
         * Search Individual Kolom
         * pencarian dibawah kolom
         */
        for ($i=0; $i < $count_c; $i++) { 
            $searchCol = $dt['columns'][$i]['search']['value'];
            if ($searchCol != '') {
                $where = $columnd[$i] . ' LIKE "%' . $searchCol . '%" ';
                break;
            }
        }

        /**
         * pengecekan Form pencarian
         * pencarian aktif jika ada karakter masuk pada kolom pencarian.
         */
        if ($where != '') {
            $sql .= " WHERE " . $where;
            
        }
        
        // sorting
        $sql .= " ORDER BY {$columnd[$dt['order'][0]['column']]} {$dt['order'][0]['dir']}";
        
        // limit
        $start  = $dt['start'];
        $length = $dt['length'];

        $sql .= " LIMIT {$start}, {$length}";
        
        $list = $this->db->query($sql);

        /**
         * convert to json
         */
        $option['draw']            = $dt['draw'];
        $option['recordsTotal']    = $rowCount;
        $option['recordsFiltered'] = $rowCount;
        $option['data']            = array();

        foreach ($list->result() as $row) {
        /**
         * custom gunakan
         * $option['data'][] = array(
         *                       $row->columnd[0],
         *                       $row->columnd[1],
         *                       $row->columnd[2],
         *                       $row->columnd[3],
         *                       $row->columnd[4],
         *                       .....
         *                     );
         */
           $rows = array();
           for ($i=0; $i < $count_c; $i++) { 
               $rows[] = $row->$columnd[$i];
           }
           $option['data'][] = $rows;
        }

        // eksekusi json
        echo json_encode($option);

    }
}

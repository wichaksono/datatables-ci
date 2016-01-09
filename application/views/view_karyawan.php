<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Datatables Codeigniter</title>
  <!-- Bootstrap -->
  <link href="<?php echo base_url('assets/css/bootstrap.min.css');?>" rel="stylesheet" />
  <link href="<?php echo base_url('assets/css/jquery.dataTables.min.css');?>" rel="stylesheet" />

</head>
<body>
  <div class="container">
    <header>
      <h2>Datatables Codeigniter</h2>
    </header>
    <hr>

    <table id="example" class="display" cellspacing="0" width="100%">
      <thead>
          <tr>
              <th>First name</th>
              <th>Last name</th>
              <th>Position</th>
              <th>Office</th>
              <th>Start date</th>
          </tr>
      </thead>
      <tfoot>
          <tr>
              <th>First name</th>
              <th>Last name</th>
              <th>Position</th>
              <th>Office</th>
              <th>Start date</th>
          </tr>
      </tfoot>
  </table>
  </div>


  <script src="<?php echo base_url('assets/js/jquery.min.js');?>"></script>
  <script src="<?php echo base_url('assets/js/bootstrap.min.js');?>"></script>
  <script src="<?php echo base_url('assets/js/jquery.dataTables.min.js');?>"></script>
  <script>
 /**
  * Gunaknan ini jika TIDAK ingin menggunakan pencarian perkolom
  */
  // $(document).ready(function() {
  //    $('#example').DataTable({
  //        "processing": true,
  //        "serverSide": true,
  //        "ajax": {
  //            "url": "<?php echo base_url('karyawan/datatables_ajax');?>",
  //            "type": "POST"
  //        }
  //    });
  //  });
    
  
  /**
   * Gunaknan ini jika ingin menggunakan pencarian perkolom 
   */
  $(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#example tfoot th').each( function () {
        var title = $(this).text();
        var inp   = '<input type="text" class="form-control" placeholder="Search '+ title +'" />';
        $(this).html(inp);
    } );
 
    // DataTable
    var table = $('#example').DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        "url": "<?php echo base_url('karyawan/datatables_ajax');?>",
                        "type": "POST"
                    }
                });
 
    // Apply the search
    table.columns().every( function () {
        var that = this;
 
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
} );
  </script>
</body>
</html>
unit ComponentsWeb;

interface

  Function Get_Lib_CSS_DataTable : string;
  function Get_Lib_JS_DataTable  : string;


implementation


function Get_Lib_CSS_DataTable : string;
begin
  Result := '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> '+
            '<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4min.css">';
end;

function Get_Lib_JS_DataTable : string;
begin
  Result := '<script src="https://code.jquery.com/jquery-3.5.1.js"></script>                        '+
            '<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script> '+
            '<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>';

end;

end.

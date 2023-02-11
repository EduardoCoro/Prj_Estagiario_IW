unit Template.StarAdmin;

interface

  Const PathTheme = 'app/';

  function JqueryMaskPlugin : String;

  function Get_Head : string;
  function Get_Footer : string;


  function Get_Head_Login : string;
  function Get_Footer_Login : string;

  function Get_Page_Head(Titulo :string; Acao :string) : string;
  //function Get_Page_Footer : string;

  function script_Acoes : string;



implementation

uses
  system.SysUtils;

function JqueryMaskPlugin : String;
begin
  Result :=  ' <script src="//ajax.qooqleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>  '+
             ' <script src="js/jquery.mask.min.js"></script>                                        ';
end;

function script_Acoes : string;
begin
  Result :=  ' <script>                                                     '+
             ' function Acoes(Acao,id) {                              '+
             '   ajaxCall("Acoes","Params=p1=" + Acao + ",p2=" + id + "");  '+
             ' }                                                            '+
             ' </script>                                                    ';
end;

function Get_Page_Head(Titulo :string; Acao :string) : string;
begin
    Result := ' <div class="content-wrapper">                                          '+
            ' <!-- Page Title Header Starts-->                                         '+
            ' <div class="row page-title-header">                                      '+
              ' <div class="col-12">                                                   '+
                ' <div class="page-header">                                            '+
                  ' <h4 class="page-title">'+Titulo+'</h4>                              '+
                  ' <div class="quick-link-wrapper w-100 d-md-flex flex-md-wrap">      '+
//                    ' <ul class="quick-links">                                         '+
//                      ' <li><a href="#">ICE Market data</a></li>                       '+
//                      ' <li><a href="#">Own analysis</a></li>                          '+
//                      ' <li><a href="#">Historic market data</a></li>                  '+
//                    ' </ul>                                                            '+
                    ' <ul class="quick-links ml-auto">                                 ';
             if uppercase(Acao) = 'HOME' then
               Result := Result + ' <li><a href="#">Home</a></li> '
             else begin
               Result := Result +  ' <li><a href="javascript: Acoes(''Home'',0);">Home</a></li>       '+
                                   ' <li><a href="javascript: Acoes('+acao+',0);">'+Acao+'</a></li>       ';
             end;

             Result := Result +   ' </ul>                                                            '+
                                    ' </div>                                                             '+
                                  ' </div>                                                               '+
                                 ' </div>                                                                '+
                                ' </div>                                                                 ';
end;

Function Get_Head : String;
begin
  Result := '<meta charset="utf-8">                                                                      '+
    '<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">              '+
    '<link rel="stylesheet" href="' + PathTheme +'vendors/iconfonts/mdi/css/materialdesignicons.min.css">   '+
    '<link rel="stylesheet" href="' + PathTheme +'vendors/iconfonts/ionicons/dist/css/ionicons.css">        '+
    '<link rel="stylesheet" href="' + PathTheme +'vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">   '+
    '<link rel="stylesheet" href="' + PathTheme +'vendors/css/vendor.bundle.base.css">                      '+
    '<link rel="stylesheet" href="' + PathTheme +'vendors/css/vendor.bundle.addons.css">                    '+
    '<link rel="stylesheet" href="' + PathTheme +'css/shared/style.css">                                    '+
    '<link rel="stylesheet" href="' + PathTheme +'css/demo_1/style.css">                                    '+
    '<link rel="shortcut icon" href="' + PathTheme +'images/favicon.ico" />                                 ';
end;

Function Get_Footer : String;
begin
  Result := '<script src="'+PathTheme+'vendors/js/vendor.bundle.base.js"></script>          '+
    '<script src="'+PathTheme+'vendors/js/vendor.bundle.addons.js"></script>                '+
    '<script src="'+PathTheme+'js/shared/off-canvas.js"></script>                           '+
    '<script src="'+PathTheme+'js/shared/misc.js"></script>                                 '+
    '<script src="'+PathTheme+'js/shared/jquery.cookie.js" type="text/javascript"></script> ';
end;

function Get_Head_Login : string;
begin
  Result := ' <link rel="stylesheet" href="'+ PathTheme +'vendors/iconfonts/mdi/css/materialdesignicons.min.css"> ' +
            ' <link rel="stylesheet" href="'+ PathTheme +'vendors/iconfonts/ionicons/dist/css/ionicons.css">      ' +
            ' <link rel="stylesheet" href="'+ PathTheme +'vendors/iconfonts/flag-icon-css/css/flag-icon.min.css"> ' +
            ' <link rel="stylesheet" href="'+ PathTheme +'vendors/css/vendor.bundle.base.css">                    ' +
            ' <link rel="stylesheet" href="'+ PathTheme +'vendors/css/vendor.bundle.addons.css">                  ' +
            ' <link rel="stylesheet" href="'+ PathTheme +'css/shared/style.css">                                  ' +
            ' <link rel="shortcut icon" href="'+ PathTheme +'images/favicon.ico" />                               ';
end;

function Get_Footer_Login : string;
begin
  Result := ' <script src="'+ PathTheme +'vendors/js/vendor.bundle.base.js"></script>                   '+
            ' <script src="'+ PathTheme +'vendors/js/vendor.bundle.addons.js"></script>                 '+
            ' <script src="'+ PathTheme +'js/shared/off-canvas.js"></script>                            '+
            ' <script src="'+ PathTheme +'js/shared/misc.js"></script>                                  '+
            ' <script src="'+ PathTheme +'js/shared/jquery.cookie.js" type="text/javascript"></script>  ';
end;



end.

unit DataTables;

interface

uses
  System.Classes, System.SysUtils;

   function Create_HTML_Table(ID:String; Fields:TStringList; cTable:Boolean; cStriped:Boolean; cBordered:Boolean; cHover:Boolean; cSm:Boolean; Style:string; Action:Boolean) :string;
   function Create_script_DataTable(ID:string; TagScript:Boolean; Responsivo:Boolean; pageLength:LongInt; cdnLanguage:string; paging:Boolean; ordering :Boolean; searching:Boolean; serverSide:Boolean; processing:Boolean):string;

implementation

function Create_HTML_Table(ID:String; Fields:TStringList; cTable:Boolean; cStriped:Boolean; cBordered:Boolean; cHover:Boolean; cSm:Boolean; Style:string; Action:Boolean) :string;
var
 I    : LongInt;
 Tb_Class, Tb_style, Tb_HTML :string;
begin
  Tb_style := Style;

  if Length(Tb_style) = 0 then
    Tb_Style:='width:100%';

  Tb_Class :='table';

  if cStriped then
    Tb_Class := Tb_Class + 'table-striped';

  if cBordered then
    Tb_Class := Tb_Class + 'table-cBordered';

  if cHover then
    Tb_Class := Tb_Class + 'table-hover';

  if cSm then
    Tb_Class := Tb_Class + 'table-sm';

  Tb_HTML := Tb_HTML + '<tr>                    ';

  for I := 0 to Fields.Count-1 do begin
    Tb_HTML := Tb_HTML +'  <th>' + Fields[I]+'</th> ';
  end;

  if Action then
    Tb_HTML := Tb_HTML + '     <th>A��o</th>        ';

  Tb_HTML := Tb_HTML + ' </tr>                      ';

  Result := ' <table id="'+ID+'" class="'+Tb_Class+'" style="'+ Tb_style+'"> '+
            '   <thead>                                                     '+
                      Tb_HTML                                                +
            '   </thead>                                                    '+
            ' </table>                                                      ';
end;

function Create_script_DataTable(ID:string; TagScript:Boolean; Responsivo:Boolean; pageLength:LongInt; cdnLanguage:string; paging:Boolean; ordering :Boolean; searching:Boolean; serverSide:Boolean; processing:Boolean):string;
var
  vResponsive, vPageLength, vCdnLanguage, vPaging,
  vOrdering, vSearching, vServerside, vProcessing : string;
begin

  if Responsivo then
    vResponsive := 'true'
  else
    vResponsive := 'false';

  if pageLength <=0 then
    vPageLength := '10'
  else
    vPageLength := IntToStr(pageLength);

  if Length(vCdnLanguage) <=0 then
    vCdnLanguage :='//cdn.datatables.net/plugin-ins/1.10.19/i18n/Portuguese-Brasil.json'
  else
    vCdnLanguage := cdnLanguage;

  if Paging then
    vPaging := 'true'
  else
    vPaging := 'false';

  if ordering then
    vOrdering := 'true'
  else
    vOrdering := 'false';

  if Searching then
      vSearching := 'true'
  else
    vSearching := 'false';

  if ServerSide then
    vServerside := 'true'
  else
    vProcessing := 'false';

  if TagScript then
    Result := ' <script type="text/javascript">                  '+
              ' $(document).ready(function() {                   ';

  Result := Result +

  '   $(''#'+ID+''').DataTable(                                   '+
  '       {                                                      '+
  '           responsive: '+vResponsive+',                       '+
  '           "pageLength": '+vPageLength+',                     '+
  '           "language": {                                      '+
  '               "url": "'+vCdnLanguage+'"                      '+
  '           },                                                 '+
  '           "paging":    '+vPaging+'                           '+
  '           "orderintg": '+vOrdering+',                        '+
  '           serverSide:  '+vProcessing+',                      '+
  '           processing:  '+vProcessing+',                      '+
  '           ajax: "/$/callback?callback='+ID+'"                '+
  '       });                                                    ';

  if TagScript then
    Result := Result + ' } ); </script>                          ';


end;


end.

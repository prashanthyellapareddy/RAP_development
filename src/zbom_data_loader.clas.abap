CLASS zbom_data_loader DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
   METHODS fill_master_data.
    METHODS flush.
ENDCLASS.



CLASS ZBOM_DATA_LOADER IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  flush( ).
   fill_master_data( ).
     out->write(
      EXPORTING
        data   = 'processing is completed successfully!'
    ).
  ENDMETHOD.


   METHOD fill_master_data.
    DATA : lt_bom_data TYPE TABLE OF zbom_data.

    Append value #(  bom_number =  '1001'  material =  'MAT-1001-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-B'  version =  'V1'  quantity =  2  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-C'  version =  'V1'  quantity =  4  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-D'  version =  'V1'  quantity =  1  parent_material =  'MAT-1001-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-E'  version =  'V1'  quantity =  8  parent_material =  'MAT-1001-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-B'  version =  'V2'  quantity =  2  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-C'  version =  'V2'  quantity =  5  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-D'  version =  'V2'  quantity =  1  parent_material =  'MAT-1001-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-F'  version =  'V2'  quantity =  2  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-A'  version =  'V3'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-B'  version =  'V3'  quantity =  3  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-C'  version =  'V3'  quantity =  5  parent_material =  'MAT-1001-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-G'  version =  'V3'  quantity =  1  parent_material =  'MAT-1001-A'  ) to lt_bom_data.



    Append value #(  bom_number =  '1001'  material =  'MAT-1001-H'  version =  'V2'  quantity =  2  parent_material =  'MAT-1001-F' )  to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-J'  version =  'V2'  quantity =  5  parent_material =  'MAT-1001-F' )  to lt_bom_data.
    Append value #(  bom_number =  '1001'  material =  'MAT-1001-I'  version =  'V2'  quantity =  1  parent_material =  'MAT-1001-J' )  to lt_bom_data.
*    Append value #(  bom_number =  '1001'  material =  'MAT-1001-L'  version =  'V2'  quantity =  2  parent_material =  'MAT-1001-I' )  to lt_bom_data.
*    Append value #(  bom_number =  '1001'  material =  'MAT-1001-M'  version =  'V2'  quantity =  4  parent_material =  'MAT-1001-J' )  to lt_bom_data.
*    Append value #(  bom_number =  '1001'  material =  'MAT-1001-N'  version =  'V2'  quantity =  1  parent_material =  'MAT-1001-J' )  to lt_bom_data.

    Append value #(  bom_number =  '1002'  material =  'MAT-1002-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-B'  version =  'V1'  quantity =  3  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-C'  version =  'V1'  quantity =  2  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-D'  version =  'V1'  quantity =  6  parent_material =  'MAT-1002-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-E'  version =  'V1'  quantity =  12  parent_material =  'MAT-1002-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-B'  version =  'V2'  quantity =  3  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-F'  version =  'V2'  quantity =  4  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-D'  version =  'V2'  quantity =  6  parent_material =  'MAT-1002-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-A'  version =  'V3'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-B'  version =  'V3'  quantity =  4  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-C'  version =  'V3'  quantity =  2  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1002'  material =  'MAT-1002-G'  version =  'V3'  quantity =  3  parent_material =  'MAT-1002-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-B'  version =  'V1'  quantity =  4  parent_material =  'MAT-1003-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-C'  version =  'V1'  quantity =  8  parent_material =  'MAT-1003-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-D'  version =  'V1'  quantity =  4  parent_material =  'MAT-1003-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-E'  version =  'V1'  quantity =  2  parent_material =  'MAT-1003-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-B'  version =  'V2'  quantity =  4  parent_material =  'MAT-1003-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-C'  version =  'V2'  quantity =  8  parent_material =  'MAT-1003-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-D'  version =  'V2'  quantity =  4  parent_material =  'MAT-1003-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1003'  material =  'MAT-1003-F'  version =  'V2'  quantity =  1  parent_material =  'MAT-1003-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-B'  version =  'V1'  quantity =  2  parent_material =  'MAT-1004-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-C'  version =  'V1'  quantity =  4  parent_material =  'MAT-1004-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-D'  version =  'V1'  quantity =  4  parent_material =  'MAT-1004-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-B'  version =  'V2'  quantity =  2  parent_material =  'MAT-1004-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-C'  version =  'V2'  quantity =  4  parent_material =  'MAT-1004-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-E'  version =  'V2'  quantity =  2  parent_material =  'MAT-1004-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-A'  version =  'V3'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-B'  version =  'V3'  quantity =  3  parent_material =  'MAT-1004-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-C'  version =  'V3'  quantity =  4  parent_material =  'MAT-1004-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1004'  material =  'MAT-1004-F'  version =  'V3'  quantity =  2  parent_material =  'MAT-1004-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-B'  version =  'V1'  quantity =  1  parent_material =  'MAT-1005-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-C'  version =  'V1'  quantity =  12  parent_material =  'MAT-1005-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-D'  version =  'V1'  quantity =  50  parent_material =  'MAT-1005-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-E'  version =  'V1'  quantity =  25  parent_material =  'MAT-1005-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-B'  version =  'V2'  quantity =  1  parent_material =  'MAT-1005-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-C'  version =  'V2'  quantity =  16  parent_material =  'MAT-1005-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-D'  version =  'V2'  quantity =  50  parent_material =  'MAT-1005-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1005'  material =  'MAT-1005-F'  version =  'V2'  quantity =  10  parent_material =  'MAT-1005-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-B'  version =  'V1'  quantity =  2  parent_material =  'MAT-1006-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-C'  version =  'V1'  quantity =  2  parent_material =  'MAT-1006-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-D'  version =  'V1'  quantity =  4  parent_material =  'MAT-1006-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-E'  version =  'V1'  quantity =  8  parent_material =  'MAT-1006-C'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-B'  version =  'V2'  quantity =  2  parent_material =  'MAT-1006-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-C'  version =  'V2'  quantity =  3  parent_material =  'MAT-1006-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-D'  version =  'V2'  quantity =  4  parent_material =  'MAT-1006-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1006'  material =  'MAT-1006-F'  version =  'V2'  quantity =  6  parent_material =  'MAT-1006-C'  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-B'  version =  'V1'  quantity =  1  parent_material =  'MAT-1007-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-C'  version =  'V1'  quantity =  2  parent_material =  'MAT-1007-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-D'  version =  'V1'  quantity =  4  parent_material =  'MAT-1007-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-B'  version =  'V2'  quantity =  1  parent_material =  'MAT-1007-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-C'  version =  'V2'  quantity =  3  parent_material =  'MAT-1007-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1007'  material =  'MAT-1007-E'  version =  'V2'  quantity =  2  parent_material =  'MAT-1007-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-B'  version =  'V1'  quantity =  1  parent_material =  'MAT-1008-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-C'  version =  'V1'  quantity =  2  parent_material =  'MAT-1008-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-D'  version =  'V1'  quantity =  3  parent_material =  'MAT-1008-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-B'  version =  'V2'  quantity =  1  parent_material =  'MAT-1008-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-E'  version =  'V2'  quantity =  1  parent_material =  'MAT-1008-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1008'  material =  'MAT-1008-D'  version =  'V2'  quantity =  3  parent_material =  'MAT-1008-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-B'  version =  'V1'  quantity =  1  parent_material =  'MAT-1009-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-C'  version =  'V1'  quantity =  2  parent_material =  'MAT-1009-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-B'  version =  'V2'  quantity =  1  parent_material =  'MAT-1009-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-C'  version =  'V2'  quantity =  3  parent_material =  'MAT-1009-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1009'  material =  'MAT-1009-D'  version =  'V2'  quantity =  1  parent_material =  'MAT-1009-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-A'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-B'  version =  'V1'  quantity =  2  parent_material =  'MAT-1010-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-C'  version =  'V1'  quantity =  4  parent_material =  'MAT-1010-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-D'  version =  'V1'  quantity =  2  parent_material =  'MAT-1010-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-A'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-B'  version =  'V2'  quantity =  2  parent_material =  'MAT-1010-A'  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-C'  version =  'V2'  quantity =  6  parent_material =  'MAT-1010-B'  ) to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-E'  version =  'V2'  quantity =  1  parent_material =  'MAT-1010-A' )  to lt_bom_data.
"dummy data
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-F'  version =  'V2'  quantity =  4  parent_material =  'MAT-1010-A' )  to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-G'  version =  'V2'  quantity =  3  parent_material =  'MAT-1010-A' )  to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-H'  version =  'V2'  quantity =  2  parent_material =  'MAT-1010-F' )  to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-I'  version =  'V2'  quantity =  1  parent_material =  'MAT-1010-G' )  to lt_bom_data.
    Append value #(  bom_number =  '1010'  material =  'MAT-1010-J'  version =  'V2'  quantity =  5  parent_material =  'MAT-1010-I' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-K'  version =  'V2'  quantity =  1  parent_material =  'MAT-1010-I' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-L'  version =  'V2'  quantity =  2  parent_material =  'MAT-1010-I' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-M'  version =  'V2'  quantity =  4  parent_material =  'MAT-1010-J' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-N'  version =  'V2'  quantity =  1  parent_material =  'MAT-1010-J' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-O'  version =  'V2'  quantity =  8  parent_material =  'MAT-1010-N' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-P'  version =  'V2'  quantity =  2  parent_material =  'MAT-1010-N' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-Q'  version =  'V2'  quantity =  6  parent_material =  'MAT-1010-O' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-R'  version =  'V2'  quantity =  5  parent_material =  'MAT-1010-O' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-S'  version =  'V2'  quantity =  3  parent_material =  'MAT-1010-Q' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-T'  version =  'V2'  quantity =  7  parent_material =  'MAT-1010-Q' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-U'  version =  'V2'  quantity =  6  parent_material =  'MAT-1010-Q' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-V'  version =  'V2'  quantity =  1  parent_material =  'MAT-1010-T' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-W'  version =  'V2'  quantity =  5  parent_material =  'MAT-1010-T' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-X'  version =  'V2'  quantity =  2  parent_material =  'MAT-1010-T' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-Y'  version =  'V2'  quantity =  4  parent_material =  'MAT-1010-V' )  to lt_bom_data.
*    Append value #(  bom_number =  '1010'  material =  'MAT-1010-Z'  version =  'V2'  quantity =  3  parent_material =  'MAT-1010-Y' )  to lt_bom_data.

Append value #(  bom_number =  '01312288'  material =  '0010-00071'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1080-00344'  version =  'V1'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '5010-01010'  version =  'V1'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01416'  version =  'V1'  quantity =  1  parent_material =  '1080-00344'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01170'  version =  'V1'  quantity =  4  parent_material =  '1080-00344'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01491'  version =  'V1'  quantity =  8  parent_material =  '1080-00344'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '3860-01078'  version =  'V1'  quantity =  2  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1330-01009'  version =  'V1'  quantity =  7  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1390-01257'  version =  'V1'  quantity =  3  parent_material =  '1330-01009'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1390-01317'  version =  'V1'  quantity =  3  parent_material =  '1330-01009'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01267'  version =  'V1'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.

Append value #(  bom_number =  '01452783'  material =  '0010-00216'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '0020-06363'  version =  'V1'  quantity =  2  parent_material =  '0010-00216'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '3690-01020'  version =  'V1'  quantity =  4  parent_material =  '0010-00216'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '3880-01023'  version =  'V1'  quantity =  4  parent_material =  '0010-00216'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '3880-01006'  version =  'V1'  quantity =  4  parent_material =  '3880-01023'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '0690-01008'  version =  'V1'  quantity =  3  parent_material =  '3880-01006'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '0620-01003'  version =  'V1'  quantity =  2  parent_material =  '0010-00216'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '0910-01002'  version =  'V1'  quantity =  5  parent_material =  '0010-00216'  ) to lt_bom_data.

Append value #(  bom_number =  '01312288'  material =  '0010-00071'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1080-00344'  version =  'V2'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01416'  version =  'V2'  quantity =  1  parent_material =  '1080-00344'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01170'  version =  'V2'  quantity =  2  parent_material =  '1080-00344'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1330-01009'  version =  'V2'  quantity =  3  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1390-01257'  version =  'V2'  quantity =  6  parent_material =  '1330-01009'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1390-01317'  version =  'V2'  quantity =  5  parent_material =  '1330-01009'  ) to lt_bom_data.

Append value #(  bom_number =  '01452783'  material =  '0010-00216'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '3690-01020'  version =  'V2'  quantity =  2  parent_material =  '0010-00216'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '3880-01023'  version =  'V2'  quantity =  6  parent_material =  '0010-00216'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '3880-01006'  version =  'V2'  quantity =  3  parent_material =  '3880-01023'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '0620-01003'  version =  'V2'  quantity =  1  parent_material =  '3880-01006'  ) to lt_bom_data.
Append value #(  bom_number =  '01452783'  material =  '0910-01002'  version =  'V2'  quantity =  2  parent_material =  '0010-00216'  ) to lt_bom_data.


Append value #(  bom_number =  '01312288'  material =  '0010-00071'  version =  'V3'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
* Append value #(  bom_number =  '01312288'  material =  '0250-00237'  version =  'V3'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0020-06312'  version =  'V3'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0090-07436'  version =  'V3'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0880-00068'  version =  'V3'  quantity =  1  parent_material =  '0090-07436'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0150-32125'  version =  'V3'  quantity =  4  parent_material =  '0090-07436'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0250-09720'  version =  'V3'  quantity =  1 parent_material =  '0150-32125'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '1390-01385'  version =  'V3'  quantity =  2 parent_material =  '0150-32125'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-02395'  version =  'V3'  quantity =  1 parent_material =  '1390-01385'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-03643'  version =  'V3'  quantity =  1 parent_material =  '1390-01385'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-04060'  version =  'V3'  quantity =  5 parent_material =  '1390-01385'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '3460-01065'  version =  'V3'  quantity =  3 parent_material =  '1390-01385'  ) to lt_bom_data.
* Append value #(  bom_number =  '01312288'  material =  '1080-00344'  version =  'V3'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
* Append value #(  bom_number =  '01312288'  material =  '5010-01010'  version =  'V3'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
* Append value #(  bom_number =  '01312288'  material =  '0720-01416'  version =  'V3'  quantity =  1  parent_material =  '0010-00071'  ) to lt_bom_data.
* Append value #(  bom_number =  '01312288'  material =  '0720-01170'  version =  'V3'  quantity =  4  parent_material =  '0010-00071'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01491'  version =  'V3'  quantity =  8  parent_material =  '0010-00071'  ) to lt_bom_data.

Append value #(  bom_number =  '01312288'  material =  '0720-01492'  version =  'V3'  quantity =  2  parent_material =  '0720-01491'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01493'  version =  'V3'  quantity =  1  parent_material =  '0720-01491'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01494'  version =  'V3'  quantity =  3  parent_material =  '0720-01491'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01495'  version =  'V3'  quantity =  6  parent_material =  '0720-01491'  ) to lt_bom_data.

Append value #(  bom_number =  '01312288'  material =  '0720-01496'  version =  'V3'  quantity =  6  parent_material =  '0720-01492'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01497'  version =  'V3'  quantity =  6  parent_material =  '0720-01492'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01498'  version =  'V3'  quantity =  6  parent_material =  '0720-01495'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01499'  version =  'V3'  quantity =  6  parent_material =  '0720-01495'  ) to lt_bom_data.

Append value #(  bom_number =  '01312288'  material =  '0720-01488'  version =  'V3'  quantity =  6  parent_material =  '0720-01499'  ) to lt_bom_data.
Append value #(  bom_number =  '01312288'  material =  '0720-01489'  version =  'V3'  quantity =  6  parent_material =  '0720-01499'  ) to lt_bom_data.


Append value #(  bom_number =  '06576753'  material =  '0247-04342'  version =  'V1'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0040-87005'  version =  'V1'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0040-82011'  version =  'V1'  quantity =  4  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0050-84507'  version =  'V1'  quantity =  2  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0042-10617'  version =  'V1'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07418'  version =  'V1'  quantity =  3  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07414'  version =  'V1'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07402'  version =  'V1'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-20000'  version =  'V1'  quantity =  3  parent_material =  '0200-07402'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0041-13866'  version =  'V1'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0021-34728'  version =  'V1'  quantity =  2  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-35000'  version =  'V1'  quantity =  3  parent_material =  '0021-34728'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0020-84776'  version =  'V1'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-37837'  version =  'V1'  quantity =  2  parent_material =  '0020-84776'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-70352'  version =  'V1'  quantity =  3  parent_material =  '0020-84776'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07415'  version =  'V1'  quantity =  4  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-10858'  version =  'V1'  quantity =  1  parent_material =  '0200-07415'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-70351'  version =  'V1'  quantity =  1  parent_material =  '0200-07415'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-03991'  version =  'V1'  quantity =  8  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-04066'  version = 'V1'  quantity =  1  parent_material =  '0205-03991'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-04067'  version =  'V1'  quantity =  2  parent_material =  '0205-03991'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-04068'  version =  'V1'  quantity =  1  parent_material =  '0205-03991'  ) to lt_bom_data.


Append value #(  bom_number =  '06576753'  material =  '0247-04342'  version =  'V2'  quantity =  1  parent_material =  ''  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0040-82011'  version =  'V2'  quantity =  4  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0050-84507'  version =  'V2'  quantity =  2  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07418'  version =  'V2'  quantity =  1  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07402'  version =  'V2'  quantity =  4  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-20000'  version =  'V2'  quantity =  1  parent_material =  '0200-07402'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0041-13866'  version =  'V2'  quantity =  3  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0021-34728'  version =  'V2'  quantity =  2  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-35000'  version =  'V2'  quantity =  3  parent_material =  '0021-34728'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0020-84776'  version =  'V2'  quantity =  2  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-70352'  version =  'V2'  quantity =  3  parent_material =  '0020-84776'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0200-07415'  version =  'V2'  quantity =  4  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-10858'  version =  'V2'  quantity =  1  parent_material =  '0200-07415'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0250-70351'  version =  'V2'  quantity =  1  parent_material =  '0200-07415'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-03991'  version =  'V2'  quantity =  5  parent_material =  '0247-04342'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-04066'  version = 'V2'  quantity =  2  parent_material =  '0205-03991'  ) to lt_bom_data.
Append value #(  bom_number =  '06576753'  material =  '0205-04067'  version =  'V2'  quantity =  4  parent_material =  '0205-03991'  ) to lt_bom_data.

   insert zbom_data FROM TABLE @lt_bom_data.

  ENDMETHOD.


  METHOD flush.
    DELETE FROM : zbom_data.
  ENDMETHOD.
ENDCLASS.

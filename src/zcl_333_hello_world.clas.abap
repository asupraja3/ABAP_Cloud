CLASS zcl_333_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_333_hello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "change commit 4
    " out->write( 'Hello World' ).
    DATA itab TYPE TABLE OF zcustomer20.
* fill internal travel table (itab)
    itab = VALUE #(
     ( customerno = '1000000001' firstname = 'Peter' lastname = 'Parker' phone = '5375383' createdbyuser = 'USER1'
     creationat = '20190613111129.2391370' lastchangedbyuser = 'USER1'
     lastchangedat = '20190711140753.1472620' locallastchangedat = '20190711140753.1472620' )
     ( customerno = '1000000002' firstname = 'Steven' lastname = 'Rogers' phone = '5375384' createdbyuser = 'USER1'
     creationat = '20190613111129.2391370' lastchangedbyuser = 'USER1'
     lastchangedat = '20190711140753.1472620' locallastchangedat = '20190711140753.1472620' )
     ( customerno = '1000000003' firstname = 'Bruce' lastname = 'Banner' phone = '5375385' createdbyuser = 'USER1'
     creationat = '20190613111129.2391370' lastchangedbyuser = 'USER1'
     lastchangedat = '20190711140753.1472620' locallastchangedat = '20190711140753.1472620' )
     ).
* delete existing entries in the database table
    DELETE FROM zcustomer20.
    IF sy-subrc = 0.
    ENDIF.
* insert the new table entries
    INSERT zcustomer20 FROM TABLE @itab.
    IF sy-subrc = 0.
    ENDIF.


    DATA itabitem TYPE TABLE OF zcustaddr20.
    itabitem = VALUE #(
     ( customerno = '1000000001' addressid = '1000000001' city = 'New York' street = 'Street 1' country = 'USA' postalcode = '10001'
     createdbyuser = 'USER1' creationat = '20190613111129.2391370' lastchangedbyuser = 'USER1' locallastchangedat = '20190711140753.1472620' )
     ( customerno = '1000000002' addressid = '1000000002' city = 'W ashington' street = 'Street 2' country = 'USA' postalcode = '10002'
     createdbyuser = 'USER1' creationat = '20190613111129.2391370' lastchangedbyuser = 'USER1'
  locallastchangedat = '20190711140753.1472620' )
     ( customerno = '1000000003' addressid = '1000000003' city = 'London' street = ' Street 3' country = 'USA' postalcode = '10003'
     createdbyuser = 'USER1' creationat = '20190613111129.2391370' lastchangedbyuser = 'USER1'  locallastchangedat = '20190711140753.1472620' )
     ).

* delete existing entries in the database table
    DELETE FROM zcustaddr20.
* insert the new table entries
    INSERT zcustaddr20 FROM TABLE @itabitem.
    IF sy-subrc = 0.
    ENDIF.

  ENDMETHOD.
ENDCLASS.

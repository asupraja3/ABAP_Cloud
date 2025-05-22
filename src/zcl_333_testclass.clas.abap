CLASS zcl_333_testclass DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_333_testclass IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data(s) = 3.
    out->write( s ).

  ENDMETHOD.
ENDCLASS.

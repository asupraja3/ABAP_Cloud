CLASS zcl_333_compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_333_COMPUTE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


* Declarations
**********************************************************************

    CONSTANTS c_number TYPE i VALUE 3.
*    CONSTANTS c_number TYPE i VALUE 5.
*    CONSTANTS c_number TYPE i VALUE 10.

    DATA number TYPE i.

* Example 1: DO ... ENDDO with TIMES
**********************************************************************

    out->write(  `----------------------------------` ).
    out->write(  `Example 1: DO ... ENDDO with TIMES` ).
    out->write(  `----------------------------------` ).

    DO c_number TIMES.
      out->write(  `Hello World` ).
    ENDDO.

* Example 2: DO ... ENDDO with Abort Condition
**********************************************************************

    out->write(  `-------------------------------` ).
    out->write(  `Example 2: With Abort Condition` ).
    out->write(  `-------------------------------` ).

    number = c_number * c_number.

    " count backwards from number to c_number.
    DO.

      out->write( |{ sy-index }: Value of number: {  number }| ).
      number = number - 1.

      "abort condition
      IF number <= c_number.
        EXIT.
      ENDIF.

    ENDDO.


  ENDMETHOD.
ENDCLASS.

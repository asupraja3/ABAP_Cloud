*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.


    CLASS-DATA conn_counter TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING
        i_carrier_id    TYPE /dmo/carrier_id
        i_connection_id TYPE /dmo/connection_id
      RAISING
        cx_ABAP_INVALID_VALUE.

*    METHODS set_attributes
*      IMPORTING
*        i_carrier_id    TYPE /dmo/carrier_id
*        i_connection_id TYPE /dmo/connection_id
*      RAISING
*        cx_abap_invalid_value.

    METHODS get_output
      RETURNING
        VALUE(r_output) TYPE string_table.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.


  METHOD constructor.

    IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
      RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ENDIF.

    me->connection_id = i_connection_id.
    me->carrier_id    = i_carrier_id.

    conn_counter = conn_counter + 1.
  ENDMETHOD.


  METHOD get_output.

    APPEND |------------------------------| TO r_output.
    APPEND |Carrier:     { carrier_id    }| TO r_output.
    APPEND |Connection:  { connection_id }| TO r_output.
    APPEND |Counter:  { conn_counter }| TO r_output.

  ENDMETHOD.

*  METHOD set_attributes.
*    IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
*      RAISE EXCEPTION TYPE cx_abap_invalid_value.
*    ENDIF.
*
*    carrier_id    = i_carrier_id.
*    connection_id = i_connection_id.
*  ENDMETHOD.

ENDCLASS.

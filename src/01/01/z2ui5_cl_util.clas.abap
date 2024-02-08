CLASS z2ui5_cl_util DEFINITION
  PUBLIC
  CREATE PUBLIC
  INHERITING FROM z2ui5_cl_util_api.

  PUBLIC SECTION.

    CLASS-METHODS db_save
      IMPORTING
        uname         TYPE clike OPTIONAL
        handle        TYPE clike OPTIONAL
        handle2       TYPE clike OPTIONAL
        handle3       TYPE clike OPTIONAL
        data          TYPE any
        check_commit  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS db_load_by_id
      IMPORTING
        id            TYPE clike OPTIONAL
      EXPORTING
        VALUE(result) TYPE any.

    CLASS-METHODS db_load_by_handle
      IMPORTING
        uname         TYPE clike OPTIONAL
        handle        TYPE clike OPTIONAL
        handle2       TYPE clike OPTIONAL
        handle3       TYPE clike OPTIONAL
      EXPORTING
        VALUE(result) TYPE any.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_util IMPLEMENTATION.

  METHOD db_load_by_handle.

    DATA lt_db TYPE STANDARD TABLE OF z2ui5_t_fw_02 WITH DEFAULT KEY.
    DATA ls_db LIKE LINE OF lt_db.
    DATA temp1 LIKE LINE OF lt_db.
    DATA temp2 LIKE sy-tabix.

    SELECT data
      FROM z2ui5_t_fw_02
       WHERE
        uname = uname
        AND handle = handle
        AND handle2 = handle2
        AND handle3 = handle3
      INTO CORRESPONDING FIELDS OF TABLE lt_db.

    
    
    
    temp2 = sy-tabix.
    READ TABLE lt_db INDEX 1 INTO temp1.
    sy-tabix = temp2.
    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
    ENDIF.
    ls_db = temp1.

    xml_parse(
      EXPORTING
        xml = ls_db-data
      IMPORTING
        any = result ).

  ENDMETHOD.


  METHOD db_load_by_id.

    DATA lt_db TYPE STANDARD TABLE OF z2ui5_t_fw_02 WITH DEFAULT KEY.
    DATA ls_db LIKE LINE OF lt_db.
    DATA temp3 LIKE LINE OF lt_db.
    DATA temp4 LIKE sy-tabix.

    SELECT data
      FROM z2ui5_t_fw_02
      WHERE id = id
      INTO CORRESPONDING FIELDS OF TABLE lt_db.

    
    
    
    temp4 = sy-tabix.
    READ TABLE lt_db INDEX 1 INTO temp3.
    sy-tabix = temp4.
    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
    ENDIF.
    ls_db = temp3.

    xml_parse(
      EXPORTING
        xml = ls_db-data
      IMPORTING
        any = result ).

  ENDMETHOD.


  METHOD db_save.

    DATA temp1 TYPE z2ui5_t_fw_02.
    DATA ls_db LIKE temp1.
    CLEAR temp1.
    temp1-id = uuid_get_c32( ).
    temp1-uname = uname.
    temp1-handle = handle.
    temp1-handle2 = handle2.
    temp1-handle3 = handle3.
    temp1-data = xml_stringify( data ).
    
    ls_db = temp1.

    MODIFY z2ui5_t_fw_02 FROM ls_db.

    IF check_commit = abap_true.
      COMMIT WORK AND WAIT.
    ENDIF.

    result = ls_db-id.

  ENDMETHOD.

ENDCLASS.
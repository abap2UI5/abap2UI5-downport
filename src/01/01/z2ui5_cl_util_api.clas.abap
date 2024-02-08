CLASS  z2ui5_cl_util_api DEFINITION
  PUBLIC
  CREATE PUBLIC
  INHERITING FROM z2ui5_cl_util_stmpncfctn.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_s_token,
        key      TYPE string,
        text     TYPE string,
        visible  TYPE abap_bool,
        selkz    TYPE abap_bool,
        editable TYPE abap_bool,
      END OF ty_s_token.
    TYPES ty_t_token TYPE STANDARD TABLE OF ty_s_token WITH DEFAULT KEY.

    TYPES ty_t_range TYPE RANGE OF string.
    TYPES ty_s_range TYPE LINE OF ty_t_range.

    TYPES:
      BEGIN OF ty_s_sql_multi,
        name    TYPE string,
        t_range TYPE ty_t_range,
        t_token TYPE ty_t_token,
      END OF ty_s_sql_multi.
    TYPES ty_t_filter_multi TYPE STANDARD TABLE OF ty_s_sql_multi WITH DEFAULT KEY.

    TYPES:
      BEGIN OF ty_s_sql_result,
        table TYPE string,
      END OF ty_s_sql_result.

    CLASS-METHODS source_get_method
      IMPORTING
        iv_classname  TYPE clike
        iv_methodname TYPE clike
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS check_bound_a_not_inital
      IMPORTING
        val           TYPE REF TO data
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS check_unassign_inital
      IMPORTING
        val           TYPE REF TO data
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS conv_get_as_data_ref
      IMPORTING
        val           TYPE data
      RETURNING
        VALUE(result) TYPE REF TO data.

    CLASS-METHODS source_method_to_file
      IMPORTING
        it_source     TYPE string_table
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS itab_get_itab_by_csv
      IMPORTING
        val           TYPE string
      RETURNING
        VALUE(result) TYPE REF TO data.

    CLASS-METHODS itab_get_csv_by_itab
      IMPORTING
        val           TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS filter_get_multi_by_data
      IMPORTING
        val           TYPE data
      RETURNING
        VALUE(result) TYPE ty_t_filter_multi.

    CLASS-METHODS sql_get_by_string
      IMPORTING
        val           TYPE clike
      RETURNING
        VALUE(result) TYPE ty_s_sql_result.

    CLASS-METHODS app_get_url_source_code
      IMPORTING
        !client       TYPE REF TO z2ui5_if_client
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS app_get_url
      IMPORTING
        !client          TYPE REF TO z2ui5_if_client
        VALUE(classname) TYPE string OPTIONAL
      RETURNING
        VALUE(result)    TYPE string.

    CLASS-METHODS url_param_get
      IMPORTING
        !val          TYPE string
        !url          TYPE string
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS url_param_create_url
      IMPORTING
        !t_params     TYPE z2ui5_if_types=>ty_t_name_value
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS url_param_set
      IMPORTING
        !url          TYPE string
        !name         TYPE string
        !value        TYPE string
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS rtti_get_classname_by_ref
      IMPORTING
        !in           TYPE REF TO object
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS x_check_raise
      IMPORTING
        !v    TYPE clike DEFAULT `CX_SY_SUBRC`
        !when TYPE xfeld.

    CLASS-METHODS x_raise
      IMPORTING
        !v TYPE clike DEFAULT `CX_SY_SUBRC`
          PREFERRED PARAMETER v.

    CLASS-METHODS user_get_tech
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS json_stringify
      IMPORTING
        !any          TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS xml_parse
      IMPORTING
        !xml TYPE clike
      EXPORTING
        !any TYPE any.

    CLASS-METHODS xml_stringify
      IMPORTING
        !any          TYPE any
      RETURNING
        VALUE(result) TYPE string
      RAISING
        cx_xslt_serialization_error.

    CLASS-METHODS boolean_check_by_data
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS boolean_abap_2_json
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS c_replace_assign_struc
      IMPORTING
        !iv_attri       TYPE clike
      RETURNING
        VALUE(rv_attri) TYPE string.

    CLASS-METHODS json_parse
      IMPORTING
        !val  TYPE any
      CHANGING
        !data TYPE any.

    CLASS-METHODS c_trim_upper
      IMPORTING
        !val          TYPE clike
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS xml_srtti_stringify
      IMPORTING
        !data         TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS xml_srtti_parse
      IMPORTING
        !rtti_data TYPE clike
      EXPORTING
        !e_data    TYPE REF TO data.

    CLASS-METHODS time_get_timestampl
      RETURNING
        VALUE(result) TYPE timestampl.

    CLASS-METHODS time_substract_seconds
      IMPORTING
        !time         TYPE timestampl
        !seconds      TYPE i
      RETURNING
        VALUE(result) TYPE timestampl.

    CLASS-METHODS c_trim
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS c_trim_lower
      IMPORTING
        !val          TYPE clike
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS url_param_get_tab
      IMPORTING
        !i_val           TYPE clike
      RETURNING
        VALUE(rt_params) TYPE z2ui5_if_types=>ty_t_name_value.

    CLASS-METHODS rtti_get_t_attri_by_object
      IMPORTING
        !val          TYPE REF TO object
      RETURNING
        VALUE(result) TYPE abap_attrdescr_tab.

    CLASS-METHODS rtti_get_t_comp_by_data
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE cl_abap_structdescr=>component_table.

    CLASS-METHODS rtti_get_type_name
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS rtti_check_lang_version_cloud
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS rtti_check_class_exists
      IMPORTING
        val           TYPE clike
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS rtti_check_type_kind_dref
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS rtti_get_type_kind
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE string.

    CLASS-METHODS rtti_check_ref_data
      IMPORTING
        !val          TYPE any
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS boolean_check_by_name
      IMPORTING
        val           TYPE string
      RETURNING
        VALUE(result) TYPE abap_bool.

    CLASS-METHODS filter_get_range_t_by_token_t
      IMPORTING
        val           TYPE ty_t_token
      RETURNING
        VALUE(result) TYPE ty_t_range.

    CLASS-METHODS filter_get_range_by_token
      IMPORTING
        VALUE(value)  TYPE string
      RETURNING
        VALUE(result) TYPE ty_s_range.

    CLASS-METHODS filter_get_token_t_by_range_t
      IMPORTING
        val           TYPE ty_t_range
      RETURNING
        VALUE(result) TYPE ty_t_token.

    CLASS-METHODS filter_get_token_range_mapping
      RETURNING
        VALUE(result) TYPE z2ui5_if_types=>ty_t_name_value.

    CLASS-METHODS itab_filter_by_val
      IMPORTING
        val TYPE clike
      CHANGING
        tab TYPE STANDARD TABLE.

    CLASS-METHODS time_get_time_by_stampl
      IMPORTING
        val           TYPE timestampl
      RETURNING
        VALUE(result) TYPE t.

    CLASS-METHODS time_get_date_by_stampl
      IMPORTING
        val           TYPE timestampl
      RETURNING
        VALUE(result) TYPE d.

    CLASS-METHODS conv_copy_ref_data
      IMPORTING
        from          TYPE any
      RETURNING
        VALUE(result) TYPE REF TO data.

    CLASS-METHODS source_get_file_types
      RETURNING
        VALUE(result) TYPE string_table.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z2UI5_CL_UTIL_API IMPLEMENTATION.


  METHOD app_get_url.
    DATA lv_url TYPE string.
    DATA lt_param TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp1 TYPE z2ui5_if_types=>ty_s_name_value.

    IF classname IS INITIAL.
      classname = rtti_get_classname_by_ref( client->get_app( ) ).
    ENDIF.

    
    lv_url = to_lower( client->get( )-s_config-origin && client->get( )-s_config-pathname ) && `?`.
    
    lt_param = url_param_get_tab( client->get( )-s_config-search ).
    DELETE lt_param WHERE n = `app_start`.
    
    CLEAR temp1.
    temp1-n = `app_start`.
    temp1-v = to_lower( classname ).
    INSERT temp1 INTO TABLE lt_param.

    result = lv_url && url_param_create_url( lt_param ).

  ENDMETHOD.


  METHOD app_get_url_source_code.

    DATA ls_config TYPE z2ui5_if_types=>ty_s_config.
    ls_config = client->get( )-s_config.
    result = ls_config-origin && `/sap/bc/adt/oo/classes/`
       && rtti_get_classname_by_ref( client->get_app( ) ) && `/source/main`.

  ENDMETHOD.


  METHOD boolean_abap_2_json.
      DATA temp2 TYPE string.

    IF boolean_check_by_data( val ) IS NOT INITIAL.
      
      IF val = abap_true.
        temp2 = `true`.
      ELSE.
        temp2 = `false`.
      ENDIF.
      result = temp2.
    ELSE.
      result = val.
    ENDIF.

  ENDMETHOD.


  METHOD boolean_check_by_data.
        DATA lv_type_name TYPE string.

    TRY.
        
        lv_type_name = rtti_get_type_name( val ).
        result = boolean_check_by_name( lv_type_name ).
      CATCH cx_root.
    ENDTRY.

  ENDMETHOD.


  METHOD boolean_check_by_name.

    CASE val.
      WHEN 'ABAP_BOOL'
          OR 'XSDBOOLEAN'
          OR 'FLAG'
          OR 'XFLAG'
          OR 'XFELD'
          OR 'ABAP_BOOLEAN'
          OR 'WDY_BOOLEAN'
          OR 'OS_BOOLEAN'.
        result = abap_true.
    ENDCASE.

  ENDMETHOD.


  METHOD check_bound_a_not_inital.
    DATA temp1 TYPE xsdboolean.

    IF val IS NOT BOUND.
      result = abap_false.
      RETURN.
    ENDIF.
    
    temp1 = boolc( check_unassign_inital( val ) = abap_false ).
    result = temp1.

  ENDMETHOD.


  METHOD check_unassign_inital.

    FIELD-SYMBOLS <any> TYPE data.
    DATA temp2 TYPE xsdboolean.
    ASSIGN val->* TO <any>.

    
    temp2 = boolc( <any> IS INITIAL ).
    result = temp2.

  ENDMETHOD.


  METHOD conv_copy_ref_data.

    FIELD-SYMBOLS <from> TYPE data.
    FIELD-SYMBOLS <result> TYPE data.

    IF rtti_check_ref_data( from ) IS NOT INITIAL.
      ASSIGN from->* TO <from>.
    ELSE.
      ASSIGN from TO <from>.
    ENDIF.
    CREATE DATA result LIKE <from>.
    ASSIGN result->* TO <result>.

    <result> = <from>.

  ENDMETHOD.


  METHOD conv_get_as_data_ref.

    GET REFERENCE OF val INTO result.

  ENDMETHOD.


  METHOD c_replace_assign_struc.
    DATA lv_length TYPE i.
    DATA lv_attri_end TYPE string.

    rv_attri  = iv_attri.
    
    lv_length = strlen( rv_attri ) - 2.
    
    lv_attri_end = rv_attri+lv_length.

    IF lv_attri_end = `>*`.
      lv_attri_end = `>`.
      lv_length = lv_length.
    ELSE.
      lv_attri_end = `-`.
      lv_length = lv_length + 2.
    ENDIF.
    rv_attri = rv_attri(lv_length) && lv_attri_end.

  ENDMETHOD.


  METHOD c_trim.

    DATA temp3 TYPE string.
    temp3 = val.
    result = shift_left( shift_right( temp3 ) ).
    result = shift_right( val = result
                          sub = cl_abap_char_utilities=>horizontal_tab ).
    result = shift_left( val = result
                         sub = cl_abap_char_utilities=>horizontal_tab ).
    result = shift_left( shift_right( result ) ).

  ENDMETHOD.


  METHOD c_trim_lower.

    DATA temp4 TYPE string.
    temp4 = val.
    result = to_lower( c_trim( temp4 ) ).

  ENDMETHOD.


  METHOD c_trim_upper.

    DATA temp5 TYPE string.
    temp5 = val.
    result = to_upper( c_trim( temp5 ) ).

  ENDMETHOD.


  METHOD filter_get_multi_by_data.

    DATA temp6 TYPE abap_component_tab.
    DATA temp1 LIKE LINE OF temp6.
    DATA lr_comp LIKE REF TO temp1.
      DATA temp7 TYPE z2ui5_cl_util_api=>ty_s_sql_multi.
    temp6 = rtti_get_t_comp_by_data( val ).
    
    
    LOOP AT temp6 REFERENCE INTO lr_comp.
      
      CLEAR temp7.
      temp7-name = lr_comp->name.
      INSERT temp7 INTO TABLE result.
    ENDLOOP.

  ENDMETHOD.


  METHOD filter_get_range_by_token.

    DATA lv_length TYPE i.
    lv_length = strlen( value ) - 1.
    CASE value(1).

      WHEN `=`.
        CLEAR result.
        result-sign = `I`.
        result-option = `EQ`.
        result-low = value+1.
      WHEN `<`.
        IF value+1(1) = `=`.
          CLEAR result.
          result-sign = `I`.
          result-option = `LE`.
          result-low = value+2.
        ELSE.
          CLEAR result.
          result-sign = `I`.
          result-option = `LT`.
          result-low = value+1.
        ENDIF.
      WHEN `>`.
        IF value+1(1) = `=`.
          CLEAR result.
          result-sign = `I`.
          result-option = `GE`.
          result-low = value+2.
        ELSE.
          CLEAR result.
          result-sign = `I`.
          result-option = `GT`.
          result-low = value+1.
        ENDIF.

      WHEN `*`.
        IF value+lv_length(1) = `*`.
          SHIFT value RIGHT DELETING TRAILING `*`.
          SHIFT value LEFT DELETING LEADING `*`.
          CLEAR result.
          result-sign = `I`.
          result-option = `CP`.
          result-low = value.
        ENDIF.

      WHEN OTHERS.
        IF value CP `...`.
          SPLIT value AT `...` INTO result-low result-high.
          result-option = `BT`.
        ELSE.
          CLEAR result.
          result-sign = `I`.
          result-option = `EQ`.
          result-low = value.
        ENDIF.

    ENDCASE.

  ENDMETHOD.


  METHOD filter_get_range_t_by_token_t.

    DATA ls_token LIKE LINE OF val.
    LOOP AT val INTO ls_token.
      INSERT filter_get_range_by_token( ls_token-text ) INTO TABLE result.
    ENDLOOP.

  ENDMETHOD.


  METHOD filter_get_token_range_mapping.

    DATA temp8 TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp9 LIKE LINE OF temp8.
    CLEAR temp8.
    
    temp9-n = `EQ`.
    temp9-v = `={LOW}`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `LT`.
    temp9-v = `<{LOW}`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `LE`.
    temp9-v = `<={LOW}`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `GT`.
    temp9-v = `>{LOW}`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `GE`.
    temp9-v = `>={LOW}`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `CP`.
    temp9-v = `*{LOW}*`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `BT`.
    temp9-v = `{LOW}...{HIGH}`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `NE`.
    temp9-v = `!(={LOW})`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `NE`.
    temp9-v = `!(<leer>)`.
    INSERT temp9 INTO TABLE temp8.
    temp9-n = `<leer>`.
    temp9-v = `<leer>`.
    INSERT temp9 INTO TABLE temp8.
    result = temp8.

  ENDMETHOD.


  METHOD filter_get_token_t_by_range_t.

    DATA lt_mapping TYPE z2ui5_if_types=>ty_t_name_value.
    DATA temp10 LIKE LINE OF val.
    DATA lr_row LIKE REF TO temp10.
      DATA lv_value TYPE z2ui5_if_types=>ty_s_name_value-v.
      DATA temp2 LIKE LINE OF lt_mapping.
      DATA temp3 LIKE sy-tabix.
      DATA temp11 TYPE z2ui5_cl_util_api=>ty_s_token.
    lt_mapping = filter_get_token_range_mapping( ).

    
    
    LOOP AT val REFERENCE INTO lr_row.

      
      
      
      temp3 = sy-tabix.
      READ TABLE lt_mapping WITH KEY n = lr_row->option INTO temp2.
      sy-tabix = temp3.
      IF sy-subrc <> 0.
        RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
      ENDIF.
      lv_value = temp2-v.
      REPLACE `{LOW}`  IN lv_value WITH lr_row->low.
      REPLACE `{HIGH}` IN lv_value WITH lr_row->high.

      
      CLEAR temp11.
      temp11-key = lv_value.
      temp11-text = lv_value.
      temp11-visible = abap_true.
      temp11-editable = abap_true.
      INSERT temp11 INTO TABLE result.
    ENDLOOP.

  ENDMETHOD.


  METHOD itab_filter_by_val.

    FIELD-SYMBOLS <row> TYPE any.
      DATA lv_row TYPE string.
      DATA lv_index TYPE i.
        FIELD-SYMBOLS <field> TYPE any.

    LOOP AT tab ASSIGNING <row>.
      
      lv_row = ``.
      
      lv_index = 1.
      DO.
        
        ASSIGN COMPONENT lv_index OF STRUCTURE <row> TO <field>.
        IF sy-subrc <> 0.
          EXIT.
        ENDIF.
        lv_row = lv_row && <field>.
        lv_index = lv_index + 1.
      ENDDO.

      IF lv_row NS val.
        DELETE tab.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.


  METHOD itab_get_csv_by_itab.

    FIELD-SYMBOLS <tab> TYPE table.
    DATA temp12 TYPE REF TO cl_abap_tabledescr.
    DATA tab LIKE temp12.
    DATA temp13 TYPE REF TO cl_abap_structdescr.
    DATA struc LIKE temp13.
    DATA temp14 TYPE abap_component_tab.
    DATA temp4 LIKE LINE OF temp14.
    DATA lr_comp LIKE REF TO temp4.
    DATA lr_row TYPE REF TO data.
      DATA lv_index TYPE i.
        FIELD-SYMBOLS <row> TYPE any.
        FIELD-SYMBOLS <field> TYPE any.

    ASSIGN val TO <tab>.



    
    temp12 ?= cl_abap_typedescr=>describe_by_data( <tab> ).
    
    tab = temp12.

    
    temp13 ?= tab->get_table_line_type( ).
    
    struc = temp13.

    
    temp14 = struc->get_components( ).
    
    
    LOOP AT temp14 REFERENCE INTO lr_comp.
      result = result && lr_comp->name && ';'.
    ENDLOOP.

    result = result && cl_abap_char_utilities=>cr_lf.

    
    LOOP AT <tab> REFERENCE INTO lr_row.

      
      lv_index = 1.
      DO.
        
        ASSIGN lr_row->* TO <row>.
        
        ASSIGN COMPONENT lv_index OF STRUCTURE <row> TO <field>.
        IF sy-subrc <> 0.
          EXIT.
        ENDIF.
        lv_index = lv_index + 1.
        result = result && <field> && ';'.
      ENDDO.
      result = result && cl_abap_char_utilities=>cr_lf.
    ENDLOOP.

  ENDMETHOD.


  METHOD itab_get_itab_by_csv.
    DATA lt_comp TYPE cl_abap_structdescr=>component_table.
    FIELD-SYMBOLS <tab> TYPE STANDARD TABLE.
    DATA lr_row TYPE REF TO data.

    TYPES temp1 TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
DATA lt_rows TYPE temp1.
    TYPES temp2 TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
DATA lt_cols TYPE temp2.
    DATA temp5 LIKE LINE OF lt_rows.
    DATA temp6 LIKE sy-tabix.
    DATA temp15 LIKE LINE OF lt_cols.
    DATA lr_col LIKE REF TO temp15.
      DATA lv_name TYPE string.
      DATA temp16 TYPE abap_componentdescr.
    DATA struc TYPE REF TO cl_abap_structdescr.
    DATA temp17 TYPE REF TO cl_abap_datadescr.
    DATA o_table_desc TYPE REF TO cl_abap_tabledescr.
    DATA temp18 LIKE LINE OF lt_rows.
    DATA lr_rows LIKE REF TO temp18.
        FIELD-SYMBOLS <row> TYPE any.
        FIELD-SYMBOLS <field> TYPE any.
    SPLIT val AT cl_abap_char_utilities=>newline INTO TABLE lt_rows.
    

    
    
    temp6 = sy-tabix.
    READ TABLE lt_rows INDEX 1 INTO temp5.
    sy-tabix = temp6.
    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
    ENDIF.
    SPLIT temp5 AT ';' INTO TABLE lt_cols.


    
    
    LOOP AT lt_cols REFERENCE INTO lr_col.

      
      lv_name = c_trim_upper( lr_col->* ).
      REPLACE ` ` IN lv_name WITH `_`.

      
      CLEAR temp16.
      temp16-name = lv_name.
      temp16-type = cl_abap_elemdescr=>get_c( 40 ).
      INSERT temp16 INTO TABLE lt_comp.
    ENDLOOP.

    
    struc = cl_abap_structdescr=>get( lt_comp ).
    
    temp17 ?= struc.
    
    o_table_desc = cl_abap_tabledescr=>create(
          p_line_type  = temp17
          p_table_kind = cl_abap_tabledescr=>tablekind_std
          p_unique     = abap_false ).

    CREATE DATA result TYPE HANDLE o_table_desc.

    ASSIGN result->* TO <tab>.

    DELETE lt_rows WHERE table_line IS INITIAL.

    
    
    LOOP AT lt_rows REFERENCE INTO lr_rows FROM 2.

      SPLIT lr_rows->* AT ';' INTO TABLE lt_cols.

      CREATE DATA lr_row TYPE HANDLE struc.

      LOOP AT lt_cols REFERENCE INTO lr_col.
        
        ASSIGN lr_row->* TO <row>.
        
        ASSIGN COMPONENT sy-tabix OF STRUCTURE <row> TO <field>.
        <field> = lr_col->*.
      ENDLOOP.

      INSERT <row> INTO TABLE <tab>.
    ENDLOOP.

  ENDMETHOD.


  METHOD json_parse.
        DATA x TYPE REF TO z2ui5_cx_ajson_error.
    TRY.

        z2ui5_cl_ajson=>parse( val )->to_abap(
          IMPORTING
            ev_container = data ).

        
      CATCH z2ui5_cx_ajson_error INTO x.
        ASSERT x IS NOT BOUND.
    ENDTRY.
  ENDMETHOD.


  METHOD json_stringify.
        DATA temp19 TYPE REF TO z2ui5_if_ajson.
        DATA li_ajson LIKE temp19.
        DATA x TYPE REF TO z2ui5_cx_ajson_error.
    TRY.

        
        temp19 ?= z2ui5_cl_ajson=>create_empty( ).
        
        li_ajson = temp19.
        result = li_ajson->set( iv_path = `/` iv_val = any )->stringify( ).

        
      CATCH z2ui5_cx_ajson_error INTO x.
        ASSERT x IS NOT BOUND.
    ENDTRY.
  ENDMETHOD.


  METHOD rtti_check_class_exists.

    cl_abap_classdescr=>describe_by_name(
       EXPORTING
           p_name      = val
       EXCEPTIONS
        type_not_found = 1 ).
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.

  ENDMETHOD.


  METHOD rtti_check_lang_version_cloud.

    TRY.
        cl_abap_typedescr=>describe_by_name( 'T100' ).
        result = abap_false.
      CATCH cx_root.
        result = abap_true.
    ENDTRY.

  ENDMETHOD.


  METHOD rtti_check_ref_data.

    TRY.
        cl_abap_typedescr=>describe_by_data_ref( val ).
        result = abap_true.
      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.


  METHOD rtti_check_type_kind_dref.

    DATA lv_type_kind TYPE abap_typekind.
    DATA temp3 TYPE xsdboolean.
    lv_type_kind = cl_abap_datadescr=>get_data_type_kind( val ).
    
    temp3 = boolc( lv_type_kind = cl_abap_typedescr=>typekind_dref ).
    result = temp3.

  ENDMETHOD.


  METHOD rtti_get_classname_by_ref.

    DATA lv_classname TYPE abap_abstypename.
    lv_classname = cl_abap_classdescr=>get_class_name( in ).
    result = substring_after( val = lv_classname
                              sub = `\CLASS=` ).

  ENDMETHOD.


  METHOD rtti_get_type_kind.

    result = cl_abap_datadescr=>get_data_type_kind( val ).

  ENDMETHOD.


  METHOD rtti_get_type_name.

    DATA lo_descr TYPE REF TO cl_abap_typedescr.
    DATA temp20 TYPE REF TO cl_abap_elemdescr.
    DATA lo_ele LIKE temp20.
    lo_descr = cl_abap_elemdescr=>describe_by_data( val ).
    
    temp20 ?= lo_descr.
    
    lo_ele = temp20.
    result  = lo_ele->get_relative_name( ).

  ENDMETHOD.


  METHOD rtti_get_t_attri_by_object.

    DATA lo_obj_ref TYPE REF TO cl_abap_typedescr.
    DATA temp21 TYPE REF TO cl_abap_classdescr.
    lo_obj_ref = cl_abap_objectdescr=>describe_by_object_ref( val ).
    
    temp21 ?= lo_obj_ref.
    result   = temp21->attributes.

  ENDMETHOD.


  METHOD rtti_get_t_comp_by_data.
        DATA lo_type TYPE REF TO cl_abap_typedescr.
        DATA temp22 TYPE REF TO cl_abap_structdescr.
        DATA lo_struct LIKE temp22.
            DATA temp23 TYPE REF TO cl_abap_tabledescr.
            DATA lo_tab LIKE temp23.
            DATA temp24 TYPE REF TO cl_abap_structdescr.
                DATA lo_ref TYPE REF TO cl_abap_typedescr.
                DATA temp25 TYPE REF TO cl_abap_structdescr.
                DATA temp26 TYPE REF TO cl_abap_tabledescr.
                DATA temp27 TYPE REF TO cl_abap_structdescr.

    TRY.
        
        lo_type = cl_abap_typedescr=>describe_by_data( val ).
        
        temp22 ?= lo_type.
        
        lo_struct = temp22.
      CATCH cx_root.
        TRY.
            
            temp23 ?= lo_type.
            
            lo_tab = temp23.
            
            temp24 ?= lo_tab->get_table_line_type( ).
            lo_struct = temp24.
          CATCH cx_root.
            TRY.
                
                lo_ref = cl_abap_typedescr=>describe_by_data_ref( val ).
                
                temp25 ?= lo_ref.
                lo_struct = temp25.
              CATCH cx_root.
                
                temp26 ?= lo_ref.
                lo_tab = temp26.
                
                temp27 ?= lo_tab->get_table_line_type( ).
                lo_struct = temp27.
            ENDTRY.
        ENDTRY.
    ENDTRY.

    result = lo_struct->get_components( ).

  ENDMETHOD.


  METHOD source_get_file_types.

    DATA lv_types TYPE string.
    lv_types = `abap, abc, actionscript, ada, apache_conf, applescript, asciidoc, assembly_x86, autohotkey, batchfile, bro, c9search, c_cpp, cirru, clojure, cobol, coffee, coldfusion, csharp, css, curly, d, dart, diff, django, dockerfile, ` &&
`dot, drools, eiffel, yaml, ejs, elixir, elm, erlang, forth, fortran, ftl, gcode, gherkin, gitignore, glsl, gobstones, golang, groovy, haml, handlebars, haskell, haskell_cabal, haxe, hjson, html, html_elixir, html_ruby, ini, io, jack, jade, java, ja` &&
      `vascri` &&
`pt, json, jsoniq, jsp, jsx, julia, kotlin, latex, lean, less, liquid, lisp, live_script, livescript, logiql, lsl, lua, luapage, lucene, makefile, markdown, mask, matlab, mavens_mate_log, maze, mel, mips_assembler, mipsassembler, mushcode, mysql, ni` &&
`x, nsis, objectivec, ocaml, pascal, perl, pgsql, php, plain_text, powershell, praat, prolog, properties, protobuf, python, r, razor, rdoc, rhtml, rst, ruby, rust, sass, scad, scala, scheme, scss, sh, sjs, smarty, snippets, soy_template, space, sql,` &&
      ` sqlserver, stylus, svg, swift, swig, tcl, tex, text, textile, toml, tsx, twig, typescript, vala, vbscript, velocity, verilog, vhdl, wollok, xml, xquery, terraform, slim, redshift, red, puppet, php_laravel_blade, mixal, jssm, fsharp, edifact,` &&
      ` csp, cssound_score, cssound_orchestra, cssound_document`.
    SPLIT lv_types AT ',' INTO TABLE result.

  ENDMETHOD.


  METHOD source_get_method.

    DATA lt_source TYPE string_table.
    lt_source =  method_get_source(
         iv_classname  = iv_classname
         iv_methodname = iv_methodname
      ).

    result = source_method_to_file( it_source = lt_source ).

  ENDMETHOD.


  METHOD source_method_to_file.

    DATA lv_source LIKE LINE OF it_source.
    LOOP AT it_source INTO lv_source.
      TRY.
          result = result && lv_source+1 && cl_abap_char_utilities=>newline.
        CATCH cx_root.
      ENDTRY.
    ENDLOOP.

  ENDMETHOD.


  METHOD sql_get_by_string.

    DATA temp28 TYPE string.
    DATA lv_sql LIKE temp28.
    DATA lv_dummy TYPE string.
    DATA lv_tab TYPE string.
    temp28 = val.
    
    lv_sql = temp28.
    REPLACE ALL OCCURRENCES OF ` ` IN lv_sql  WITH ``.
    lv_sql = to_upper( lv_sql ).
    
    
    SPLIT lv_sql AT 'SELECTFROM' INTO lv_dummy lv_tab.
    SPLIT lv_tab AT `FIELDS` INTO lv_tab lv_dummy.

    result-table = lv_tab.

  ENDMETHOD.


  METHOD time_get_date_by_stampl.

    DATA lv_dummy TYPE t.
    CONVERT TIME STAMP val TIME ZONE sy-zonlo INTO DATE result TIME lv_dummy.

  ENDMETHOD.


  METHOD time_get_timestampl.
    GET TIME STAMP FIELD result.
  ENDMETHOD.


  METHOD time_get_time_by_stampl.

    DATA lv_dummy TYPE d.
    CONVERT TIME STAMP val TIME ZONE sy-zonlo INTO DATE lv_dummy TIME result.

  ENDMETHOD.


  METHOD time_substract_seconds.

    result = cl_abap_tstmp=>subtractsecs( tstmp = time
                                          secs  = seconds ).
  ENDMETHOD.


  METHOD url_param_create_url.

    DATA ls_param LIKE LINE OF t_params.
    LOOP AT t_params INTO ls_param.
      result = result && ls_param-n && `=` && ls_param-v && `&`.
    ENDLOOP.
    result = shift_right( val = result
                          sub = `&` ).

  ENDMETHOD.


  METHOD url_param_get.

    DATA lt_params TYPE z2ui5_if_types=>ty_t_name_value.
    DATA lv_val TYPE string.
    DATA temp29 TYPE string.
    DATA temp30 TYPE z2ui5_if_types=>ty_s_name_value.
    lt_params = url_param_get_tab( url ).
    
    lv_val = c_trim_lower( val ).
    
    CLEAR temp29.
    
    READ TABLE lt_params INTO temp30 WITH KEY n = lv_val.
    IF sy-subrc = 0.
      temp29 = temp30-v.
    ENDIF.
    result = temp29.

  ENDMETHOD.


  METHOD url_param_get_tab.

    DATA lv_search TYPE string.
    DATA lv_search2 TYPE string.
    DATA temp31 TYPE string.
    TYPES temp3 TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
DATA lt_param TYPE temp3.
    DATA temp32 LIKE LINE OF lt_param.
    DATA lr_param LIKE REF TO temp32.
      DATA lv_name TYPE string.
      DATA lv_value TYPE string.
      DATA temp33 TYPE z2ui5_if_types=>ty_s_name_value.
    lv_search = replace( val  = i_val
                               sub  = `%3D`
                               with = '='
                               occ  = 0 ).
    lv_search = shift_left( val = lv_search
                            sub = `?` ).
    lv_search = c_trim_lower( lv_search ).

    
    lv_search2 = substring_after( val = lv_search
                                        sub = `&sap-startup-params=` ).
    
    IF lv_search2 IS NOT INITIAL.
      temp31 = lv_search2.
    ELSE.
      temp31 = lv_search.
    ENDIF.
    lv_search = temp31.

    lv_search2 = substring_after( val = c_trim_lower( lv_search )
                                  sub = `?` ).
    IF lv_search2 IS NOT INITIAL.
      lv_search = lv_search2.
    ENDIF.

    

    SPLIT lv_search AT `&` INTO TABLE lt_param.

    
    
    LOOP AT lt_param REFERENCE INTO lr_param.
      
      
      SPLIT lr_param->* AT `=` INTO lv_name lv_value.
      
      CLEAR temp33.
      temp33-n = c_trim_lower( lv_name ).
      temp33-v = c_trim_lower( lv_value ).
      INSERT temp33 INTO TABLE rt_params.
    ENDLOOP.

  ENDMETHOD.


  METHOD url_param_set.

    DATA lt_params TYPE z2ui5_if_types=>ty_t_name_value.
    DATA lv_n TYPE string.
    DATA temp34 LIKE LINE OF lt_params.
    DATA lr_params LIKE REF TO temp34.
      DATA temp35 TYPE z2ui5_if_types=>ty_s_name_value.
    lt_params = url_param_get_tab( url ).
    
    lv_n = c_trim_lower( name ).

    
    
    LOOP AT lt_params REFERENCE INTO lr_params
        WHERE n = lv_n.
      lr_params->v = c_trim_lower( value ).
    ENDLOOP.
    IF sy-subrc <> 0.
      
      CLEAR temp35.
      temp35-n = lv_n.
      temp35-v = c_trim_lower( value ).
      INSERT temp35 INTO TABLE lt_params.
    ENDIF.

    result = url_param_create_url( lt_params ).

  ENDMETHOD.


  METHOD user_get_tech.
    result = sy-uname.
  ENDMETHOD.


  METHOD xml_parse.

    CALL TRANSFORMATION id
        SOURCE XML xml
        RESULT data = any.

  ENDMETHOD.


  METHOD xml_srtti_parse.

    DATA srtti TYPE REF TO object.
    DATA rtti_type TYPE REF TO cl_abap_typedescr.
    DATA lo_datadescr TYPE REF TO cl_abap_datadescr.
      DATA lv_link TYPE string.
      DATA lv_text TYPE string.
    FIELD-SYMBOLS <variable> TYPE any.

    IF rtti_check_class_exists( 'ZCL_SRTTI_TYPEDESCR' ) = abap_false.

      
      lv_link = `https://github.com/sandraros/S-RTTI`.
      
      lv_text = `<p>Please install the open-source project S-RTTI by sandraros and try again: <a href="` &&
                       lv_link && `" style="color:blue; font-weight:600;" target="_blank">(link)</a></p>`.

      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = lv_text.

    ENDIF.

    CALL TRANSFORMATION id SOURCE XML rtti_data RESULT srtti = srtti.

    CALL METHOD srtti->('GET_RTTI')
      RECEIVING
        rtti = rtti_type.

    lo_datadescr ?= rtti_type.

    CREATE DATA e_data TYPE HANDLE lo_datadescr.
    
    ASSIGN e_data->* TO <variable>.
    CALL TRANSFORMATION id SOURCE XML rtti_data RESULT dobj = <variable>.

  ENDMETHOD.


  METHOD xml_srtti_stringify.

    DATA srtti TYPE REF TO object.
      DATA lv_link TYPE string.
      DATA lv_text TYPE string.
    DATA lv_classname TYPE c LENGTH 19.
    IF rtti_check_class_exists( 'ZCL_SRTTI_TYPEDESCR' ) = abap_false.

      
      lv_link = `https://github.com/sandraros/S-RTTI`.
      
      lv_text = `<p>Please install the open-source project S-RTTI by sandraros and try again: <a href="` &&
                       lv_link && `" style="color:blue; font-weight:600;" target="_blank">(link)</a></p>`.

      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = lv_text.

    ENDIF.

    
    lv_classname = 'ZCL_SRTTI_TYPEDESCR'.
    CALL METHOD (lv_classname)=>('CREATE_BY_DATA_OBJECT')
      EXPORTING
        data_object = data
      RECEIVING
        srtti       = srtti.

    CALL TRANSFORMATION id SOURCE srtti = srtti dobj = data RESULT XML result.

  ENDMETHOD.


  METHOD xml_stringify.

    CALL TRANSFORMATION id
         SOURCE data = any
         RESULT XML result
         OPTIONS data_refs = `heap-or-create`.

  ENDMETHOD.


  METHOD x_check_raise.

    IF when = abap_true.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error EXPORTING val = v.
    ENDIF.

  ENDMETHOD.


  METHOD x_raise.

    RAISE EXCEPTION TYPE z2ui5_cx_util_error EXPORTING val = v.

  ENDMETHOD.
ENDCLASS.
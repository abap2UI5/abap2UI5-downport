CLASS z2ui5_cl_core_bind_srv DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA mo_app TYPE REF TO z2ui5_cl_core_app .
    DATA mr_attri TYPE REF TO z2ui5_if_core_types=>ty_s_attri .
    DATA ms_config TYPE z2ui5_if_core_types=>ty_s_bind_config .
    DATA mv_type TYPE string .

    METHODS constructor
      IMPORTING
        !app TYPE REF TO z2ui5_cl_core_app .

    METHODS main_local
      IMPORTING
        !val          TYPE data
        !config       TYPE z2ui5_if_core_types=>ty_s_bind_config OPTIONAL
      RETURNING
        VALUE(result) TYPE string .

    METHODS main
      IMPORTING
        !val          TYPE REF TO data
        !type         TYPE string
        !config       TYPE z2ui5_if_core_types=>ty_s_bind_config OPTIONAL
      RETURNING
        VALUE(result) TYPE string .

    METHODS main_cell
      IMPORTING
        !val          TYPE data
        !type         TYPE string
        !config       TYPE z2ui5_if_core_types=>ty_s_bind_config OPTIONAL
      RETURNING
        VALUE(result) TYPE string .

    METHODS clear
      IMPORTING
        !val TYPE string.

    METHODS bind_tab_cell
      IMPORTING
        !iv_name      TYPE string
        !i_val        TYPE data
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.

    METHODS get_client_name
      RETURNING
        VALUE(result) TYPE string.

    METHODS update_model_attri.

    METHODS check_raise_existing.

    METHODS check_raise_new.


  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_core_bind_srv IMPLEMENTATION.


  METHOD bind_tab_cell.

    FIELD-SYMBOLS <ele>  TYPE any.
    FIELD-SYMBOLS <row>  TYPE any.
    DATA lr_ref_in TYPE REF TO data.

    FIELD-SYMBOLS <tab> TYPE STANDARD TABLE.
    DATA lt_attri TYPE abap_component_tab.
    FIELD-SYMBOLS <comp> LIKE LINE OF lt_attri.
        DATA temp1 TYPE string.
    ASSIGN ms_config-tab->* TO <tab>.
    READ TABLE <tab> INDEX ms_config-tab_index ASSIGNING <row>.

    
    lt_attri = z2ui5_cl_util=>rtti_get_t_comp_by_data( ms_config-tab ).
    
    LOOP AT lt_attri ASSIGNING <comp>.

      ASSIGN COMPONENT <comp>-name OF STRUCTURE <row> TO <ele>.
      GET REFERENCE OF <ele> INTO lr_ref_in.

      IF i_val = lr_ref_in.
        
        temp1 = ms_config-tab_index - 1.
        result = iv_name && '/' && shift_right( temp1 ) && '/' && <comp>-name.
        RETURN.
      ENDIF.

    ENDLOOP.

    RAISE EXCEPTION TYPE z2ui5_cx_util_error
      EXPORTING
        val = `BINDING_ERROR_TAB_CELL_LEVEL - No class attribute for binding found - Please check if the binded values are public attributes of your class`.

  ENDMETHOD.


  METHOD check_raise_existing.

    IF mr_attri->bind_type <> mv_type.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = `<p>Binding Error - Two different binding types for same attribute used (` && mr_attri->name && `).`.
    ENDIF.

    IF mr_attri->custom_mapper IS BOUND AND mr_attri->custom_mapper <> ms_config-custom_mapper.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = `<p>Binding Error - Two different mapper for same attribute used (` && mr_attri->name && `).`.
    ENDIF.

    IF mr_attri->custom_mapper_back IS BOUND AND mr_attri->custom_mapper_back <> ms_config-custom_mapper_back.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = `<p>Binding Error - Two different mapper back for same attribute used (` && mr_attri->name && `).`.
    ENDIF.

    IF mr_attri->custom_filter IS BOUND AND mr_attri->custom_filter <> ms_config-custom_filter.
      RAISE EXCEPTION TYPE z2ui5_cx_util_error
        EXPORTING
          val = `<p>Binding Error - Two different filter for same attribute used (` && mr_attri->name && `).`.
    ENDIF.

  ENDMETHOD.


  METHOD check_raise_new.
          DATA temp2 TYPE REF TO if_serializable_object.
          DATA li_serial LIKE temp2.
          DATA temp3 TYPE REF TO if_serializable_object.
          DATA li_serial2 LIKE temp3.

    IF mr_attri->custom_filter_back IS BOUND.
      TRY.
          
          temp2 ?= mr_attri->custom_filter_back.
          
          li_serial = temp2.
        CATCH cx_root.
          RAISE EXCEPTION TYPE z2ui5_cx_util_error
            EXPORTING
              val = `<p>custom_filter_back used but it is not serializable, please use if_serializable_object`.

      ENDTRY.
    ENDIF.

    IF mr_attri->custom_filter_back IS BOUND.
      TRY.
          
          temp3 ?= mr_attri->custom_mapper_back.
          
          li_serial2 = temp3.
        CATCH cx_root.
          RAISE EXCEPTION TYPE z2ui5_cx_util_error
            EXPORTING
              val = `<p>mo_custom_mapper_back used but it is not serializable, please use if_serializable_object`.

      ENDTRY.
    ENDIF.

  ENDMETHOD.


  METHOD clear.

    FIELD-SYMBOLS <temp4> LIKE LINE OF mo_app->mt_attri.
    DATA temp5 LIKE sy-tabix.
    DATA temp6 LIKE LINE OF mo_app->mt_attri.
    DATA lr_bind2 LIKE REF TO temp6.
    temp5 = sy-tabix.
    READ TABLE mo_app->mt_attri WITH KEY name = val ASSIGNING <temp4>.
    sy-tabix = temp5.
    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
    ENDIF.
    <temp4>-check_dissolved = abap_false.

    
    
    LOOP AT mo_app->mt_attri REFERENCE INTO lr_bind2.
      IF lr_bind2->name CS val && `-`.
        DELETE mo_app->mt_attri.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.


  METHOD constructor.

    mo_app = app.

  ENDMETHOD.


  METHOD get_client_name.
    DATA temp7 TYPE string.

    result = replace( val = mr_attri->name sub = `-` with = `/` ).
    result = replace( val = result sub = `>` with = `*` ).
    
    IF mv_type = z2ui5_if_core_types=>cs_bind_type-two_way.
      temp7 = `/EDIT`.
    ELSE.
      CLEAR temp7.
    ENDIF.
    result = temp7 && `/` &&  result.

  ENDMETHOD.


  METHOD main.

    IF z2ui5_cl_util=>check_bound_a_not_inital( config-tab ) IS NOT INITIAL.

      result = main_cell(
          val    = val
          type   = type
          config = config ).

      RETURN.
    ENDIF.

    ms_config = config.
    mv_type   = type.
    mr_attri  = mo_app->attri_get_by_data( val ).

    IF mr_attri->bind_type IS NOT INITIAL.
      check_raise_existing( ).
      result = mr_attri->name_client.
    ELSE.
      check_raise_new( ).
      update_model_attri( ).
      result = mr_attri->name_client.
    ENDIF.

    IF ms_config-path_only = abap_false.
      result = `{` && result && `}`.
    ENDIF.

  ENDMETHOD.


  METHOD main_cell.
    DATA lo_bind TYPE REF TO z2ui5_cl_core_bind_srv.
    DATA temp8 TYPE z2ui5_if_core_types=>ty_s_bind_config.

    ms_config = config.
    mv_type   = type.

    
    CREATE OBJECT lo_bind TYPE z2ui5_cl_core_bind_srv EXPORTING APP = mo_app.
    
    CLEAR temp8.
    temp8-path_only = abap_true.
    result = lo_bind->main( val = config-tab type = type config = temp8 ).

    result = bind_tab_cell(
          iv_name     = result
          i_val       = val ).

    IF ms_config-path_only = abap_false.
      result = `{` && result && `}`.
    ENDIF.

  ENDMETHOD.


  METHOD main_local.
          DATA temp9 TYPE REF TO z2ui5_if_ajson.
          DATA ajson LIKE temp9.
          DATA temp10 TYPE REF TO z2ui5_if_ajson.
        DATA lv_id TYPE string.
        DATA temp11 TYPE z2ui5_if_core_types=>ty_s_attri.
        DATA x TYPE REF TO cx_root.
    TRY.

        IF config-custom_mapper IS BOUND.
          
          temp9 ?= z2ui5_cl_ajson=>create_empty( ii_custom_mapping = config-custom_mapper ).
          
          ajson = temp9.
        ELSE.
          
          temp10 ?= z2ui5_cl_ajson=>create_empty( ii_custom_mapping = z2ui5_cl_ajson_mapping=>create_upper_case( ) ).
          ajson = temp10.
        ENDIF.

        ajson->set( iv_path = `/` iv_val = val ).

        IF config-custom_filter IS BOUND.
          ajson = ajson->filter( config-custom_filter ).
        ELSE.
          ajson = ajson->filter( z2ui5_cl_ajson_filter_lib=>create_empty_filter( ) ).
        ENDIF.

        
        lv_id = to_upper( z2ui5_cl_util=>uuid_get_c22( ) ).
        
        CLEAR temp11.
        temp11-name_client = |/{ lv_id }|.
        temp11-name = lv_id.
        temp11-json_bind_local = ajson.
        temp11-bind_type = z2ui5_if_core_types=>cs_bind_type-one_time.
        INSERT temp11
        INTO TABLE mo_app->mt_attri.

        result = |/{ lv_id }|.

        IF ms_config-path_only = abap_false.
          result = `{` && result && `}`.
        ENDIF.

        
      CATCH cx_root INTO x.
        ASSERT x IS NOT BOUND.
    ENDTRY.
  ENDMETHOD.


  METHOD update_model_attri.
    DATA temp12 TYPE z2ui5_if_core_types=>ty_s_attri-view.

    mr_attri->bind_type     = mv_type.
    mr_attri->view          = ms_config-view.
    mr_attri->custom_filter = ms_config-custom_filter.
    mr_attri->custom_filter_back = ms_config-custom_filter_back.
    mr_attri->custom_mapper = ms_config-custom_mapper.
    mr_attri->custom_mapper_back = ms_config-custom_mapper_back.
    
    IF ms_config-view IS INITIAL.
      temp12 = z2ui5_if_client=>cs_view-main.
    ELSE.
      temp12 = ms_config-view.
    ENDIF.
    mr_attri->view         = temp12.
    mr_attri->name_client    = get_client_name( ).

  ENDMETHOD.
ENDCLASS.
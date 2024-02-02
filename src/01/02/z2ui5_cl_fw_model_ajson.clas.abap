CLASS z2ui5_cl_fw_model_ajson DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS front_to_back
      IMPORTING
        app         TYPE REF TO object
        viewname    TYPE string
        t_attri     TYPE  z2ui5_cl_fw_binding=>ty_t_attri
        json_string TYPE string ##NEEDED.

    CLASS-METHODS back_to_front
      IMPORTING
        app           TYPE REF TO object
        t_attri       TYPE  z2ui5_cl_fw_binding=>ty_t_attri
      RETURNING
        VALUE(result) TYPE string ##NEEDED.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_fw_model_ajson IMPLEMENTATION.


  METHOD back_to_front.
        DATA temp1 TYPE REF TO z2ui5_if_ajson.
        DATA ajson_result LIKE temp1.
        DATA temp2 LIKE LINE OF t_attri.
        DATA lr_attri LIKE REF TO temp2.
              DATA temp3 TYPE REF TO z2ui5_if_ajson.
              DATA ajson LIKE temp3.
            DATA lv_name_back TYPE string.
            FIELD-SYMBOLS <attribute> TYPE any.
              DATA lv_path LIKE lr_attri->name_front.
            DATA li_filter TYPE REF TO z2ui5_if_ajson_filter.
        DATA x TYPE REF TO cx_root.
    TRY.

        
        temp1 ?= z2ui5_cl_ajson=>create_empty( ).
        
        ajson_result = temp1.

        
        
        LOOP AT t_attri REFERENCE INTO lr_attri WHERE bind_type <> ``.


          "(1) set pretty mode
          CASE lr_attri->pretty_name.

            WHEN z2ui5_if_client=>cs_pretty_mode-none.
              
              temp3 ?= z2ui5_cl_ajson=>create_empty( ii_custom_mapping = z2ui5_cl_ajson_mapping=>create_upper_case( ) ).
              
              ajson = temp3.

            WHEN z2ui5_if_client=>cs_pretty_mode-camel_case.
              ajson  = z2ui5_cl_ajson=>create_empty( ii_custom_mapping = z2ui5_cl_ajson_mapping=>create_camel_case( iv_first_json_upper = abap_false ) ).

            WHEN OTHERS.
              ASSERT `` = `ERROR_UNKNOWN_PRETTY_MODE`.
          ENDCASE.


          "(2) read attribute of end-user app
          IF lr_attri->bind_type = z2ui5_cl_fw_binding=>cs_bind_type-one_way
          OR lr_attri->bind_type = z2ui5_cl_fw_binding=>cs_bind_type-two_way.
            
            lv_name_back = `APP->` && lr_attri->name.
            
            ASSIGN (lv_name_back) TO <attribute>.
            ASSERT sy-subrc = 0.
          ENDIF.


          "(3) write into json
          CASE lr_attri->bind_type.

            WHEN z2ui5_cl_fw_binding=>cs_bind_type-one_time.
              
              lv_path = lr_attri->name_front.
              ajson->set( iv_ignore_empty = abap_false iv_path = `/` iv_val = lr_attri->ajson_local ).

            WHEN z2ui5_cl_fw_binding=>cs_bind_type-one_way.
              lv_path = lr_attri->name_front.
              ajson->set( iv_ignore_empty = abap_false iv_path = `/` iv_val =  <attribute> ).

            WHEN z2ui5_cl_fw_binding=>cs_bind_type-two_way.
              lv_path =  z2ui5_cl_fw_binding=>cv_model_edit_name && `/` && lr_attri->name_front.
              ajson->set( iv_ignore_empty = abap_false iv_path = `/` iv_val =  <attribute> ).

            WHEN OTHERS.
              ASSERT `` = `ERROR_UNKNOWN_BIND_MODE`.
          ENDCASE.


          "(4) set compress mode
          "todo performance - add and filter in a single loop
          IF lr_attri->compress_custom IS NOT INITIAL.
            
            CREATE OBJECT li_filter TYPE (lr_attri->compress_custom).
            ajson =  ajson->filter( li_filter ).

          ELSEIF lr_attri->compress = z2ui5_if_client=>cs_compress_mode-full.
            "obsolete - is this still needed? use compress_custom instead
            ASSERT `` = `OBSOLET_COMPRESS_MODE_USE_CUSTOM_INSTEAD`.

          ELSEIF lr_attri->compress = z2ui5_if_client=>cs_compress_mode-standard.
            ajson =  ajson->filter( z2ui5_cl_ajson_filter_lib=>create_empty_filter( ) ).

          ELSE.
            ASSERT `` = `ERROR_UNKNOW_COMPRESS_MODE`.
          ENDIF.


          "(5) write into result
          "todo performance - write directly into result
          ajson_result->set( iv_path = `/` && lv_path iv_val = ajson ).
        ENDLOOP.

        result = ajson_result->stringify( ).

        
      CATCH cx_root INTO x.
        ASSERT x IS NOT BOUND.
    ENDTRY.
  ENDMETHOD.


  METHOD front_to_back.
        DATA ajson TYPE REF TO z2ui5_if_ajson.
        DATA temp4 LIKE LINE OF t_attri.
        DATA lr_attri LIKE REF TO temp4.
          DATA lv_name_back TYPE string.
          FIELD-SYMBOLS <backend> TYPE any.
          DATA ajson_val TYPE REF TO z2ui5_if_ajson.
        DATA x TYPE REF TO cx_root.
    TRY.

        
        ajson = z2ui5_cl_ajson=>parse( json_string )->slice( `/EDIT` ).

        
        
        LOOP AT t_attri REFERENCE INTO lr_attri
            WHERE bind_type = z2ui5_cl_fw_binding=>cs_bind_type-two_way
            AND  viewname  = viewname.

          
          lv_name_back = `APP->` && lr_attri->name.
          
          ASSIGN (lv_name_back) TO <backend>.
          ASSERT sy-subrc = 0.

          
          ajson_val = ajson->slice( `/` && lr_attri->name_front ).

          TRY.

              CASE lr_attri->pretty_name.

                WHEN z2ui5_if_client=>cs_pretty_mode-none.


                WHEN z2ui5_if_client=>cs_pretty_mode-camel_case.
                  ajson_val  = ajson_val->map( z2ui5_cl_ajson_mapping=>create_to_snake_case( ) ).

                WHEN OTHERS.
                  ASSERT `` = `ToDo -> UNKNOWN_PRETTY_MODE`.
              ENDCASE.

              ajson_val->to_abap(
                IMPORTING
                  ev_container     = <backend> ).

            CATCH cx_root.

          ENDTRY.
        ENDLOOP.

        
      CATCH cx_root INTO x.
        ASSERT x IS NOT BOUND.
    ENDTRY.
  ENDMETHOD.

ENDCLASS.

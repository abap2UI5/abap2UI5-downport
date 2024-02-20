CLASS z2ui5_cl_app_search_apps DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES z2ui5_if_app.

    TYPES:
      BEGIN OF ty_app,
        name    TYPE string,
        visible TYPE abap_bool,
      END OF ty_app.
    DATA mt_apps TYPE STANDARD TABLE OF ty_app WITH DEFAULT KEY.
    DATA mt_favs TYPE STANDARD TABLE OF ty_app WITH DEFAULT KEY.
    DATA ms_app_sel TYPE ty_app.

    DATA check_initialized TYPE abap_bool.
    DATA mv_selected_key TYPE string.

    DATA:
      BEGIN OF ms_search,
        check_hide_samples TYPE abap_bool,
        check_hide_system  TYPE abap_bool,
        search_field       TYPE string,
        number             TYPE string,
      END OF ms_search.

    DATA:
      BEGIN OF ms_favorites,
        check_cloud_ready   TYPE abap_bool,
        check_premise_ready TYPE abap_bool,
        search_field        TYPE string,
        number              TYPE string,
      END OF ms_favorites.

    TYPES:
      BEGIN OF ty_s_app,
        name       TYPE string,
        descr      TYPE string,
        classname  TYPE string,
        check_hide TYPE abap_bool,
      END OF ty_s_app.
    TYPES ty_t_app TYPE STANDARD TABLE OF ty_s_app WITH DEFAULT KEY.

    TYPES:
      BEGIN OF ty_s_repo,
        name                 TYPE string,
        descr                TYPE string,
        author_link          TYPE string,
        author_name          TYPE string,
        check_abap_for_cloud TYPE abap_bool,
        check_standard_abap  TYPE abap_bool,
        link                 TYPE string,
        t_app                TYPE ty_t_app,
        check_installed      TYPE abap_bool,
        number_of_app        TYPE i,
      END OF ty_s_repo.
    TYPES ty_t_repo TYPE STANDARD TABLE OF ty_s_repo WITH DEFAULT KEY.

    DATA mt_git_repos TYPE ty_t_repo.

  PROTECTED SECTION.
    METHODS search.
    METHODS view_display
      IMPORTING
        client TYPE REF TO z2ui5_if_client.
    METHODS view_nest_display.
    METHODS view_action_sheet
      IMPORTING
        val TYPE clike.

    DATA client TYPE REF TO z2ui5_if_client.
  PRIVATE SECTION.
ENDCLASS.



CLASS z2ui5_cl_app_search_apps IMPLEMENTATION.


  METHOD search.

    DATA lv_counter TYPE i.

    DATA temp1 LIKE LINE OF mt_apps.
    DATA lr_app LIKE REF TO temp1.
    DATA temp2 TYPE string.
    LOOP AT mt_apps REFERENCE INTO lr_app.

      lr_app->visible = abap_false.

      IF ms_search-check_hide_samples = abap_true
      AND lr_app->name CS 'Z2UI5_CL_DEMO'.
        CONTINUE.
      ENDIF.
      IF ms_search-check_hide_system = abap_true
        AND lr_app->name CS `Z2UI5_CL_`
        AND lr_app->name NS `Z2UI5_CL_DEMO`.
        CONTINUE.
      ENDIF.

      IF lr_app->name CS ms_search-search_field.
        lr_app->visible = abap_true.
        lv_counter = lv_counter + 1.
      ENDIF.
    ENDLOOP.
    
    temp2 = lv_counter.
    ms_search-number = `Result: ` && temp2.

  ENDMETHOD.


  METHOD view_action_sheet.

    DATA action_sheet_view TYPE REF TO z2ui5_cl_xml_view.
    DATA temp3 TYPE z2ui5_if_types=>ty_s_name_value.
    action_sheet_view = z2ui5_cl_xml_view=>factory_popup( ).

    
    CLEAR temp3.
    temp3-n = `core:require`.
    temp3-v = `{ MessageToast: 'sap/m/MessageToast' }`.
    action_sheet_view->_generic_property( temp3 ).

    action_sheet_view->action_sheet( placement        = `Botton`
                                     showcancelbutton = abap_true
                                     title            = `Choose Your Action`
      )->button( text  = `Add to Favorite`
*                 icon  = `sap-icon://accept`
                 press = client->_event( `ADD_TO_FAVS` )
*      )->button( text  = `Add to Favorite as external Link`
**                 icon  = `sap-icon://decline`
*                 press = `MessageToast.show('selected action is ' + ${$source>/text})`
                  ).

    client->popover_display( xml   = action_sheet_view->stringify( )
                             by_id = val ).

  ENDMETHOD.


  METHOD view_display.


    DATA page TYPE REF TO z2ui5_cl_xml_view.
    DATA temp4 TYPE string_table.
    DATA pages TYPE REF TO z2ui5_cl_xml_view.
    DATA page_all TYPE REF TO z2ui5_cl_xml_view.
    DATA temp6 LIKE LINE OF mt_apps.
    DATA lr_app LIKE REF TO temp6.
      DATA lv_tabix LIKE sy-tabix.
      DATA temp7 TYPE string_table.
    DATA page_online TYPE REF TO z2ui5_cl_xml_view.
    DATA temp9 TYPE REF TO lcl_github.
    DATA temp10 LIKE LINE OF mt_git_repos.
    DATA lr_repo LIKE REF TO temp10.
      DATA temp11 LIKE LINE OF lr_repo->t_app.
      DATA lr_app2 LIKE REF TO temp11.
    DATA item TYPE REF TO z2ui5_cl_xml_view.
    DATA row TYPE REF TO z2ui5_cl_xml_view.
    page = z2ui5_cl_xml_view=>factory(
          )->shell(
*          )->page(
*                title = 'abap2UI5 - Search Apps'
*                navbuttonpress = client->_event( 'BACK' )
*                shownavbutton = xsdbool( client->get( )-s_draft-id_prev_app_stack is not initial )
*           )->header_content(
*                )->search_field(
*          value  = client->_bind_edit( mv_search_value )
*          search = client->_event( 'ON_SEARCH' )
*          change = client->_event( 'ON_SEARCH' )
*          width  = `17.5rem`
*          id     = `SEARCH`
*           )->get_parent( ).
      )->tool_page(
                          )->header( `tnt`
                            )->tool_header(
                            )->title( `abap2UI5 - App Finder`
*                            )->text( width = `10%`
*                                  )->link( text = `Visit the abap2UI5 Project`
*                            )->button( text = `Bak` press = client->_event( 'BACK' )
                              )->get_parent(
                            )->get_parent( )->sub_header( `tnt`
                            )->tool_header( ).

    
    CLEAR temp4.
    INSERT `NavCon` INTO TABLE temp4.
    INSERT `${$parameters>/selectedKey}` INTO TABLE temp4.
    
    pages = page->icon_tab_header( selectedkey    = client->_bind_edit( mv_selected_key )
*                                                  select = client->_event( `OnSelectIconTabBar` )
*                                                  select = client->_event_client(
*              action = 'NAV_TO'
*              t_arg  = value #( ( `NavCon` ) ( `${$parameters}` ) ) )
                                                 select = client->_event_client(
                                                    val   = client->cs_event-nav_container_to
                                                    t_arg = temp4 )
                                                 mode   = `Inline`
                                 )->items(
                                   )->icon_tab_filter( key  = `page_favs`
                                                       text = `Favorites` )->get_parent(
                                   )->icon_tab_filter( key  = `page_all`
                                                       text = `Local` )->get_parent(
                                   )->icon_tab_filter( key  = `page_online`
                                                       text = `GitHub`
*                                      )->items(
*                                         )->icon_tab_filter( key = `page11` text = `User 1` )->get_parent(
*                                         )->icon_tab_filter( key = `page32` text = `User 2` )->get_parent(
*                                         )->icon_tab_filter( key = `page33` text = `User 3`
                                 )->get_parent( )->get_parent( )->get_parent( )->get_parent( )->get_parent(
                               )->main_contents(
*                                )->button( text = `page1` press = client->_event_client( action = 'NAV_TO' t_arg  = VALUE #( ( `NavCon` ) ( `page1` ) ) )
*                                )->button( text = `page2` press = client->_event_client( action = 'NAV_TO' t_arg  = VALUE #( ( `NavCon` ) ( `page2` ) ) )
*                                )->button( text = `page3` press = client->_event_client( action = 'NAV_TO' t_arg  = VALUE #( ( `NavCon` ) ( `page3` ) ) )
                                 )->nav_container( id                    = `NavCon`
                                                   initialpage           = `page_favs`
                                                   defaulttransitionname = `flip`
                                    )->pages( ).

    pages->page(
                           title = `Result: ` && client->_bind( ms_favorites-number )
            id                   = `page_favs`
                )->header_content(
                )->button( text = `Clear` press = client->_event( `ON_FAVS_CLEAR` )
*      )->search_field(
*      value  = client->_bind_edit( ms_favorites-search_field )
*      search = client->_event( 'ON_SEARCH_FAVS' )
*      change = client->_event( 'ON_SEARCH_FAVS' )
*      width  = `17.5rem`
*id     = `SEARCH`
      )->get_parent( ).

    
    page_all = pages->page(
      title     = client->_bind( ms_search-number  )
             id = `page_all`
                 )->header_content(
                             )->checkbox( text     = `Hide Samples`
                                  selected = client->_bind_edit( ms_search-check_hide_samples )
                                  select = client->_event( `ON_SEARCH_ALL` )
                              )->checkbox( text     = `Hide System`
                                  selected = client->_bind_edit( ms_search-check_hide_system )
                                   select = client->_event( `ON_SEARCH_ALL` )
      )->search_field(
      value  = client->_bind_edit( ms_search-search_field )
      search = client->_event( 'ON_SEARCH_ALL' )
      change = client->_event( 'ON_SEARCH_ALL' )
      width  = `17.5rem`
      id     = `SEARCH`
      )->get_parent( ).


    
    
    LOOP AT mt_apps REFERENCE INTO lr_app.
      
      lv_tabix = sy-tabix.
      
      CLEAR temp7.
      INSERT `${$source>/header}` INTO TABLE temp7.
      INSERT `${$source>/header}` INTO TABLE temp7.
      page_all->generic_tile(
        class   = 'sapUiTinyMarginBegin sapUiTinyMarginTop tileLayout'
        press   = client->_event( val = `ON_PRESS`   t_arg = temp7 )
        header  = client->_bind( val = lr_app->name    tab = mt_apps tab_index = lv_tabix )
        visible = client->_bind( val = lr_app->visible tab = mt_apps tab_index = lv_tabix ) ).
    ENDLOOP.

    view_nest_display( ).

    
    page_online = pages->page(
*            title = `Your app is not listed here? Fell free to send a PR and extend this page`
                   id = `page_online`
                    )->header_content(
                    )->text(
                    )->link( text = `Install with abapGit` href = `https://abapgit.org/` target = `blank`
                    )->toolbar_spacer(
                      )->link( text = `More Open Source on dotabap.org...` href = `https://dotabap.org/`  target = `blank`
                     )->toolbar_spacer(
                     )->text(
                     )->toolbar_spacer(
                     )->text(
*                     )->checkbox( text     = `Cloud`
*                                  selected = client->_bind_edit( ms_git-check_cloud_ready )
*                     )->checkbox( text     = `On-Premise`
*                                  selected = client->_bind_edit( ms_git-check_premise_ready )
*                                  select   = client->_event( `ON_SEARCH_GIT` )
*                     )->button( text = `sort`
*      )->search_field(
*      value  = client->_bind_edit( ms_git-search_field )
*      search = client->_event( 'ON_SEARCH_GIT' )
*      change = client->_event( 'ON_SEARCH_GIT' )
*      width  = `17.5rem`
      )->get_parent(
*           )->sub_header(
*            )->overflow_toolbar(
*             )->text( `Your open-source app is not listed here? Feel free to send a PR and extend this page`
*             )->link( target = `_blank` text = `HERE` href = `{AUTHOR_LINK}`
*            )->get_parent( )->get_parent(
            )->content( ).

    page_online->message_strip( type = `Warning`
                                text = `Your open-source app is not listed here? Feel free to send a PR and extend this page`
                                )->get( )->link(
                                     text = `here`
                                     target = `blank`
                                     href = `https://github.com/abap2UI5/abap2UI5/blob/main/src/02/02/z2ui5_cl_app_search_apps.clas.locals_imp.abap` ).

    
    CREATE OBJECT temp9 TYPE lcl_github.
    mt_git_repos = temp9->get_repositories( ).

    
    
    LOOP AT mt_git_repos REFERENCE INTO lr_repo.

      
      
      LOOP AT lr_repo->t_app REFERENCE INTO lr_app2.

        IF z2ui5_cl_util=>rtti_check_class_exists( lr_app2->classname ) IS NOT INITIAL.
          lr_repo->check_installed = abap_true.
        ENDIF.
        EXIT.
      ENDLOOP.

      lr_repo->number_of_app = lines( lr_repo->t_app ).
      lr_repo->author_name = shift_left( val = lr_repo->author_link
                                         sub = `https://github.com/` ).
    ENDLOOP.



    
    item = page_online->list(
             "   headertext = `Product`
                nodata         = `no conditions defined`
               items           = client->_bind( mt_git_repos )
               selectionchange = client->_event( 'SELCHANGE' )
                  )->custom_list_item( ).

    item = item->vbox( ).

*    grid->combobox(
*                 selectedkey = `{OPTION}`
*                 items       = client->_bind_local( value string_table( ( `OFFLINE` ) ( `ONLINE` ) ) )
*             )->item(
*                     key = '{}'
*                     text = '{}'
*             )->get_parent(
    item->text( ).
    
    row = item->grid( ).
    row->title( `{NAME}` ).
    row->text( `{DESCR}` ).
    row->text( ).
    row->checkbox( text     = `ABAP for Cloud`
      enabled               = abap_false
                   selected = `{CHECK_ABAP_FOR_CLOUD}` ).

    row = item->grid( ).
*    row = item->hbox( ).
*    item->text( text = `{DESCR}`
    row->link( target = `_blank`
               text   = `{AUTHOR_NAME}`
               href   = `{AUTHOR_LINK}` ).

    row->link( target = `_blank`
               text   = `{LINK}`
               href   = `{LINK}` ).

    row->checkbox( text     = `Installed`
                   selected = `{CHECK_INSTALLED}`
                   enabled  = abap_false ).
    row->checkbox( text     = `Standard ABAP`
                   selected = `{CHECK_STANDARD_ABAP}`
                   enabled  = abap_false ).
*    row->text( `{DESCR}` ).

    client->view_display( page->stringify( ) ).

  ENDMETHOD.


  METHOD view_nest_display.

    DATA lo_view_nested TYPE REF TO z2ui5_cl_xml_view.
    DATA temp12 LIKE LINE OF mt_favs.
    DATA lr_app LIKE REF TO temp12.
      DATA lv_tabix LIKE sy-tabix.
      DATA temp13 TYPE string_table.
    lo_view_nested = z2ui5_cl_xml_view=>factory( ).

    
    
    LOOP AT mt_favs REFERENCE INTO lr_app.
      " WHERE check_fav = abap_true.
      
      lv_tabix = sy-tabix.
      
      CLEAR temp13.
      INSERT `${$source>/header}` INTO TABLE temp13.
      lo_view_nested->generic_tile(
*      page_favs->generic_tile(
        class  = 'sapUiTinyMarginBegin sapUiTinyMarginTop tileLayout'
        press  = client->_event( val = `ON_START`  t_arg = temp13 )
        header = client->_bind( val = lr_app->name tab = mt_favs tab_index = lv_tabix ) ).
*        visible = client->_bind( val = lr_app->check_fav tab = mt_apps tab_index = lv_tabix ) ).
    ENDLOOP.

    client->nest_view_display( val           = lo_view_nested->stringify( )
                               id            = `page_favs`
                               method_insert = 'addContent' ).

  ENDMETHOD.


  METHOD z2ui5_if_app~main.
      DATA temp15 LIKE mt_apps.
      DATA temp1 TYPE string_table.
      DATA row LIKE LINE OF temp1.
        DATA temp16 LIKE LINE OF temp15.
            DATA lt_arg2 TYPE string_table.
            DATA lv_app2 LIKE LINE OF lt_arg2.
            DATA temp2 LIKE LINE OF lt_arg2.
            DATA temp3 LIKE sy-tabix.
            DATA li_app TYPE REF TO z2ui5_if_app.
            DATA x TYPE REF TO cx_root.
        DATA lt_arg TYPE string_table.
        DATA lv_app LIKE LINE OF lt_arg.
        DATA temp4 LIKE LINE OF lt_arg.
        DATA temp5 LIKE sy-tabix.

    me->client = client.

    IF check_initialized = abap_false.
      check_initialized = abap_true.

      TRY.
          z2ui5_cl_util=>db_load_by_handle(
            EXPORTING
              uname  = sy-uname
              handle = 'z2ui5_cl_app_search_apps'
            IMPORTING
              result = mt_favs ).

        CATCH cx_root.
      ENDTRY.

      
      CLEAR temp15.
      
      temp1 = z2ui5_cl_util=>rtti_get_classes_impl_intf( `Z2UI5_IF_APP` ).
      
      LOOP AT temp1 INTO row.
        
        temp16-name = row.
        INSERT temp16 INTO TABLE temp15.
      ENDLOOP.
      mt_apps = temp15.
      search( ).
      view_display( client ).
      RETURN.
    ENDIF.

    IF client->get( )-check_on_navigated = abap_true.
      view_display( client ).
    ENDIF.

    CASE client->get( )-event.

      WHEN `ADD_TO_FAVS`.

        INSERT  ms_app_sel INTO TABLE mt_favs.
        z2ui5_cl_util=>db_save(
            uname  = sy-uname
            handle = 'z2ui5_cl_app_search_apps'
            data   = mt_favs ).

        view_nest_display( ).

      WHEN `ON_START`.

        TRY.

            
            lt_arg2 = client->get( )-t_event_arg.
            
            
            
            temp3 = sy-tabix.
            READ TABLE lt_arg2 INDEX 1 INTO temp2.
            sy-tabix = temp3.
            IF sy-subrc <> 0.
              ASSERT 1 = 0.
            ENDIF.
            lv_app2 = temp2.
            
            CREATE OBJECT li_app TYPE (lv_app2).
            client->nav_app_call( li_app ).
            
          CATCH cx_root INTO x.
            client->nav_app_call( z2ui5_cl_popup_to_inform=>factory( x->get_text( ) ) ).
        ENDTRY.

      WHEN `ON_PRESS`.
        
        lt_arg = client->get( )-t_event_arg.
        
        
        
        temp5 = sy-tabix.
        READ TABLE lt_arg INDEX 1 INTO temp4.
        sy-tabix = temp5.
        IF sy-subrc <> 0.
          ASSERT 1 = 0.
        ENDIF.
        lv_app = temp4.

        CLEAR ms_app_sel.
        ms_app_sel-name = lv_app.

        view_action_sheet( lv_app ).

*        view_nest_display( client ).

      WHEN 'BACK'.
        client->nav_app_leave( client->get_app( client->get( )-s_draft-id_prev_app_stack ) ).

      WHEN `ON_FAVS_CLEAR`.

        z2ui5_cl_util=>db_delete_by_handle(
               uname  = sy-uname
              handle = 'z2ui5_cl_app_search_apps'
            ).
        CLEAR mt_favs.

        client->message_box_display( `Favorites deleted.` ).
        view_nest_display( ).

      WHEN 'ON_SEARCH_ALL'.
        search( ).
        client->view_model_update( ).
        client->message_toast_display( |backend search done| ).

      WHEN 'ON_SEARCH_GIT'.
        search( ).
        client->view_model_update( ).
        client->message_toast_display( |backend search done| ).

    ENDCASE.

  ENDMETHOD.
ENDCLASS.

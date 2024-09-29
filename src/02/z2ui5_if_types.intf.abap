INTERFACE z2ui5_if_types
  PUBLIC.

  TYPES:
    BEGIN OF ty_s_name_value,
      n TYPE string,
      v TYPE string,
    END OF ty_s_name_value.
  TYPES ty_t_name_value TYPE STANDARD TABLE OF ty_s_name_value WITH DEFAULT KEY.

  TYPES:
    BEGIN OF ty_s_http_config,
      src                     TYPE string,
      theme                   TYPE string,
      content_security_policy TYPE string,
      styles_css              TYPE string,
      title                   TYPE string,
      t_add_config            TYPE ty_t_name_value,
      custom_js               TYPE string,
    END OF ty_s_http_config.

  TYPES:
    BEGIN OF ty_s_http_handler_attributes,
      BEGIN OF stateful,
        active   TYPE i,
        switched TYPE abap_bool,
      END OF stateful,
    END OF ty_s_http_handler_attributes.

  TYPES:
    BEGIN OF ty_s_draft,
      id                TYPE string,
      id_prev           TYPE string,
      id_prev_app       TYPE string,
      id_prev_app_stack TYPE string,
    END OF ty_s_draft.

  TYPES:
    BEGIN OF ty_s_config,
      origin           TYPE string,
      pathname         TYPE string,
      search           TYPE string,
      hash             TYPE string,
      t_startup_params TYPE ty_t_name_value,
    END OF ty_s_config.

  TYPES:
    BEGIN OF ty_s_get,
      event                  TYPE string,
      t_event_arg            TYPE string_table,
      check_launchpad_active TYPE abap_bool,
      check_on_navigated     TYPE abap_bool,
      viewname               TYPE string,
      s_draft                TYPE ty_s_draft,
      s_config               TYPE ty_s_config,
      t_comp_params          TYPE ty_t_name_value,
    END OF ty_s_get.

  TYPES:
    BEGIN OF ty_s_event_control,
      check_view_destroy    TYPE abap_bool,
      check_allow_multi_req TYPE abap_bool,
    END OF ty_s_event_control.

ENDINTERFACE.

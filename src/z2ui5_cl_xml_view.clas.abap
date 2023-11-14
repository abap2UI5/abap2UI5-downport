CLASS z2ui5_cl_xml_view DEFINITION
  PUBLIC
  FINAL
  CREATE PROTECTED.

  PUBLIC SECTION.

    CLASS-METHODS factory
      IMPORTING
        !t_ns         TYPE z2ui5_if_client=>ty_t_name_value OPTIONAL
        !client       TYPE REF TO z2ui5_if_client OPTIONAL
          PREFERRED PARAMETER client
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    CLASS-METHODS factory_popup
      IMPORTING
        !t_ns         TYPE z2ui5_if_client=>ty_t_name_value OPTIONAL
        !client       TYPE REF TO z2ui5_if_client
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS constructor.

    METHODS hlp_get_source_code_url
      RETURNING
        VALUE(result) TYPE string.

    METHODS hlp_get_app_url
      IMPORTING
        VALUE(classname) TYPE string OPTIONAL
      RETURNING
        VALUE(result)    TYPE string.

    METHODS hlp_get_url_param
      IMPORTING
        !val          TYPE string
      RETURNING
        VALUE(result) TYPE string.

    METHODS hlp_set_url_param
      IMPORTING
        !n TYPE clike
        !v TYPE clike.

    METHODS horizontal_layout
      IMPORTING
        !class        TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon
      IMPORTING
        !src          TYPE clike OPTIONAL
        !press          TYPE clike OPTIONAL
        !size         TYPE clike OPTIONAL
        !color        TYPE clike OPTIONAL
        !class        TYPE clike OPTIONAL
        !id           TYPE clike OPTIONAL
        !width           TYPE clike OPTIONAL
        !useicontooltip           TYPE clike OPTIONAL
        !notabstop           TYPE clike OPTIONAL
        !hovercolor           TYPE clike OPTIONAL
        !hoverbackgroundcolor           TYPE clike OPTIONAL
        !height           TYPE clike OPTIONAL
        !decorative           TYPE clike OPTIONAL
        !backgroundcolor           TYPE clike OPTIONAL
        !alt           TYPE clike OPTIONAL
        !activecolor           TYPE clike OPTIONAL
        !activebackgroundcolor           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_page
      IMPORTING
        !headerexpanded           TYPE clike OPTIONAL
        !showfooter               TYPE clike OPTIONAL
        !headerpinned             TYPE clike OPTIONAL
        !toggleheaderontitleclick TYPE clike OPTIONAL
      RETURNING
        VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_page_title
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS dynamic_page_header
      IMPORTING
        !pinnable     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS html
      IMPORTING
        !content      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS illustrated_message
      IMPORTING
        !enableverticalresponsiveness TYPE clike OPTIONAL
        !enableformattedtext          TYPE clike OPTIONAL
        !illustrationtype             TYPE clike OPTIONAL
        !title                        TYPE clike OPTIONAL
        !description                  TYPE clike OPTIONAL
        !illustrationsize             TYPE clike OPTIONAL
      RETURNING
        VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view.

    METHODS additional_content
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS flex_box
      IMPORTING
        !class            TYPE clike OPTIONAL
        !rendertype       TYPE clike OPTIONAL
        !width            TYPE clike OPTIONAL
        !fitcontainer     TYPE clike OPTIONAL
        !height           TYPE clike OPTIONAL
        !alignitems       TYPE clike OPTIONAL
        !justifycontent   TYPE clike OPTIONAL
        !wrap             TYPE clike OPTIONAL
        !visible          TYPE clike OPTIONAL
        !direction        TYPE clike OPTIONAL
        !displayinline    TYPE clike OPTIONAL
        !backgrounddesign TYPE clike OPTIONAL
        !aligncontent     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS popover
      IMPORTING
        !title         TYPE clike OPTIONAL
        !class         TYPE clike OPTIONAL
        !placement     TYPE clike OPTIONAL
        !initialfocus  TYPE clike OPTIONAL
        !contentwidth  TYPE clike OPTIONAL
        !contentheight TYPE clike OPTIONAL
        !showheader    TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS list_item
      IMPORTING
        !text           TYPE clike OPTIONAL
        !additionaltext TYPE clike OPTIONAL
        !key            TYPE clike OPTIONAL
        !icon           TYPE clike OPTIONAL
        !enabled        TYPE clike OPTIONAL
        !textdirection  TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS table
      IMPORTING
        !id                  TYPE clike OPTIONAL
        !items               TYPE clike OPTIONAL
        !growing             TYPE clike OPTIONAL
        !growingthreshold    TYPE clike OPTIONAL
        !growingscrolltoload TYPE clike OPTIONAL
        !headertext          TYPE clike OPTIONAL
        !sticky              TYPE clike OPTIONAL
        !mode                TYPE clike OPTIONAL
        !width               TYPE clike OPTIONAL
        !selectionchange     TYPE clike OPTIONAL
        !alternaterowcolors  TYPE clike OPTIONAL
        !autopopinmode       TYPE clike OPTIONAL
        !inset               TYPE clike OPTIONAL
        !showseparators      TYPE clike OPTIONAL
        !showoverlay         TYPE clike OPTIONAL
        !hiddeninpopin       TYPE clike OPTIONAL
        !popinlayout         TYPE clike OPTIONAL
        !fixedlayout         TYPE clike OPTIONAL
        !backgrounddesign    TYPE clike OPTIONAL
          PREFERRED PARAMETER items
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_strip
      IMPORTING
        !text         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !showicon     TYPE clike OPTIONAL
        !class        TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS footer
      IMPORTING
        !ns           TYPE string OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS message_page
      IMPORTING
        !show_header         TYPE clike OPTIONAL
        !text                TYPE clike OPTIONAL
        !enableformattedtext TYPE clike OPTIONAL
        !description         TYPE clike OPTIONAL
        !icon                TYPE clike OPTIONAL
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_layout
      IMPORTING
        !showtitleinheadercontent TYPE clike OPTIONAL
        !showeditheaderbutton     TYPE clike OPTIONAL
        !editheaderbuttonpress    TYPE clike OPTIONAL
        !uppercaseanchorbar       TYPE clike OPTIONAL
        !showfooter               TYPE clike OPTIONAL
      RETURNING
        VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_page_dyn_header_title
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS generic_tile
      IMPORTING
        !class        TYPE clike OPTIONAL
        !mode         TYPE clike OPTIONAL
        !header       TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !frametype    TYPE clike OPTIONAL
        !subheader    TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS numeric_content
      IMPORTING
        !value        TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !withmargin   TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS image_content
      IMPORTING
        !src          TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tile_content
      IMPORTING
        !unit         TYPE clike OPTIONAL
        !footer       TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS expanded_heading
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS snapped_heading
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS expanded_content
      IMPORTING
        !ns           TYPE clike
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS snapped_content
      IMPORTING
        !ns           TYPE clike
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS heading
      IMPORTING
        !ns           TYPE clike
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS actions
      IMPORTING
        !ns           TYPE clike
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS snapped_title_on_mobile
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS header
      IMPORTING
        !ns           TYPE clike DEFAULT `f`
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS navigation_actions
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS avatar
      IMPORTING
        !src               TYPE clike OPTIONAL
        !class             TYPE clike OPTIONAL
        !displaysize       TYPE clike OPTIONAL
        !ariahaspopup      TYPE clike OPTIONAL
        !backgroundcolor   TYPE clike OPTIONAL
        !badgeicon         TYPE clike OPTIONAL
        !badgetooltip      TYPE clike OPTIONAL
        !badgevaluestate   TYPE clike OPTIONAL
        !customdisplaysize TYPE clike OPTIONAL
        !customfontsize    TYPE clike OPTIONAL
        !displayshape      TYPE clike OPTIONAL
        !fallbackicon      TYPE clike OPTIONAL
        !imagefittype      TYPE clike OPTIONAL
        !initials          TYPE clike OPTIONAL
        !showborder        TYPE clike OPTIONAL
        !decorative        TYPE clike OPTIONAL
        !enabled           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS header_title
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS sections
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS object_page_section
      IMPORTING
        !titleuppercase TYPE clike OPTIONAL
        !title          TYPE clike OPTIONAL
        !importance     TYPE clike OPTIONAL
        !id             TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .

    METHODS sub_sections
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS object_page_sub_section
      IMPORTING
        !id           TYPE clike OPTIONAL
        !title        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS shell
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS blocks
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS layout_data
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS flex_item_data
      IMPORTING
        !growfactor       TYPE clike OPTIONAL
        !basesize         TYPE clike OPTIONAL
        !backgrounddesign TYPE clike OPTIONAL
        !styleclass       TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .

    METHODS code_editor
      IMPORTING
        !value        TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !height       TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
        !editable     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS suggestion_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS suggestion_columns
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS suggestion_rows
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS vertical_layout
      IMPORTING
        !class        TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS multi_input
      IMPORTING
        !showclearicon    TYPE clike OPTIONAL
        !showvaluehelp    TYPE clike OPTIONAL
        !suggestionitems  TYPE clike OPTIONAL
        !tokenupdate      TYPE clike OPTIONAL
        !width            TYPE clike OPTIONAL
        !id               TYPE clike OPTIONAL
        !value            TYPE clike OPTIONAL
        !tokens           TYPE clike OPTIONAL
        !submit           TYPE clike OPTIONAL
        !valuehelprequest TYPE clike OPTIONAL
        !enabled          TYPE clike OPTIONAL
        !class            TYPE clike OPTIONAL
        !change           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .

    METHODS tokens
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS token
      IMPORTING
        !key          TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !selected     TYPE clike OPTIONAL
        !visible      TYPE clike OPTIONAL
        !editable     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS input
      IMPORTING
        !id                            TYPE clike OPTIONAL
        !value                         TYPE clike OPTIONAL
        !placeholder                   TYPE clike OPTIONAL
        !type                          TYPE clike OPTIONAL
        !showclearicon                 TYPE clike OPTIONAL
        !valuestate                    TYPE clike OPTIONAL
        !valuestatetext                TYPE clike OPTIONAL
        !showtablesuggestionvaluehelp  TYPE clike OPTIONAL
        !description                   TYPE clike OPTIONAL
        !editable                      TYPE clike OPTIONAL
        !enabled                       TYPE clike OPTIONAL
        !suggestionitems               TYPE clike OPTIONAL
        !suggestionrows                TYPE clike OPTIONAL
        !showsuggestion                TYPE clike OPTIONAL
        !showvaluehelp                 TYPE clike OPTIONAL
        !valuehelprequest              TYPE clike OPTIONAL
        !required                      TYPE clike OPTIONAL
        !suggest                       TYPE clike OPTIONAL
        !class                         TYPE clike OPTIONAL
        !visible                       TYPE clike OPTIONAL
        !submit                        TYPE clike OPTIONAL
        !valueliveupdate               TYPE clike OPTIONAL
        !autocomplete                  TYPE clike OPTIONAL
        !maxsuggestionwidth            TYPE clike OPTIONAL
        !fieldwidth                    TYPE clike OPTIONAL
        !valuehelponly                 TYPE clike OPTIONAL
        !width                         TYPE clike OPTIONAL
        !change                        TYPE clike OPTIONAL
        !valuehelpiconsrc              TYPE clike OPTIONAL
        !textformatter                 TYPE clike OPTIONAL
        !textformatmode                TYPE clike OPTIONAL
        !maxlength                     TYPE clike OPTIONAL
        !startsuggestion               TYPE clike OPTIONAL
        !enablesuggestionshighlighting TYPE clike OPTIONAL
        !enabletableautopopinmode      TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING
        VALUE(result)                  TYPE REF TO z2ui5_cl_xml_view .

    METHODS dialog
      IMPORTING
        !title               TYPE clike OPTIONAL
        !icon                TYPE clike OPTIONAL
        !showheader          TYPE clike OPTIONAL
        !stretch             TYPE clike OPTIONAL
        !contentheight       TYPE clike OPTIONAL
        !contentwidth        TYPE clike OPTIONAL
        !resizable           TYPE clike OPTIONAL
        !horizontalscrolling TYPE clike OPTIONAL
        !verticalscrolling   TYPE clike OPTIONAL
          PREFERRED PARAMETER title
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view .

    METHODS carousel
      IMPORTING
        !height       TYPE clike OPTIONAL
        !class        TYPE clike OPTIONAL
        !loop         TYPE clike OPTIONAL
        !id         TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS buttons
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS get_root
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS get_parent
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS get
      IMPORTING
        name          TYPE string OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS get_child
      IMPORTING
        !index        TYPE i DEFAULT 1
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS columns
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS column
      IMPORTING
        !width             TYPE clike OPTIONAL
        !id                TYPE clike OPTIONAL
        !minscreenwidth    TYPE clike OPTIONAL
        !demandpopin       TYPE clike OPTIONAL
        !halign            TYPE clike OPTIONAL
        !visible           TYPE clike OPTIONAL
        !valign            TYPE clike OPTIONAL
        !styleclass        TYPE clike OPTIONAL
        !sortindicator     TYPE clike OPTIONAL
        !popindisplay      TYPE clike OPTIONAL
        !mergefunctionname TYPE clike OPTIONAL
        !mergeduplicates   TYPE clike OPTIONAL
        !importance        TYPE clike OPTIONAL
        !autopopinwidth    TYPE clike OPTIONAL
          PREFERRED PARAMETER width
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS items
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS interact_donut_chart
      IMPORTING
        !selectionchanged  TYPE clike OPTIONAL
        !errormessage      TYPE clike OPTIONAL
        !errormessagetitle TYPE clike OPTIONAL
        !showerror         TYPE clike OPTIONAL
        !displayedsegments TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS segments
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS interact_donut_chart_segment
      IMPORTING
        !label          TYPE clike OPTIONAL
        !value          TYPE clike OPTIONAL
        !displayedvalue TYPE clike OPTIONAL
        !selected       TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .

    METHODS interact_bar_chart
      IMPORTING
        !selectionchanged  TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !labelwidth        TYPE clike OPTIONAL
        !errormessage      TYPE clike OPTIONAL
        !errormessagetitle TYPE clike OPTIONAL
        !showerror         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS bars
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS interact_bar_chart_bar
      IMPORTING
        !label          TYPE clike OPTIONAL
        !value          TYPE clike OPTIONAL
        !displayedvalue TYPE clike OPTIONAL
        !selected       TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .

    METHODS interact_line_chart
      IMPORTING
        !selectionchanged  TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !precedingpoint    TYPE clike OPTIONAL
        !succeddingpoint   TYPE clike OPTIONAL
        !errormessage      TYPE clike OPTIONAL
        !errormessagetitle TYPE clike OPTIONAL
        !showerror         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS points
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS interact_line_chart_point
      IMPORTING
        !label          TYPE clike OPTIONAL
        !value          TYPE clike OPTIONAL
        !secondarylabel TYPE clike OPTIONAL
        !displayedvalue TYPE clike OPTIONAL
        !selected       TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .
    METHODS radial_micro_chart
      IMPORTING
        !size         TYPE clike OPTIONAL
        !percentage   TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !valuecolor   TYPE clike OPTIONAL
        !height       TYPE clike OPTIONAL
        !aligncontent TYPE clike OPTIONAL
        !hideonnodata TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS column_list_item
      IMPORTING
        !valign       TYPE clike OPTIONAL
        !selected     TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS cells
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS bar
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS content_left
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS content_middle
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS content_right
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS custom_header
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS header_content
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS sub_header
      IMPORTING
        ns            TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS custom_data
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS badge_custom_data
      IMPORTING
        !key          TYPE clike OPTIONAL
        !value        TYPE clike OPTIONAL
        !visible      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS toggle_button
      IMPORTING
        !text         TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !class        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS button
      IMPORTING
        !text             TYPE clike OPTIONAL
        !icon             TYPE clike OPTIONAL
        !type             TYPE clike OPTIONAL
        !enabled          TYPE clike OPTIONAL
        !visible          TYPE clike OPTIONAL
        !press            TYPE clike OPTIONAL
        !class            TYPE clike OPTIONAL
        !id               TYPE clike OPTIONAL
        !ns               TYPE clike OPTIONAL
        !tooltip          TYPE clike OPTIONAL
        !width            TYPE clike OPTIONAL
        !iconfirst        TYPE clike OPTIONAL
        !icondensityaware TYPE clike OPTIONAL
        !ariahaspopup     TYPE clike OPTIONAL
        !activeicon       TYPE clike OPTIONAL
        !accessiblerole   TYPE clike OPTIONAL
        !textdirection    TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .

    METHODS search_field
      IMPORTING
        !search            TYPE clike OPTIONAL
        !width             TYPE clike OPTIONAL
        !value             TYPE clike OPTIONAL
        !id                TYPE clike OPTIONAL
        !change            TYPE clike OPTIONAL
        !livechange        TYPE clike OPTIONAL
        !suggest           TYPE clike OPTIONAL
        !enabled           TYPE clike OPTIONAL
        !enablesuggestions TYPE clike OPTIONAL
        !maxlength         TYPE clike OPTIONAL
        !placeholder       TYPE clike OPTIONAL
        !showrefreshbutton TYPE clike OPTIONAL
        !showsearchbutton  TYPE clike OPTIONAL
        !visible           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS message_view
      IMPORTING
        !items        TYPE clike OPTIONAL
        !groupitems   TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS barcode_scanner_button
      IMPORTING
        !id              TYPE clike OPTIONAL
        !scansuccess     TYPE clike OPTIONAL
        !scanfail        TYPE clike OPTIONAL
        !inputliveupdate TYPE clike OPTIONAL
        !dialogtitle     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)    TYPE REF TO z2ui5_cl_xml_view .


    METHODS message_popover
      IMPORTING
        !items             TYPE clike OPTIONAL
        !groupitems        TYPE clike OPTIONAL
        !listselect        TYPE clike OPTIONAL
        !activetitlepress  TYPE clike OPTIONAL
        !placement         TYPE clike OPTIONAL
        !afterclose        TYPE clike OPTIONAL
        !beforeclose       TYPE clike OPTIONAL
        !initiallyexpanded TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .
    METHODS message_item
      IMPORTING
        !type              TYPE clike OPTIONAL
        !title             TYPE clike OPTIONAL
        !subtitle          TYPE clike OPTIONAL
        !description       TYPE clike OPTIONAL
        !groupname         TYPE clike OPTIONAL
        !markupdescription TYPE clike OPTIONAL
        !textdirection     TYPE clike OPTIONAL
        !longtexturl       TYPE clike OPTIONAL
        !counter           TYPE clike OPTIONAL
        !activetitle       TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .
    METHODS page
      IMPORTING
        !title            TYPE clike OPTIONAL
        !navbuttonpress   TYPE clike OPTIONAL
        !shownavbutton    TYPE clike OPTIONAL
        !showheader       TYPE clike OPTIONAL
        !id               TYPE clike OPTIONAL
        !class            TYPE clike OPTIONAL
        !ns               TYPE clike OPTIONAL
        !backgrounddesign TYPE clike OPTIONAL
        !contentonlybusy  TYPE clike OPTIONAL
        !enablescrolling  TYPE clike OPTIONAL
        !navbuttontooltip TYPE clike OPTIONAL
        !floatingfooter   TYPE clike OPTIONAL
        !showfooter       TYPE clike OPTIONAL
        !showsubheader    TYPE clike OPTIONAL
        !titlealignment   TYPE clike OPTIONAL
        !titlelevel       TYPE clike OPTIONAL
          PREFERRED PARAMETER title
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS panel
      IMPORTING
        !expandable   TYPE clike OPTIONAL
        !expanded     TYPE clike OPTIONAL
        !headertext   TYPE clike OPTIONAL
        stickyheader  TYPE clike OPTIONAL
        height        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS vbox
      IMPORTING
        !height         TYPE clike OPTIONAL
        !justifycontent TYPE clike OPTIONAL
        !class          TYPE clike OPTIONAL
        !rendertype     TYPE clike OPTIONAL
        !aligncontent   TYPE clike OPTIONAL
        !direction      TYPE clike OPTIONAL
        !alignitems     TYPE clike OPTIONAL
        !width          TYPE clike OPTIONAL
        !wrap           TYPE clike OPTIONAL
          PREFERRED PARAMETER class
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .
    METHODS hbox
      IMPORTING
        !class          TYPE clike OPTIONAL
        !justifycontent TYPE clike OPTIONAL
        !aligncontent   TYPE clike OPTIONAL
        !alignitems     TYPE clike OPTIONAL
        !width          TYPE clike OPTIONAL
        !height         TYPE clike OPTIONAL
        !rendertype     TYPE clike OPTIONAL
        !wrap           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .
    METHODS scroll_container
      IMPORTING
        !height       TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
        !vertical     TYPE clike OPTIONAL
        !horizontal   TYPE clike OPTIONAL
        !id   TYPE clike OPTIONAL
        !focusable    TYPE clike OPTIONAL
          PREFERRED PARAMETER height
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS simple_form
      IMPORTING
        !title        TYPE clike OPTIONAL
        !layout       TYPE clike OPTIONAL
        !editable     TYPE clike OPTIONAL
        !columnsxl    TYPE clike OPTIONAL
        !columnsl     TYPE clike OPTIONAL
        !columnsm     TYPE clike OPTIONAL
        !id           TYPE clike OPTIONAL
          PREFERRED PARAMETER title
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS _cc_plain_xml
      IMPORTING
        !val          TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS content
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS title
      IMPORTING
        !ns           TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !wrapping     TYPE clike OPTIONAL
        !level        TYPE clike OPTIONAL
        !class        TYPE clike OPTIONAL
        !id           TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS tab_container
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS tab
      IMPORTING
        !text         TYPE clike OPTIONAL
        !selected     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS overflow_toolbar
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS overflow_toolbar_toggle_button
      IMPORTING
        !text         TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !tooltip      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS overflow_toolbar_button
      IMPORTING
        !text         TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !tooltip      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS overflow_toolbar_menu_button
      IMPORTING
        !text          TYPE clike OPTIONAL
        !icon          TYPE clike OPTIONAL
        !buttonmode    TYPE clike OPTIONAL
        !type          TYPE clike OPTIONAL
        !enabled       TYPE clike OPTIONAL
        !tooltip       TYPE clike OPTIONAL
        !defaultaction TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view .
    METHODS menu_item
      IMPORTING
        !press        TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS toolbar_spacer
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS label
      IMPORTING
        !text          TYPE clike OPTIONAL
        !labelfor      TYPE clike OPTIONAL
        !design        TYPE clike OPTIONAL
        !displayonly   TYPE clike OPTIONAL
        !required      TYPE clike OPTIONAL
        !showcolon     TYPE clike OPTIONAL
        !textalign     TYPE clike OPTIONAL
        !textdirection TYPE clike OPTIONAL
        !valign        TYPE clike OPTIONAL
        !width         TYPE clike OPTIONAL
        !wrapping      TYPE clike OPTIONAL
        !wrappingtype  TYPE clike OPTIONAL
        !id            TYPE clike OPTIONAL
        !class         TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS image
      IMPORTING
        !src                TYPE clike OPTIONAL
        !class              TYPE clike OPTIONAL
        !height             TYPE clike OPTIONAL
        !width              TYPE clike OPTIONAL
        !usemap             TYPE clike OPTIONAL
        !mode               TYPE clike OPTIONAL
        !lazyloading        TYPE clike OPTIONAL
        !densityaware       TYPE clike OPTIONAL
        !decorative         TYPE clike OPTIONAL
        !backgroundsize     TYPE clike OPTIONAL
        !backgroundrepeat   TYPE clike OPTIONAL
        !backgroundposition TYPE clike OPTIONAL
        !ariahaspopup       TYPE clike OPTIONAL
        !alt                TYPE clike OPTIONAL
        !activesrc          TYPE clike OPTIONAL
        !press              TYPE clike OPTIONAL
        !load               TYPE clike OPTIONAL
        !error              TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view .
    METHODS date_picker
      IMPORTING
        !value                 TYPE clike OPTIONAL
        !placeholder           TYPE clike OPTIONAL
        !displayformat         TYPE clike OPTIONAL
        !valueformat           TYPE clike OPTIONAL
        !required              TYPE clike OPTIONAL
        !valuestate            TYPE clike OPTIONAL
        !valuestatetext        TYPE clike OPTIONAL
        !enabled               TYPE clike OPTIONAL
        !showcurrentdatebutton TYPE clike OPTIONAL
        !change                TYPE clike OPTIONAL
        !hideinput             TYPE clike OPTIONAL
        !showfooter            TYPE clike OPTIONAL
        !visible               TYPE clike OPTIONAL
        !showvaluestatemessage TYPE clike OPTIONAL
        !mindate               TYPE clike OPTIONAL
        !maxdate               TYPE clike OPTIONAL
        !editable              TYPE clike OPTIONAL
        !width              TYPE clike OPTIONAL
        !id              TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view .
    METHODS time_picker
      IMPORTING
        !value         TYPE clike OPTIONAL
        !placeholder   TYPE clike OPTIONAL
        !enabled       TYPE clike OPTIONAL
        !valuestate    TYPE clike OPTIONAL
        !displayformat TYPE clike OPTIONAL
        !valueformat   TYPE clike OPTIONAL
        !required   TYPE clike OPTIONAL
        !width   TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view .
    METHODS date_time_picker
      IMPORTING
        !value        TYPE clike OPTIONAL
        !placeholder  TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !valuestate   TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS link
      IMPORTING
        !text               TYPE clike OPTIONAL
        !href               TYPE clike OPTIONAL
        !target             TYPE clike OPTIONAL
        !enabled            TYPE clike OPTIONAL
        !press              TYPE clike OPTIONAL
        !id                 TYPE clike OPTIONAL
        !ns                 TYPE clike OPTIONAL
        !wrapping           TYPE clike OPTIONAL
        !width              TYPE clike OPTIONAL
        !validateurl        TYPE clike OPTIONAL
        !textdirection      TYPE clike OPTIONAL
        !textalign          TYPE clike OPTIONAL
        !subtle             TYPE clike OPTIONAL
        !rel                TYPE clike OPTIONAL
        !emptyindicatormode TYPE clike OPTIONAL
        !emphasized         TYPE clike OPTIONAL
        !ariahaspopup       TYPE clike OPTIONAL
        !accessiblerole     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS list
      IMPORTING
        !headertext             TYPE clike OPTIONAL
        !items                  TYPE clike OPTIONAL
        !mode                   TYPE clike OPTIONAL
        !selectionchange        TYPE clike OPTIONAL
        !showseparators         TYPE clike OPTIONAL
        !footertext             TYPE clike OPTIONAL
        !growingdirection       TYPE clike OPTIONAL
        !growingthreshold       TYPE clike OPTIONAL
        !growingtriggertext     TYPE clike OPTIONAL
        !headerlevel            TYPE clike OPTIONAL
        !multiselectmode        TYPE clike OPTIONAL
        !nodatatext             TYPE clike OPTIONAL
        !sticky                 TYPE clike OPTIONAL
        !modeanimationon        TYPE clike OPTIONAL
        !growingscrolltoload    TYPE clike OPTIONAL
        !includeiteminselection TYPE clike OPTIONAL
        !growing                TYPE clike OPTIONAL
        !inset                  TYPE clike OPTIONAL
        !rememberselections     TYPE clike OPTIONAL
        !showunread             TYPE clike OPTIONAL
        !visible                TYPE clike OPTIONAL
        !nodata                 TYPE clike OPTIONAL
        !id                     TYPE clike OPTIONAL
        !itemPress                     TYPE clike OPTIONAL
        !select                     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)           TYPE REF TO z2ui5_cl_xml_view .
    METHODS custom_list_item
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS input_list_item
      IMPORTING
        !label        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS standard_list_item
      IMPORTING
        !title             TYPE clike OPTIONAL
        !description       TYPE clike OPTIONAL
        !icon              TYPE clike OPTIONAL
        !info              TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !type              TYPE clike OPTIONAL
        !selected          TYPE clike OPTIONAL
        !counter           TYPE clike OPTIONAL
        !wrapping          TYPE clike OPTIONAL
        !wrapcharlimit     TYPE clike OPTIONAL
        !infostateinverted TYPE clike OPTIONAL
        !infostate         TYPE clike OPTIONAL
        !iconinset         TYPE clike OPTIONAL
        !adapttitlesize    TYPE clike OPTIONAL
        !activeicon        TYPE clike OPTIONAL
        !unread            TYPE clike OPTIONAL
        !highlight         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .
    METHODS item
      IMPORTING
        !key          TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS segmented_button_item
      IMPORTING
        !icon         TYPE clike OPTIONAL
        !key          TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS combobox
      IMPORTING
        !selectedkey           TYPE clike OPTIONAL
        !showclearicon         TYPE clike OPTIONAL
        !selectionchange       TYPE clike OPTIONAL
        !selecteditem          TYPE clike OPTIONAL
        !items                 TYPE clike OPTIONAL
        !change                TYPE clike OPTIONAL
        !width                 TYPE clike OPTIONAL
        !showsecondaryvalues   TYPE clike OPTIONAL
        !placeholder           TYPE clike OPTIONAL
        !selecteditemid        TYPE clike OPTIONAL
        !name                  TYPE clike OPTIONAL
        !value                 TYPE clike OPTIONAL
        !valuestate            TYPE clike OPTIONAL
        !valuestatetext        TYPE clike OPTIONAL
        !textalign             TYPE clike OPTIONAL
        !visible               TYPE clike OPTIONAL
        !showvaluestatemessage TYPE clike OPTIONAL
        !showbutton            TYPE clike OPTIONAL
        !required              TYPE clike OPTIONAL
        !editable              TYPE clike OPTIONAL
        !enabled               TYPE clike OPTIONAL
        !filtersecondaryvalues TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view .
    METHODS multi_combobox
      IMPORTING
        !selectionchange       TYPE clike OPTIONAL
        !selectedkeys          TYPE clike OPTIONAL
        !items                 TYPE clike OPTIONAL
        !selectionfinish       TYPE clike OPTIONAL
        !width                 TYPE clike OPTIONAL
        !showclearicon         TYPE clike OPTIONAL
        !showsecondaryvalues   TYPE clike OPTIONAL
        !placeholder           TYPE clike OPTIONAL
        !selecteditemid        TYPE clike OPTIONAL
        !selectedkey           TYPE clike OPTIONAL
        !name                  TYPE clike OPTIONAL
        !value                 TYPE clike OPTIONAL
        !valuestate            TYPE clike OPTIONAL
        !valuestatetext        TYPE clike OPTIONAL
        !textalign             TYPE clike OPTIONAL
        !visible               TYPE clike OPTIONAL
        !showvaluestatemessage TYPE clike OPTIONAL
        !showbutton            TYPE clike OPTIONAL
        !required              TYPE clike OPTIONAL
        !editable              TYPE clike OPTIONAL
        !enabled               TYPE clike OPTIONAL
        !filtersecondaryvalues TYPE clike OPTIONAL
        !showselectall         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view .
    METHODS grid
      IMPORTING
        !class        TYPE clike OPTIONAL
        !default_span TYPE clike OPTIONAL
          PREFERRED PARAMETER default_span
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS grid_data
      IMPORTING
        !span         TYPE clike OPTIONAL
          PREFERRED PARAMETER span
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS text_area
      IMPORTING
        !value           TYPE clike OPTIONAL
        !rows            TYPE clike OPTIONAL
        !cols            TYPE clike OPTIONAL
        !height          TYPE clike OPTIONAL
        class            TYPE clike OPTIONAL
        !width           TYPE clike OPTIONAL
        valueliveupdate  TYPE clike OPTIONAL
        !editable        TYPE clike OPTIONAL
        !enabled         TYPE clike OPTIONAL
        !growing         TYPE clike OPTIONAL
        !growingmaxlines TYPE clike OPTIONAL
        !id              TYPE clike OPTIONAL
        !required        TYPE clike OPTIONAL
        placeholder      TYPE clike OPTIONAL
        !valuestate      TYPE clike OPTIONAL
        !valuestatetext  TYPE clike OPTIONAL
          PREFERRED PARAMETER value
      RETURNING
        VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS range_slider
      IMPORTING
        !max           TYPE clike OPTIONAL
        !min           TYPE clike OPTIONAL
        !step          TYPE clike OPTIONAL
        !startvalue    TYPE clike OPTIONAL
        !endvalue      TYPE clike OPTIONAL
        !showtickmarks TYPE clike OPTIONAL
        !labelinterval TYPE clike OPTIONAL
        !width         TYPE clike OPTIONAL
        !class         TYPE clike OPTIONAL
        !id            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS generic_tag
      IMPORTING
        !id             TYPE clike OPTIONAL
        !arialabelledby TYPE clike OPTIONAL
        !text           TYPE clike OPTIONAL
        !design         TYPE clike OPTIONAL
        !status         TYPE clike OPTIONAL
        !class          TYPE clike OPTIONAL
        !press          TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .
    METHODS object_attribute
      IMPORTING
        !title         TYPE clike OPTIONAL
        !text          TYPE clike OPTIONAL
        !active        TYPE clike OPTIONAL
        !ariahaspopup  TYPE clike OPTIONAL
        !textdirection TYPE clike OPTIONAL
        !visible       TYPE clike OPTIONAL
        !press         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_number
      IMPORTING
        !state              TYPE clike OPTIONAL
        !emphasized         TYPE clike OPTIONAL
        !number             TYPE clike OPTIONAL
        !textdirection      TYPE clike OPTIONAL
        !textalign          TYPE clike OPTIONAL
        !numberunit         TYPE clike OPTIONAL
        !inverted           TYPE clike OPTIONAL
        !emptyindicatormode TYPE clike OPTIONAL
        !active             TYPE clike OPTIONAL
        !unit               TYPE clike OPTIONAL
        !visible            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view .

    METHODS switch
      IMPORTING
        !state         TYPE clike OPTIONAL
        !customtexton  TYPE clike OPTIONAL
        !customtextoff TYPE clike OPTIONAL
        !enabled       TYPE clike OPTIONAL
        !change        TYPE clike OPTIONAL
        !type          TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view .

    METHODS step_input
      IMPORTING
        !value        TYPE clike OPTIONAL
        !min          TYPE clike OPTIONAL
        !max          TYPE clike OPTIONAL
        !step         TYPE clike OPTIONAL
        !valuestate   TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !description  TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS progress_indicator
      IMPORTING
        !class        TYPE clike OPTIONAL
        !percentvalue TYPE clike OPTIONAL
        !displayvalue TYPE clike OPTIONAL
        !showvalue    TYPE clike OPTIONAL
        !state        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS segmented_button
      IMPORTING
        !selected_key     TYPE clike
        !selection_change TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .
    METHODS checkbox
      IMPORTING
        !text         TYPE clike OPTIONAL
        !selected     TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !select       TYPE clike OPTIONAL
          PREFERRED PARAMETER selected
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS header_toolbar
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS toolbar
      IMPORTING
        ns            TYPE clike OPTIONAL
        id            TYPE clike OPTIONAL
        press         TYPE clike OPTIONAL
        width         TYPE clike OPTIONAL
        active        TYPE clike OPTIONAL
        ariaHasPopup  TYPE clike OPTIONAL
        design        TYPE clike OPTIONAL
        enabled       TYPE clike OPTIONAL
        height        TYPE clike OPTIONAL
        style         TYPE clike OPTIONAL
        visible       TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS text
      IMPORTING
        !text               TYPE clike OPTIONAL
        !class              TYPE clike OPTIONAL
        !ns                 TYPE clike OPTIONAL
        !emptyindicatormode TYPE clike OPTIONAL
        !maxlines           TYPE clike OPTIONAL
        !renderwhitespace   TYPE clike OPTIONAL
        !textalign          TYPE clike OPTIONAL
        !textdirection      TYPE clike OPTIONAL
        !width              TYPE clike OPTIONAL
        !wrapping           TYPE clike OPTIONAL
        !wrappingtype       TYPE clike OPTIONAL
        !id                 TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view .
    METHODS formatted_text
      IMPORTING
        !htmltext     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS _generic
      IMPORTING
        !name         TYPE clike
        !ns           TYPE clike OPTIONAL
        !t_prop       TYPE z2ui5_if_client=>ty_t_name_value OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS _generic_property
      IMPORTING
        !val          TYPE z2ui5_if_client=>ty_s_name_value OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS xml_get
      RETURNING
        VALUE(result) TYPE string .

    METHODS stringify
      RETURNING
        VALUE(result) TYPE string .

    METHODS tree_table
      IMPORTING
        !rows                   TYPE clike
        !selectionmode          TYPE clike DEFAULT 'Single'
        !enablecolumnreordering TYPE clike DEFAULT 'false'
        !expandfirstlevel       TYPE clike DEFAULT 'false'
        !columnselect           TYPE clike OPTIONAL
        !rowselectionchange     TYPE clike OPTIONAL
        !selectionbehavior      TYPE clike DEFAULT 'RowSelector'
        !selectedindex          TYPE clike OPTIONAL
        !id                     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)           TYPE REF TO z2ui5_cl_xml_view .
    METHODS tree_columns
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS tree_column
      IMPORTING
        !label        TYPE clike
        !template     TYPE clike OPTIONAL
        !halign       TYPE clike DEFAULT 'Begin'
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS tree_template
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS filter_bar
      IMPORTING
        !usetoolbar                   TYPE clike DEFAULT 'false'
        !search                       TYPE clike OPTIONAL
        !id                           TYPE clike OPTIONAL
        !persistencykey               TYPE clike OPTIONAL
        !aftervariantload             TYPE clike OPTIONAL
        !aftervariantsave             TYPE clike OPTIONAL
        !assignedfilterschanged       TYPE clike OPTIONAL
        !beforevariantfetch           TYPE clike OPTIONAL
        !cancel                       TYPE clike OPTIONAL
        !clear                        TYPE clike OPTIONAL
        !filterchange                 TYPE clike OPTIONAL
        !filtersdialogbeforeopen      TYPE clike OPTIONAL
        !filtersdialogcancel          TYPE clike OPTIONAL
        !filtersdialogclosed          TYPE clike OPTIONAL
        !initialise                   TYPE clike OPTIONAL
        !initialized                  TYPE clike OPTIONAL
        !reset                        TYPE clike OPTIONAL
        !filtercontainerwidth         TYPE clike OPTIONAL
        !header                       TYPE clike OPTIONAL
        !advancedmode                 TYPE clike OPTIONAL
        !isrunninginvaluehelpdialog   TYPE clike OPTIONAL
        !showallfilters               TYPE clike OPTIONAL
        !showclearonfb                TYPE clike OPTIONAL
        !showfilterconfiguration      TYPE clike OPTIONAL
        !showgoonfb                   TYPE clike OPTIONAL
        !showrestorebutton            TYPE clike OPTIONAL
        !showrestoreonfb              TYPE clike OPTIONAL
        !usesnapshot                  TYPE clike OPTIONAL
        !searchenabled                TYPE clike OPTIONAL
        !considergrouptitle           TYPE clike OPTIONAL
        !deltavariantmode             TYPE clike OPTIONAL
        !disablesearchmatchespatternw TYPE clike OPTIONAL
        !filterbarexpanded            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)                 TYPE REF TO z2ui5_cl_xml_view .
    METHODS filter_group_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS filter_group_item
      IMPORTING
        !name               TYPE clike
        !label              TYPE clike
        !groupname          TYPE clike
        !visibleinfilterbar TYPE clike DEFAULT 'true'
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view .
    METHODS filter_control
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS flexible_column_layout
      IMPORTING
        !layout       TYPE clike
        !id           TYPE clike
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS begin_column_pages
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS mid_column_pages
      IMPORTING
        !id           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS end_column_pages
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_table
      IMPORTING
        !rows                     TYPE clike OPTIONAL
        !columnheadervisible      TYPE clike OPTIONAL
        !editable                 TYPE clike OPTIONAL
        !enablecellfilter         TYPE clike OPTIONAL
        !enablegrouping           TYPE clike OPTIONAL
        !enableselectall          TYPE clike OPTIONAL
        !firstvisiblerow          TYPE clike OPTIONAL
        !fixedbottomrowcount      TYPE clike OPTIONAL
        !fixedcolumncount         TYPE clike OPTIONAL
        !fixedrowcount            TYPE clike OPTIONAL
        !minautorowcount          TYPE clike OPTIONAL
        !rowactioncount           TYPE clike OPTIONAL
        !rowheight                TYPE clike OPTIONAL
        !selectionmode            TYPE clike OPTIONAL
        !showcolumnvisibilitymenu TYPE clike OPTIONAL
        !shownodata               TYPE clike OPTIONAL
        !selectedindex            TYPE clike OPTIONAL
        !threshold                TYPE clike OPTIONAL
        !visiblerowcount          TYPE clike OPTIONAL
        !visiblerowcountmode      TYPE clike OPTIONAL
        !alternaterowcolors       TYPE clike OPTIONAL
        !footer                   TYPE clike OPTIONAL
        !filter                   TYPE clike OPTIONAL
        !sort                     TYPE clike OPTIONAL
        !rowselectionchange       TYPE clike OPTIONAL
        !customfilter             TYPE clike OPTIONAL
        !id                       TYPE clike OPTIONAL
        !flex                     TYPE clike OPTIONAL
          PREFERRED PARAMETER rows
      RETURNING
        VALUE(result)             TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_column
      IMPORTING
        !width               TYPE clike OPTIONAL
        !showsortmenuentry   TYPE clike OPTIONAL
        !sortproperty        TYPE clike OPTIONAL
        !filterproperty      TYPE clike OPTIONAL
        !showfiltermenuentry TYPE clike OPTIONAL
          PREFERRED PARAMETER width
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_columns
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_extension
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_template
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS currency
      IMPORTING
        !value        TYPE clike
        !currency     TYPE clike
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_row_action
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS ui_row_action_template
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS ui_row_action_item
      IMPORTING
        !icon         TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .
    METHODS radio_button
      IMPORTING
        !activehandling TYPE clike OPTIONAL
        !editable       TYPE clike OPTIONAL
        !enabled        TYPE clike OPTIONAL
        !groupname      TYPE clike OPTIONAL
        !selected       TYPE clike OPTIONAL
        !text           TYPE clike OPTIONAL
        !textalign      TYPE clike OPTIONAL
        !textdirection  TYPE clike OPTIONAL
        !useentirewidth TYPE clike OPTIONAL
        !valuestate     TYPE clike OPTIONAL
        !width          TYPE clike OPTIONAL
        !select         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view .

    METHODS radio_button_group
      IMPORTING
        !id            TYPE clike OPTIONAL
        !columns       TYPE clike OPTIONAL
        !editable      TYPE clike OPTIONAL
        !enabled       TYPE clike OPTIONAL
        !selectedindex TYPE clike OPTIONAL
        !textdirection TYPE clike OPTIONAL
        !valuestate    TYPE clike OPTIONAL
        !width         TYPE clike OPTIONAL
        !select        TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view .

    METHODS dynamic_side_content
      IMPORTING
        !id                    TYPE clike OPTIONAL
        !class                 TYPE clike OPTIONAL
        !sidecontentvisibility TYPE clike OPTIONAL
        !showsidecontent       TYPE clike OPTIONAL
        !containerquery        TYPE clike OPTIONAL
          PREFERRED PARAMETER id
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS side_content
      IMPORTING
        !width        TYPE clike OPTIONAL
          PREFERRED PARAMETER width
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS planning_calendar
      IMPORTING
        !rows                      TYPE clike OPTIONAL
        !startdate                 TYPE clike OPTIONAL
        !appointmentsvisualization TYPE clike OPTIONAL
        !appointmentselect         TYPE clike OPTIONAL
        !showemptyintervalheaders  TYPE clike OPTIONAL
        !showweeknumbers           TYPE clike OPTIONAL
        !showdaynamesline          TYPE clike OPTIONAL
        !legend                    TYPE clike OPTIONAL
          PREFERRED PARAMETER rows
      RETURNING
        VALUE(result)              TYPE REF TO z2ui5_cl_xml_view .

    METHODS planning_calendar_row
      IMPORTING
        !appointments                  TYPE clike OPTIONAL
        !intervalheaders               TYPE clike OPTIONAL
        !icon                          TYPE clike OPTIONAL
        !title                         TYPE clike OPTIONAL
        !key                           TYPE clike OPTIONAL
        !text                          TYPE clike OPTIONAL
        !enableappointmentscreate      TYPE clike OPTIONAL
        !enableappointmentsdraganddrop TYPE clike OPTIONAL
        !enableappointmentsresize      TYPE clike OPTIONAL
        !nonworkingdays                TYPE clike OPTIONAL
        !selected                      TYPE clike OPTIONAL
        !appointmentcreate             TYPE clike OPTIONAL
        !appointmentdragenter          TYPE clike OPTIONAL
        !appointmentdrop               TYPE clike OPTIONAL
        !appointmentresize             TYPE clike OPTIONAL
          PREFERRED PARAMETER appointments
      RETURNING
        VALUE(result)                  TYPE REF TO z2ui5_cl_xml_view.

    METHODS planning_calendar_legend
      IMPORTING
        !items            TYPE clike OPTIONAL
        !id               TYPE clike OPTIONAL
        !appointmentitems TYPE clike OPTIONAL
        !standarditems    TYPE clike OPTIONAL
          PREFERRED PARAMETER items
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .

    METHODS calendar_legend_item
      IMPORTING
        !text         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !tooltip      TYPE clike OPTIONAL
        !color        TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS appointment_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS info_label
      IMPORTING
        !id            TYPE clike OPTIONAL
        !text          TYPE clike OPTIONAL
        !rendermode    TYPE clike OPTIONAL
        !colorscheme   TYPE clike OPTIONAL
        !icon          TYPE clike OPTIONAL
        !displayonly   TYPE clike OPTIONAL
        !textdirection TYPE clike OPTIONAL
        !width         TYPE clike OPTIONAL
        !visible       TYPE clike OPTIONAL
          PREFERRED PARAMETER text
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view .

    METHODS rows
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS appointments
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS calendar_appointment
      IMPORTING
        !startdate    TYPE clike OPTIONAL
        !enddate      TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !title        TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !tentative    TYPE clike OPTIONAL
        !key          TYPE clike OPTIONAL
          PREFERRED PARAMETER startdate
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS interval_headers
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS block_layout
      IMPORTING
        !background   TYPE clike OPTIONAL
        !id   TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS block_layout_row
      IMPORTING
        !rowcolorset  TYPE clike OPTIONAL
        !id  TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS block_layout_cell
      IMPORTING
        !backgroundcolorset   TYPE clike OPTIONAL
        !backgroundcolorshade TYPE clike OPTIONAL
        !title                TYPE clike OPTIONAL
        !titlealignment       TYPE clike OPTIONAL
        !titlelevel           TYPE clike OPTIONAL
        !width                TYPE clike OPTIONAL
        !class                TYPE clike OPTIONAL
        !id                   TYPE clike OPTIONAL
      RETURNING
        VALUE(result)         TYPE REF TO z2ui5_cl_xml_view .

    METHODS object_identifier
      IMPORTING
        !emptyindicatormode TYPE clike OPTIONAL
        !text               TYPE clike OPTIONAL
        !textdirection      TYPE clike OPTIONAL
        !title              TYPE clike OPTIONAL
        !titleactive        TYPE clike OPTIONAL
        !visible            TYPE clike OPTIONAL
        !titlepress         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view .

    METHODS object_status
      IMPORTING
        !active                TYPE clike OPTIONAL
        !emptyindicatormode    TYPE clike OPTIONAL
        !icon                  TYPE clike OPTIONAL
        !icondensityaware      TYPE clike OPTIONAL
        !inverted              TYPE clike OPTIONAL
        !state                 TYPE clike OPTIONAL
        !stateannouncementtext TYPE clike OPTIONAL
        !text                  TYPE clike OPTIONAL
        !textdirection         TYPE clike OPTIONAL
        !title                 TYPE clike OPTIONAL
        !press                 TYPE clike OPTIONAL
        !visible               TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view .

    METHODS tree
      IMPORTING
        !items                  TYPE clike OPTIONAL
        !headertext             TYPE clike OPTIONAL
        !footertext             TYPE clike OPTIONAL
        !mode                   TYPE clike OPTIONAL
        !includeiteminselection TYPE abap_bool OPTIONAL
        !inset                  TYPE abap_bool OPTIONAL
        !width                  TYPE clike OPTIONAL
      RETURNING
        VALUE(result)           TYPE REF TO z2ui5_cl_xml_view .

    METHODS standard_tree_item
      IMPORTING
        !title        TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !detailpress  TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !selected     TYPE clike OPTIONAL
        !counter      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS icon_tab_bar
      IMPORTING
        !class                  TYPE clike OPTIONAL
        !select                 TYPE clike OPTIONAL
        !expand                 TYPE clike OPTIONAL
        !expandable             TYPE clike OPTIONAL
        !expanded               TYPE clike OPTIONAL
        !selectedkey            TYPE clike OPTIONAL
        !uppercase              TYPE clike OPTIONAL
        !tabsoverflowmode       TYPE clike OPTIONAL
        !tabdensitymode         TYPE clike OPTIONAL
        !stretchcontentheight   TYPE clike OPTIONAL
        !maxnestinglevel        TYPE clike OPTIONAL
        !headermode             TYPE clike OPTIONAL
        !headerbackgrounddesign TYPE clike OPTIONAL
        !enabletabreordering    TYPE clike OPTIONAL
        !backgrounddesign       TYPE clike OPTIONAL
        !applycontentpadding    TYPE clike OPTIONAL
      RETURNING
        VALUE(result)           TYPE REF TO z2ui5_cl_xml_view .

    METHODS icon_tab_filter
      IMPORTING
        !items            TYPE clike OPTIONAL
        !showall          TYPE clike OPTIONAL
        !icon             TYPE clike OPTIONAL
        !iconcolor        TYPE clike OPTIONAL
        !count            TYPE clike OPTIONAL
        !text             TYPE clike OPTIONAL
        !key              TYPE clike OPTIONAL
        !design           TYPE clike OPTIONAL
        !icondensityaware TYPE clike OPTIONAL
        !visible          TYPE clike OPTIONAL
        !id               TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .

    METHODS icon_tab_separator
      IMPORTING
        !icon             TYPE clike OPTIONAL
        !icondensityaware TYPE clike OPTIONAL
        !visible          TYPE clike OPTIONAL
        !id               TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view .


    METHODS _cc
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_cc_factory.

    METHODS gantt_chart_container
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS container_toolbar
      IMPORTING
        !showsearchbutton          TYPE clike OPTIONAL
        !aligncustomcontenttoright TYPE clike OPTIONAL
        !findmode                  TYPE clike OPTIONAL
        !infoofselectitems         TYPE clike OPTIONAL
        !showbirdeyebutton         TYPE clike OPTIONAL
        !showdisplaytypebutton     TYPE clike OPTIONAL
        !showlegendbutton          TYPE clike OPTIONAL
        !showsettingbutton         TYPE clike OPTIONAL
        !showtimezoomcontrol       TYPE clike OPTIONAL
        !stepcountofslider         TYPE clike OPTIONAL
        !zoomcontroltype           TYPE clike OPTIONAL
        !zoomlevel                 TYPE clike OPTIONAL
      RETURNING
        VALUE(result)              TYPE REF TO z2ui5_cl_xml_view .

    METHODS gantt_chart_with_table
      IMPORTING
        !id                 TYPE clike OPTIONAL
        !shapeselectionmode TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view .

    METHODS axis_time_strategy
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS proportion_zoom_strategy
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS total_horizon
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS time_horizon
      IMPORTING
        !starttime    TYPE clike OPTIONAL
        !endtime      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS visible_horizon
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS row_settings_template
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS gantt_row_settings
      IMPORTING
        !rowid        TYPE clike OPTIONAL
        !shapes1      TYPE clike OPTIONAL
        !shapes2      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS shapes1
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS shapes2
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS task
      IMPORTING
        !type         TYPE clike OPTIONAL
        !color        TYPE clike OPTIONAL
        !endtime      TYPE clike OPTIONAL
        !time         TYPE clike OPTIONAL
        !title        TYPE clike OPTIONAL
        !showtitle    TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS gantt_table
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view .

    METHODS rating_indicator
      IMPORTING
        !maxvalue     TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
        !class        TYPE clike OPTIONAL
        !value        TYPE clike OPTIONAL
        !iconsize     TYPE clike OPTIONAL
        !tooltip      TYPE clike OPTIONAL
        !displayonly  TYPE clike OPTIONAL
        !change       TYPE clike OPTIONAL
        !id           TYPE clike OPTIONAL
        !editable     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS gantt_toolbar
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS base_rectangle
      IMPORTING
        !time                    TYPE clike OPTIONAL
        !endtime                 TYPE clike OPTIONAL
        !selectable              TYPE clike OPTIONAL
        !selectedfill            TYPE clike OPTIONAL
        !fill                    TYPE clike OPTIONAL
        !height                  TYPE clike OPTIONAL
        !title                   TYPE clike OPTIONAL
        !animationsettings       TYPE clike OPTIONAL
        !alignshape              TYPE clike OPTIONAL
        !color                   TYPE clike OPTIONAL
        !fontsize                TYPE clike OPTIONAL
        !connectable             TYPE clike OPTIONAL
        !fontfamily              TYPE clike OPTIONAL
        !filter                  TYPE clike OPTIONAL
        !transform               TYPE clike OPTIONAL
        !countinbirdeye          TYPE clike OPTIONAL
        !fontweight              TYPE clike OPTIONAL
        !showtitle               TYPE clike OPTIONAL
        !selected                TYPE clike OPTIONAL
        !resizable               TYPE clike OPTIONAL
        !horizontaltextalignment TYPE clike OPTIONAL
        !highlighted             TYPE clike OPTIONAL
        !highlightable           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)            TYPE REF TO z2ui5_cl_xml_view.

    METHODS tool_page
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS tool_header
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS icon_tab_header
      IMPORTING
        !selectedkey         TYPE clike OPTIONAL
        !items               TYPE clike OPTIONAL
        !select              TYPE clike OPTIONAL
        !mode                TYPE clike OPTIONAL
        !ariatexts           TYPE clike OPTIONAL
        !backgrounddesign    TYPE clike OPTIONAL
        !enabletabreordering TYPE clike OPTIONAL
        !maxnestinglevel     TYPE clike OPTIONAL
        !tabdensitymode      TYPE clike OPTIONAL
        !tabsoverflowmode    TYPE clike OPTIONAL
        !visible             TYPE clike OPTIONAL
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS nav_container
      IMPORTING
        !initialpage           TYPE clike OPTIONAL
        !id                    TYPE clike OPTIONAL
        !defaulttransitionname TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS pages
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS main_contents
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS table_select_dialog
      IMPORTING
        !confirmbuttontext  TYPE clike OPTIONAL
        !contentheight      TYPE clike OPTIONAL
        !contentwidth       TYPE clike OPTIONAL
        !draggable          TYPE clike OPTIONAL
        !growing            TYPE clike OPTIONAL
        !growingthreshold   TYPE clike OPTIONAL
        !multiselect        TYPE clike OPTIONAL
        !nodatatext         TYPE clike OPTIONAL
        !rememberselections TYPE clike OPTIONAL
        !resizable          TYPE clike OPTIONAL
        !searchplaceholder  TYPE clike OPTIONAL
        !showclearbutton    TYPE clike OPTIONAL
        !title              TYPE clike OPTIONAL
        !titlealignment     TYPE clike OPTIONAL
        !visible            TYPE clike OPTIONAL
        !items              TYPE clike OPTIONAL
        !livechange         TYPE clike OPTIONAL
        !cancel             TYPE clike OPTIONAL
        !search             TYPE clike OPTIONAL
        !confirm            TYPE clike OPTIONAL
        !selectionchange    TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS process_flow
      IMPORTING
        !id            TYPE clike OPTIONAL
        !foldedcorners TYPE clike OPTIONAL
        !scrollable    TYPE clike OPTIONAL
        !showlabels    TYPE clike OPTIONAL
        !visible       TYPE clike OPTIONAL
        !wheelzoomable TYPE clike OPTIONAL
        !headerpress   TYPE clike OPTIONAL
        !labelpress    TYPE clike OPTIONAL
        !nodepress     TYPE clike OPTIONAL
        !onerror       TYPE clike OPTIONAL
        !lanes         TYPE clike OPTIONAL
        !nodes         TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS nodes
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS lanes
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS process_flow_node
      IMPORTING
        !laneid            TYPE clike OPTIONAL
        !nodeid            TYPE clike OPTIONAL
        !title             TYPE clike OPTIONAL
        !titleabbreviation TYPE clike OPTIONAL
        !children          TYPE clike OPTIONAL
        !state             TYPE clike OPTIONAL
        !statetext         TYPE clike OPTIONAL
        !texts             TYPE clike OPTIONAL
        !highlighted       TYPE clike OPTIONAL
        !focused           TYPE clike OPTIONAL
        !selected          TYPE clike OPTIONAL
        !tag               TYPE clike OPTIONAL
        !type              TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS process_flow_lane_header
      IMPORTING
        !iconsrc      TYPE clike OPTIONAL
        !laneid       TYPE clike OPTIONAL
        !position     TYPE clike OPTIONAL
        !state        TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !zoomlevel    TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.


    METHODS view_settings_dialog
      IMPORTING
        !confirm                  TYPE clike OPTIONAL
        !cancel                   TYPE clike OPTIONAL
        !filterdetailpageopened   TYPE clike OPTIONAL
        !reset                    TYPE clike OPTIONAL
        !resetfilters             TYPE clike OPTIONAL
        !filtersearchoperator     TYPE clike OPTIONAL
        !groupdescending          TYPE clike OPTIONAL
        !sortdescending           TYPE clike OPTIONAL
        !title                    TYPE clike OPTIONAL
        !titlealignment           TYPE clike OPTIONAL
        !selectedgroupitem        TYPE clike OPTIONAL
        !selectedpresetfilteritem TYPE clike OPTIONAL
        !selectedsortitem         TYPE clike OPTIONAL
        !filteritems              TYPE clike OPTIONAL
        !sortitems                TYPE clike OPTIONAL
        !groupitems               TYPE clike OPTIONAL
      RETURNING
        VALUE(result)             TYPE REF TO z2ui5_cl_xml_view.

    METHODS filter_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS sort_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS group_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS view_settings_filter_item
      IMPORTING
        !enabled       TYPE clike OPTIONAL
        !key           TYPE clike OPTIONAL
        !multiselect   TYPE clike OPTIONAL
        !selected      TYPE clike OPTIONAL
        !text          TYPE clike OPTIONAL
        !textdirection TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS view_settings_item
      IMPORTING
        !enabled       TYPE clike OPTIONAL
        !key           TYPE clike OPTIONAL
        !selected      TYPE clike OPTIONAL
        !text          TYPE clike OPTIONAL
        !textdirection TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_management
      IMPORTING
        !defaultvariantkey      TYPE clike OPTIONAL
        !enabled                TYPE clike OPTIONAL
        !inerrorstate           TYPE clike OPTIONAL
        !initialselectionkey    TYPE clike OPTIONAL
        !lifecyclesupport       TYPE clike OPTIONAL
        !selectionkey           TYPE clike OPTIONAL
        !showcreatetile         TYPE clike OPTIONAL
        !showexecuteonselection TYPE clike OPTIONAL
        !showsetasdefault       TYPE clike OPTIONAL
        !showshare              TYPE clike OPTIONAL
        !standarditemauthor     TYPE clike OPTIONAL
        !standarditemtext       TYPE clike OPTIONAL
        !usefavorites           TYPE clike OPTIONAL
        !visible                TYPE clike OPTIONAL
        !variantitems           TYPE clike OPTIONAL
        !manage                 TYPE clike OPTIONAL
        !save                   TYPE clike OPTIONAL
        !select                 TYPE clike OPTIONAL
        !uservarcreate          TYPE clike OPTIONAL
        !id                     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_item
      IMPORTING
        !executeonselection      TYPE clike OPTIONAL
        !global                  TYPE clike OPTIONAL
        !labelreadonly           TYPE clike OPTIONAL
        !lifecyclepackage        TYPE clike OPTIONAL
        !lifecycletransportid    TYPE clike OPTIONAL
        !namespace               TYPE clike OPTIONAL
        !readonly                TYPE clike OPTIONAL
        !executeonselect         TYPE clike OPTIONAL
        !author                  TYPE clike OPTIONAL
        !changeable              TYPE clike OPTIONAL
        !enabled                 TYPE clike OPTIONAL
        !favorite                TYPE clike OPTIONAL
        !key                     TYPE clike OPTIONAL
        !text                    TYPE clike OPTIONAL
        !title                   TYPE clike OPTIONAL
        !textdirection           TYPE clike OPTIONAL
        !originaltitle           TYPE clike OPTIONAL
        !originalexecuteonselect TYPE clike OPTIONAL
        !remove                  TYPE clike OPTIONAL
        !rename                  TYPE clike OPTIONAL
        !originalfavorite        TYPE clike OPTIONAL
        !sharing                 TYPE clike OPTIONAL
        !change                  TYPE clike OPTIONAL
      RETURNING
        VALUE(result)            TYPE REF TO z2ui5_cl_xml_view.

    METHODS feed_input
      IMPORTING
        !buttontooltip    TYPE clike OPTIONAL
        !enabled          TYPE clike OPTIONAL
        !growing          TYPE clike OPTIONAL
        !growingmaxlines  TYPE clike OPTIONAL
        !icon             TYPE clike OPTIONAL
        !icondensityaware TYPE clike OPTIONAL
        !icondisplayshape TYPE clike OPTIONAL
        !iconinitials     TYPE clike OPTIONAL
        !iconsize         TYPE clike OPTIONAL
        !maxlength        TYPE clike OPTIONAL
        !placeholder      TYPE clike OPTIONAL
        !rows             TYPE clike OPTIONAL
        !showexceededtext TYPE clike OPTIONAL
        !showicon         TYPE clike OPTIONAL
        !value            TYPE clike OPTIONAL
        !post             TYPE clike OPTIONAL
        !class            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS feed_list_item
      IMPORTING
        !activeicon                  TYPE clike OPTIONAL
        !convertedlinksdefaulttarget TYPE clike OPTIONAL
        !convertlinkstoanchortags    TYPE clike OPTIONAL
        !icon                        TYPE clike OPTIONAL
        !iconactive                  TYPE clike OPTIONAL
        !icondensityaware            TYPE clike OPTIONAL
        !icondisplayshape            TYPE clike OPTIONAL
        !iconinitials                TYPE clike OPTIONAL
        !iconsize                    TYPE clike OPTIONAL
        !info                        TYPE clike OPTIONAL
        !lesslabel                   TYPE clike OPTIONAL
        !maxcharacters               TYPE clike OPTIONAL
        !morelabel                   TYPE clike OPTIONAL
        !sender                      TYPE clike OPTIONAL
        !senderactive                TYPE clike OPTIONAL
        !showicon                    TYPE clike OPTIONAL
        !text                        TYPE clike OPTIONAL
        !timestamp                   TYPE clike OPTIONAL
        !iconpress                   TYPE clike OPTIONAL
        !senderpress                 TYPE clike OPTIONAL
      RETURNING
        VALUE(result)                TYPE REF TO z2ui5_cl_xml_view.

    METHODS feed_list_item_action
      IMPORTING
        !enabled      TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
        !key          TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !visible      TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS mask_input
      IMPORTING
        !placeholder           TYPE clike OPTIONAL
        !mask                  TYPE clike OPTIONAL
        !name                  TYPE clike OPTIONAL
        !textalign             TYPE clike OPTIONAL
        !textdirection         TYPE clike OPTIONAL
        !value                 TYPE clike OPTIONAL
        !width                 TYPE clike OPTIONAL
        !valuestate            TYPE clike OPTIONAL
        !valuestatetext        TYPE clike OPTIONAL
        !placeholdersymbol     TYPE clike OPTIONAL
        !required              TYPE clike OPTIONAL
        !showclearicon         TYPE clike OPTIONAL
        !showvaluestatemessage TYPE clike OPTIONAL
        !visible               TYPE clike OPTIONAL
        !fieldwidth            TYPE clike OPTIONAL
        !livechange            TYPE clike OPTIONAL
        !change                TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS responsive_splitter
      IMPORTING
        !defaultpane  TYPE clike OPTIONAL
        !height       TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS pane_container
      IMPORTING
        !resize       TYPE clike OPTIONAL
        !orientation  TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS split_pane
      IMPORTING
        !id                  TYPE clike OPTIONAL
        !requiredparentwidth TYPE clike OPTIONAL
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS splitter_layout_data
      IMPORTING
        !size         TYPE clike OPTIONAL
        !minsize      TYPE clike OPTIONAL
        !resizable    TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_header
      IMPORTING
        !backgrounddesign     TYPE clike OPTIONAL
        !condensed            TYPE clike OPTIONAL
        !fullscreenoptimized  TYPE clike OPTIONAL
        !icon                 TYPE clike OPTIONAL
        !iconactive           TYPE clike OPTIONAL
        !iconalt              TYPE clike OPTIONAL
        !icondensityaware     TYPE clike OPTIONAL
        !icontooltip          TYPE clike OPTIONAL
        !imageshape           TYPE clike OPTIONAL
        !intro                TYPE clike OPTIONAL
        !introactive          TYPE clike OPTIONAL
        !introhref            TYPE clike OPTIONAL
        !introtarget          TYPE clike OPTIONAL
        !introtextdirection   TYPE clike OPTIONAL
        !number               TYPE clike OPTIONAL
        !numberstate          TYPE clike OPTIONAL
        !numbertextdirection  TYPE clike OPTIONAL
        !numberunit           TYPE clike OPTIONAL
        !responsive           TYPE clike OPTIONAL
        !showtitleselector    TYPE clike OPTIONAL
        !title                TYPE clike OPTIONAL
        !titleactive          TYPE clike OPTIONAL
        !titlehref            TYPE clike OPTIONAL
        !titlelevel           TYPE clike OPTIONAL
        !titleselectortooltip TYPE clike OPTIONAL
        !titletarget          TYPE clike OPTIONAL
        !titletextdirection   TYPE clike OPTIONAL
        !iconpress            TYPE clike OPTIONAL
        !intropress           TYPE clike OPTIONAL
        !titlepress           TYPE clike OPTIONAL
        !titleselectorpress   TYPE clike OPTIONAL
      RETURNING
        VALUE(result)         TYPE REF TO z2ui5_cl_xml_view.

    METHODS additional_numbers
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS header_container
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS markers
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS statuses
      IMPORTING
        !ns           TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS first_status
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS second_status
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS object_marker
      IMPORTING
        !additionalinfo TYPE clike OPTIONAL
        !type           TYPE clike OPTIONAL
        !visibility     TYPE clike OPTIONAL
        !visible        TYPE clike OPTIONAL
        !press          TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.


    METHODS object_list_item
      IMPORTING
        !activeicon          TYPE clike OPTIONAL
        !icon                TYPE clike OPTIONAL
        !icondensityaware    TYPE clike OPTIONAL
        !intro               TYPE clike OPTIONAL
        !introtextdirection  TYPE clike OPTIONAL
        !number              TYPE clike OPTIONAL
        !numberstate         TYPE clike OPTIONAL
        !numbertextdirection TYPE clike OPTIONAL
        !numberunit          TYPE clike OPTIONAL
        !title               TYPE clike OPTIONAL
        !titletextdirection  TYPE clike OPTIONAL
      RETURNING
        VALUE(result)        TYPE REF TO z2ui5_cl_xml_view.

    METHODS detail_box
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS light_box
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS light_box_item
      IMPORTING
        !alt          TYPE clike OPTIONAL
        !imagesrc     TYPE clike OPTIONAL
        !subtitle     TYPE clike OPTIONAL
        !title        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.


    METHODS line_micro_chart
      IMPORTING
        !color                 TYPE clike OPTIONAL
        !height                TYPE clike OPTIONAL
        !leftbottomlabel       TYPE clike OPTIONAL
        !lefttoplabel          TYPE clike OPTIONAL
        !maxxvalue             TYPE clike OPTIONAL
        !minxvalue             TYPE clike OPTIONAL
        !minyvalue             TYPE clike OPTIONAL
        !rightbottomlabel      TYPE clike OPTIONAL
        !righttoplabel         TYPE clike OPTIONAL
        !size                  TYPE clike OPTIONAL
        !threshold             TYPE clike OPTIONAL
        !thresholddisplayvalue TYPE clike OPTIONAL
        !width                 TYPE clike OPTIONAL
        !press                 TYPE clike OPTIONAL
        !hideonnodata          TYPE clike OPTIONAL
        !showbottomlabels      TYPE clike OPTIONAL
        !showpoints            TYPE clike OPTIONAL
        !showthresholdline     TYPE clike OPTIONAL
        !showthresholdvalue    TYPE clike OPTIONAL
        !showtoplabels         TYPE clike OPTIONAL
        !maxyvalue             TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS stacked_bar_micro_chart
      IMPORTING
        !height           TYPE clike OPTIONAL
        !press            TYPE clike OPTIONAL
        !maxvalue         TYPE clike OPTIONAL
        !precision        TYPE clike OPTIONAL
        !size             TYPE clike OPTIONAL
        !hideonnodata     TYPE clike OPTIONAL
        !displayzerovalue TYPE clike OPTIONAL
        !showlabels       TYPE clike OPTIONAL
        !width            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_micro_chart
      IMPORTING
        !width             TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !size              TYPE clike OPTIONAL
        !aligncontent      TYPE clike OPTIONAL
        !hideonnodata      TYPE clike OPTIONAL
        !allowcolumnlabels TYPE clike OPTIONAL
        !showbottomlabels  TYPE clike OPTIONAL
        !showtoplabels     TYPE clike OPTIONAL
        !height            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS comparison_micro_chart
      IMPORTING
        !colorpalette TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !size         TYPE clike OPTIONAL
        !height       TYPE clike OPTIONAL
        !maxvalue     TYPE clike OPTIONAL
        !minvalue     TYPE clike OPTIONAL
        !scale        TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
        !hideonnodata TYPE clike OPTIONAL
        !shrinkable   TYPE clike OPTIONAL
        !view         TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS delta_micro_chart
      IMPORTING
        !color             TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !size              TYPE clike OPTIONAL
        !height            TYPE clike OPTIONAL
        !width             TYPE clike OPTIONAL
        !deltadisplayvalue TYPE clike OPTIONAL
        !displayvalue1     TYPE clike OPTIONAL
        !displayvalue2     TYPE clike OPTIONAL
        !title2            TYPE clike OPTIONAL
        !value1            TYPE clike OPTIONAL
        !value2            TYPE clike OPTIONAL
        !view              TYPE clike OPTIONAL
        !hideonnodata      TYPE clike OPTIONAL
        !title1            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS bullet_micro_chart
      IMPORTING
        !actualvaluelabel  TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !size              TYPE clike OPTIONAL
        !height            TYPE clike OPTIONAL
        !width             TYPE clike OPTIONAL
        !deltavaluelabel   TYPE clike OPTIONAL
        !maxvalue          TYPE clike OPTIONAL
        !minvalue          TYPE clike OPTIONAL
        !mode              TYPE clike OPTIONAL
        !scale             TYPE clike OPTIONAL
        !targetvalue       TYPE clike OPTIONAL
        !targetvaluelabel  TYPE clike OPTIONAL
        !scalecolor        TYPE clike OPTIONAL
        !hideonnodata      TYPE clike OPTIONAL
        !showactualvalue   TYPE clike OPTIONAL
        !showdeltavalue    TYPE clike OPTIONAL
        !showtargetvalue   TYPE clike OPTIONAL
        !showthresholds    TYPE clike OPTIONAL
        !showvaluemarker   TYPE clike OPTIONAL
        !smallrangeallowed TYPE clike OPTIONAL
        !forecastvalue     TYPE clike OPTIONAL
        !savidm            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS harvey_ball_micro_chart
      IMPORTING
        !colorpalette   TYPE clike OPTIONAL
        !press          TYPE clike OPTIONAL
        !size           TYPE clike OPTIONAL
        !height         TYPE clike OPTIONAL
        !width          TYPE clike OPTIONAL
        !total          TYPE clike OPTIONAL
        !totallabel     TYPE clike OPTIONAL
        !aligncontent   TYPE clike OPTIONAL
        !hideonnodata   TYPE clike OPTIONAL
        !formattedlabel TYPE clike OPTIONAL
        !showfractions  TYPE clike OPTIONAL
        !showtotal      TYPE clike OPTIONAL
        !totalscale     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)   TYPE REF TO z2ui5_cl_xml_view.

    METHODS area_micro_chart
      IMPORTING
        !colorpalette TYPE clike OPTIONAL
        !press        TYPE clike OPTIONAL
        !size         TYPE clike OPTIONAL
        !height       TYPE clike OPTIONAL
        !maxxvalue    TYPE clike OPTIONAL
        !maxyvalue    TYPE clike OPTIONAL
        !minxvalue    TYPE clike OPTIONAL
        !minyvalue    TYPE clike OPTIONAL
        !view         TYPE clike OPTIONAL
        !aligncontent TYPE clike OPTIONAL
        !hideonnodata TYPE clike OPTIONAL
        !showlabel    TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS data
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS rich_text_editor
      IMPORTING
        !buttongroups       TYPE clike OPTIONAL
        !customtoolbar      TYPE clike OPTIONAL
        !editable           TYPE clike OPTIONAL
        !editortype         TYPE clike OPTIONAL
        !height             TYPE clike OPTIONAL
        !plugins            TYPE clike OPTIONAL
        !required           TYPE clike OPTIONAL
        !sanitizevalue      TYPE clike OPTIONAL
        !showgroupclipboard TYPE clike OPTIONAL
        !showgroupfont      TYPE clike OPTIONAL
        !showgroupfontstyle TYPE clike OPTIONAL
        !showgroupinsert    TYPE clike OPTIONAL
        !showgrouplink      TYPE clike OPTIONAL
        !showgroupstructure TYPE clike OPTIONAL
        !showgrouptextalign TYPE clike OPTIONAL
        !showgroupundo      TYPE clike OPTIONAL
        !textdirection      TYPE clike OPTIONAL
        !uselegacytheme     TYPE clike OPTIONAL
        !value              TYPE clike OPTIONAL
        !width              TYPE clike OPTIONAL
        !wrapping           TYPE clike OPTIONAL
        !beforeeditorinit   TYPE clike OPTIONAL
        !change             TYPE clike OPTIONAL
        !ready              TYPE clike OPTIONAL
        !readyrecurring     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS upload_set
      IMPORTING
        !id                      TYPE clike OPTIONAL
        !instantupload           TYPE clike OPTIONAL
        !showicons               TYPE clike OPTIONAL
        !uploadenabled           TYPE clike OPTIONAL
        !terminationenabled      TYPE clike OPTIONAL
        !filetypes               TYPE clike OPTIONAL
        !maxfilenamelength       TYPE clike OPTIONAL
        !maxfilesize             TYPE clike OPTIONAL
        !mediatypes              TYPE clike OPTIONAL
        !uploadurl               TYPE clike OPTIONAL
        !items                   TYPE clike OPTIONAL
        !mode                    TYPE clike OPTIONAL
        !selectionchanged        TYPE clike OPTIONAL
        !uploadcompleted         TYPE clike OPTIONAL
        !afteritemadded          TYPE clike OPTIONAL
        !samefilenameallowed     TYPE clike OPTIONAL
        !uploadbuttoninvisible   TYPE clike OPTIONAL
        !directory               TYPE clike OPTIONAL
        !multiple                TYPE clike OPTIONAL
        !dragdropdescription     TYPE clike OPTIONAL
        !dragdroptext            TYPE clike OPTIONAL
        !nodatatext              TYPE clike OPTIONAL
        !nodatadescription       TYPE clike OPTIONAL
        !nodataillustrationtype  TYPE clike OPTIONAL
        !afteritemedited         TYPE clike OPTIONAL
        !afteritemremoved        TYPE clike OPTIONAL
        !beforeitemadded         TYPE clike OPTIONAL
        !beforeitemedited        TYPE clike OPTIONAL
        !beforeitemremoved       TYPE clike OPTIONAL
        !beforeuploadstarts      TYPE clike OPTIONAL
        !beforeuploadtermination TYPE clike OPTIONAL
        !filenamelengthexceeded  TYPE clike OPTIONAL
        !filerenamed             TYPE clike OPTIONAL
        !filesizeexceeded        TYPE clike OPTIONAL
        !filetypemismatch        TYPE clike OPTIONAL
        !itemdragstart           TYPE clike OPTIONAL
        !itemdrop                TYPE clike OPTIONAL
        !mediatypemismatch       TYPE clike OPTIONAL
        !uploadterminated        TYPE clike OPTIONAL
      RETURNING
        VALUE(result)            TYPE REF TO z2ui5_cl_xml_view.

    METHODS upload_set_toolbar_placeholder
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS upload_set_item
      IMPORTING
        !filename      TYPE clike OPTIONAL
        !mediatype     TYPE clike OPTIONAL
        !url           TYPE clike OPTIONAL
        !thumbnailurl  TYPE clike OPTIONAL
        !markers       TYPE clike OPTIONAL
        !statuses      TYPE clike OPTIONAL
        !enablededit   TYPE clike OPTIONAL
        !enabledremove TYPE clike OPTIONAL
        !selected      TYPE clike OPTIONAL
        !visibleedit   TYPE clike OPTIONAL
        !visibleremove TYPE clike OPTIONAL
        !uploadstate   TYPE clike OPTIONAL
        !uploadurl     TYPE clike OPTIONAL
        !openpressed   TYPE clike OPTIONAL
        !removepressed TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS markers_as_status
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS rules
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS mask_input_rule
      IMPORTING
        !maskformatsymbol TYPE clike OPTIONAL
        !regex            TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS side_panel
      IMPORTING
        !actionbarexpanded         TYPE clike OPTIONAL
        !arialabel                 TYPE clike OPTIONAL
        !sidepanelmaxwidth         TYPE clike OPTIONAL
        !sidepanelminwidth         TYPE clike OPTIONAL
        !sidepanelposition         TYPE clike OPTIONAL
        !sidepanelresizable        TYPE clike OPTIONAL
        !sidepanelresizelargerstep TYPE clike OPTIONAL
        !sidepanelresizestep       TYPE clike OPTIONAL
        !sidepanelwidth            TYPE clike OPTIONAL
        !toggle                    TYPE clike OPTIONAL
      RETURNING
        VALUE(result)              TYPE REF TO z2ui5_cl_xml_view.

    METHODS side_panel_item
      IMPORTING
        !icon         TYPE clike OPTIONAL
        !text         TYPE clike OPTIONAL
        !key          TYPE clike OPTIONAL
        !enabled      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS main_content
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view
      IMPORTING
        !placement    TYPE clike OPTIONAL
        !width        TYPE clike OPTIONAL
        !afterclose   TYPE clike OPTIONAL
        !afteropen    TYPE clike OPTIONAL
        !beforeclose  TYPE clike OPTIONAL
        !beforeopen   TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_page
      IMPORTING
        !description  TYPE clike OPTIONAL
        !header       TYPE clike OPTIONAL
        !pageid       TYPE clike OPTIONAL
        !title        TYPE clike OPTIONAL
        !titleurl     TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_page_avatar
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_group
      IMPORTING
        !heading      TYPE clike OPTIONAL
        !visible      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS quick_view_group_element
      IMPORTING
        !emailsubject TYPE clike OPTIONAL
        !label        TYPE clike OPTIONAL
        !pagelinkid   TYPE clike OPTIONAL
        !target       TYPE clike OPTIONAL
        !type         TYPE clike OPTIONAL
        !url          TYPE clike OPTIONAL
        !value        TYPE clike OPTIONAL
        !visible      TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS variant_management_fl
      IMPORTING
        !displaytextfsv                TYPE clike OPTIONAL
        !editable                      TYPE clike OPTIONAL
        !executeonselectionforstandflt TYPE clike OPTIONAL
        !headerlevel                   TYPE clike OPTIONAL
        !inerrorstate                  TYPE clike OPTIONAL
        !maxwidth                      TYPE clike OPTIONAL
        !modelname                     TYPE clike OPTIONAL
        !resetoncontextchange          TYPE clike OPTIONAL
        !showsetasdefault              TYPE clike OPTIONAL
        !titlestyle                    TYPE clike OPTIONAL
        !updatevariantinurl            TYPE clike OPTIONAL
        !for                           TYPE clike OPTIONAL
        !cancel                        TYPE clike OPTIONAL
        !initialized                   TYPE clike OPTIONAL
        !manage                        TYPE clike OPTIONAL
        !save                          TYPE clike OPTIONAL
        !select                        TYPE clike OPTIONAL
      RETURNING
        VALUE(result)                  TYPE REF TO z2ui5_cl_xml_view.

    METHODS column_element_data
      IMPORTING
        !cellslarge   TYPE clike OPTIONAL
        !cellssmall   TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS fb_control
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS smart_variant_management
      IMPORTING
        !id                     TYPE clike OPTIONAL
        !showexecuteonselection TYPE clike OPTIONAL
      RETURNING
        VALUE(result)           TYPE REF TO z2ui5_cl_xml_view.

    METHODS form_toolbar
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS paging_button
      IMPORTING
        !count                 TYPE clike OPTIONAL
        !nextbuttontooltip     TYPE clike OPTIONAL
        !previousbuttontooltip TYPE clike OPTIONAL
        !position              TYPE clike OPTIONAL
      RETURNING
        VALUE(result)          TYPE REF TO z2ui5_cl_xml_view.

    METHODS timeline
      IMPORTING
        !id                TYPE clike OPTIONAL
        !enabledoublesided TYPE clike OPTIONAL
        !groupby           TYPE clike OPTIONAL
        !growingthreshold  TYPE clike OPTIONAL
        !filtertitle       TYPE clike OPTIONAL
        !sortoldestfirst   TYPE clike OPTIONAL
        !alignment         TYPE clike OPTIONAL
        !axisorientation   TYPE clike OPTIONAL
        !content           TYPE clike OPTIONAL
        !enablemodelfilter TYPE clike OPTIONAL
        !enablescroll      TYPE clike OPTIONAL
        !forcegrowing      TYPE clike OPTIONAL
        !group             TYPE clike OPTIONAL
        !lazyloading       TYPE clike OPTIONAL
        !showheaderbar     TYPE clike OPTIONAL
        !showicons         TYPE clike OPTIONAL
        !showitemfilter    TYPE clike OPTIONAL
        !showsearch        TYPE clike OPTIONAL
        !showsort          TYPE clike OPTIONAL
        !showtimefilter    TYPE clike OPTIONAL
        !sort              TYPE clike OPTIONAL
        !groupbytype       TYPE clike OPTIONAL
        !textheight        TYPE clike OPTIONAL
        !width             TYPE clike OPTIONAL
        !height            TYPE clike OPTIONAL
        !nodatatext        TYPE clike OPTIONAL
        !filterList        TYPE clike OPTIONAL
        !customFilter      TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS timeline_item
      IMporting
        !id                TYPE clike OPTIONAL
        !datetime          TYPE clike OPTIONAL
        !title             TYPE clike OPTIONAL
        !usernameclickable TYPE clike OPTIONAL
        !useicontooltip    TYPE clike OPTIONAL
        !usernameclicked   TYPE clike OPTIONAL
        !select            TYPE clike OPTIONAL
        !userpicture       TYPE clike OPTIONAL
        !text              TYPE clike OPTIONAL
        !username          TYPE clike OPTIONAL
        !filtervalue       TYPE clike OPTIONAL
        !icondisplayshape  TYPE clike OPTIONAL
        !iconinitials      TYPE clike OPTIONAL
        !iconsize          TYPE clike OPTIONAL
        !icontooltip       TYPE clike OPTIONAL
        !maxcharacters     TYPE clike OPTIONAL
        !replycount        TYPE clike OPTIONAL
        !status            TYPE clike OPTIONAL
        !customactionclicked  TYPE clike OPTIONAL
        !press             TYPE clike OPTIONAL
        !replylistopen     TYPE clike OPTIONAL
        !replypost         TYPE clike OPTIONAL
        !icon              TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view .

    METHODS split_container
      IMPORTING
        !id                          TYPE clike OPTIONAL
        !initialdetail               TYPE clike OPTIONAL
        !initialmaster               TYPE clike OPTIONAL
        !backgroundcolor             TYPE clike OPTIONAL
        !backgroundimage             TYPE clike OPTIONAL
        !backgroundopacity           TYPE clike OPTIONAL
        !backgroundrepeat            TYPE clike OPTIONAL
        !defaulttransitionnamedetail TYPE clike OPTIONAL
        !defaulttransitionnamemaster TYPE clike OPTIONAL
        !masterbuttontext            TYPE clike OPTIONAL
        !masterbuttontooltip         TYPE clike OPTIONAL
        !mode                        TYPE clike OPTIONAL
        !afterdetailnavigate         TYPE clike OPTIONAL
        !aftermasterclose            TYPE clike OPTIONAL
        !aftermasternavigate         TYPE clike OPTIONAL
        !aftermasteropen             TYPE clike OPTIONAL
        !beforemasterclose           TYPE clike OPTIONAL
        !beforemasteropen            TYPE clike OPTIONAL
        !detailnavigate              TYPE clike OPTIONAL
        !masterbutton                TYPE clike OPTIONAL
        !masternavigate              TYPE clike OPTIONAL
      RETURNING
        VALUE(result)                TYPE REF TO z2ui5_cl_xml_view .

    METHODS detail_pages
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS master_pages
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS container_content
      IMPORTING
        !id           TYPE clike OPTIONAL
        !title        TYPE clike OPTIONAL
        !icon         TYPE clike OPTIONAL
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS map_container
      IMPORTING
        !id               TYPE clike OPTIONAL
        !autoadjustheight TYPE clike OPTIONAL
      RETURNING
        VALUE(result)     TYPE REF TO z2ui5_cl_xml_view.

    METHODS spot
      IMPORTING
        !id            TYPE clike OPTIONAL
        !position      TYPE clike OPTIONAL
        !contentoffset TYPE clike OPTIONAL
        !type          TYPE clike OPTIONAL
        !scale         TYPE clike OPTIONAL
        !tooltip       TYPE clike OPTIONAL
        !image         TYPE clike OPTIONAL
        !icon          TYPE clike OPTIONAL
      RETURNING
        VALUE(result)  TYPE REF TO z2ui5_cl_xml_view.

    METHODS analytic_map
      IMPORTING
        !id              TYPE clike OPTIONAL
        !initialposition TYPE clike OPTIONAL
        !initialzoom     TYPE clike OPTIONAL
      RETURNING
        VALUE(result)    TYPE REF TO z2ui5_cl_xml_view.

    METHODS spots
      IMPORTING
        !id           TYPE clike OPTIONAL
        !items        TYPE clike OPTIONAL
          PREFERRED PARAMETER items
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS vos
      RETURNING
        VALUE(result) TYPE REF TO z2ui5_cl_xml_view.

    METHODS action_sheet
      IMPORTING
        !id                TYPE clike OPTIONAL
        !cancelbuttontext  TYPE clike OPTIONAL
        !placement         TYPE clike OPTIONAL
        !showcancelbutton  TYPE clike OPTIONAL
        !title             TYPE clike OPTIONAL
        !afterclose        TYPE clike OPTIONAL
        !afteropen         TYPE clike OPTIONAL
        !beforeclose       TYPE clike OPTIONAL
        !beforeopen        TYPE clike OPTIONAL
        !cancelbuttonpress TYPE clike OPTIONAL
        !visible           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)      TYPE REF TO z2ui5_cl_xml_view.

    METHODS expandable_text
      IMPORTING
        !id                 TYPE clike OPTIONAL
        !emptyindicatormode TYPE clike OPTIONAL
        !maxcharacters      TYPE clike OPTIONAL
        !overflowmode       TYPE clike OPTIONAL
        !renderwhitespace   TYPE clike OPTIONAL
        !text               TYPE clike OPTIONAL
        !textalign          TYPE clike OPTIONAL
        !textdirection      TYPE clike OPTIONAL
        !visible            TYPE clike OPTIONAL
        !wrappingtype       TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS select
      IMPORTING
        !id                   TYPE clike OPTIONAL
        !autoadjustwidth      TYPE clike OPTIONAL
        !columnratio          TYPE clike OPTIONAL
        !editable             TYPE clike OPTIONAL
        !enabled              TYPE clike OPTIONAL
        !forceselection       TYPE clike OPTIONAL
        !icon                 TYPE clike OPTIONAL
        !maxwidth             TYPE clike OPTIONAL
        !name                 TYPE clike OPTIONAL
        !required             TYPE clike OPTIONAL
        !resetonmissingkey    TYPE clike OPTIONAL
        !selecteditemid       TYPE clike OPTIONAL
        !selectedkey          TYPE clike OPTIONAL
        !showsecondaryvalues  TYPE clike OPTIONAL
        !textalign            TYPE clike OPTIONAL
        !textdirection        TYPE clike OPTIONAL
        !type                 TYPE clike OPTIONAL
        !valuestate           TYPE clike OPTIONAL
        !valuestatetext       TYPE clike OPTIONAL
        !visible              TYPE clike OPTIONAL
        !width                TYPE clike OPTIONAL
        !wrapitemstext        TYPE clike OPTIONAL
        !items                TYPE clike OPTIONAL
        !selecteditem         TYPE clike OPTIONAL
        !change               TYPE clike OPTIONAL
        !livechange           TYPE clike OPTIONAL
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

    METHODS embedded_control
      RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.

  METHODS header_container_control
    IMPORTING
      !backgroundDesign TYPE clike OPTIONAL
      !gridLayout       TYPE clike OPTIONAL
      !height           TYPE clike OPTIONAL
      !orientation      TYPE clike OPTIONAL
      !scrollStep       TYPE clike OPTIONAL
      !scrollStepByItem TYPE clike OPTIONAL
      !scrollTime       TYPE clike OPTIONAL
      !showDividers     TYPE clike OPTIONAL
      !showOverflowItem TYPE clike OPTIONAL
      !visible          TYPE clike OPTIONAL
      !width            TYPE clike OPTIONAL
      !id               TYPE clike OPTIONAL
      !scroll           TYPE clike OPTIONAL
    RETURNING
        VALUE(result)       TYPE REF TO z2ui5_cl_xml_view.


  PROTECTED SECTION.
    DATA mv_name  TYPE string.
    DATA mv_ns     TYPE string.
    DATA mt_prop  TYPE SORTED TABLE OF z2ui5_if_client=>ty_s_name_value with non-UNIQUE key n.

    DATA mt_ns  TYPE SORTED TABLE OF string WITH UNIQUE KEY table_line.
    DATA mo_root   TYPE REF TO z2ui5_cl_xml_view.
    DATA mo_previous   TYPE REF TO z2ui5_cl_xml_view.
    DATA mo_parent TYPE REF TO z2ui5_cl_xml_view.
    DATA mt_child  TYPE STANDARD TABLE OF REF TO z2ui5_cl_xml_view WITH DEFAULT KEY.

    DATA mi_client TYPE REF TO z2ui5_if_client.

  PRIVATE SECTION.
ENDCLASS.



CLASS Z2UI5_CL_XML_VIEW IMPLEMENTATION.


  METHOD actions.
    result = _generic( name = `actions`
                       ns   = ns ).
  ENDMETHOD.


  METHOD action_sheet.
    DATA temp1 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp2 LIKE LINE OF temp1.
    CLEAR temp1.
    
    temp2-n = `id`.
    temp2-v = id.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `cancelbuttontext`.
    temp2-v = cancelbuttontext.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `placement`.
    temp2-v = placement.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `showCancelButton`.
    temp2-v = showcancelbutton.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `title`.
    temp2-v = title.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `afterClose`.
    temp2-v = afterclose.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `afterOpen`.
    temp2-v = afteropen.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `beforeClose`.
    temp2-v = beforeclose.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `beforeOpen`.
    temp2-v = beforeopen.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `cancelButtonPress`.
    temp2-v = cancelbuttonpress.
    INSERT temp2 INTO TABLE temp1.
    temp2-n = `visible`.
    temp2-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp2 INTO TABLE temp1.
    result = _generic( name = `ActionSheet`
                       t_prop = temp1 ).
  ENDMETHOD.


  METHOD additional_content.
    result = _generic( `additionalContent` ).
  ENDMETHOD.


  METHOD additional_numbers.
    result = _generic( name = `additionalNumbers` ).
  ENDMETHOD.


  METHOD analytic_map.

    DATA temp3 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp4 LIKE LINE OF temp3.
    CLEAR temp3.
    
    temp4-n = `id`.
    temp4-v = id.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `initialPosition`.
    temp4-v = initialposition.
    INSERT temp4 INTO TABLE temp3.
    temp4-n = `initialZoom`.
    temp4-v = initialzoom.
    INSERT temp4 INTO TABLE temp3.
    result = _generic( name = `AnalyticMap`
                      ns    = `vbm`
                      t_prop = temp3 ).

  ENDMETHOD.


  METHOD appointments.
    result = _generic( `appointments` ).
  ENDMETHOD.


  METHOD appointment_items.
    result = _generic( name = `appointmentItems` ).
  ENDMETHOD.


  METHOD area_micro_chart.
    DATA temp5 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp6 LIKE LINE OF temp5.
    result = me.
    
    CLEAR temp5.
    
    temp6-n = `colorPalette`.
    temp6-v = colorpalette.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `press`.
    temp6-v = press.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `size`.
    temp6-v = size.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `height`.
    temp6-v = height.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `maxXValue`.
    temp6-v = maxxvalue.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `maxYValue`.
    temp6-v = maxyvalue.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `minXValue`.
    temp6-v = minxvalue.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `minYValue`.
    temp6-v = minyvalue.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `view`.
    temp6-v = view.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `alignContent`.
    temp6-v = aligncontent.
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `hideOnNoData`.
    temp6-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `showLabel`.
    temp6-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showlabel ).
    INSERT temp6 INTO TABLE temp5.
    temp6-n = `width`.
    temp6-v = width.
    INSERT temp6 INTO TABLE temp5.
    _generic( name   = `AreaMicroChart`
              ns     = `mchart`
              t_prop = temp5 ).
  ENDMETHOD.


  METHOD avatar.
    DATA temp7 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp8 LIKE LINE OF temp7.
    result = me.
    
    CLEAR temp7.
    
    temp8-n = `src`.
    temp8-v = src.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `class`.
    temp8-v = class.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `ariaHasPopup`.
    temp8-v = ariahaspopup.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `backgroundColor`.
    temp8-v = backgroundcolor.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `badgeIcon`.
    temp8-v = badgeicon.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `badgeTooltip`.
    temp8-v = badgetooltip.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `badgeValueState`.
    temp8-v = badgevaluestate.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `customDisplaySize`.
    temp8-v = customdisplaysize.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `customFontSize`.
    temp8-v = customfontsize.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `displayShape`.
    temp8-v = displayshape.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `fallbackIcon`.
    temp8-v = fallbackicon.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `imageFitType`.
    temp8-v = imagefittype.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `initials`.
    temp8-v = initials.
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `showBorder`.
    temp8-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showborder ).
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `decorative`.
    temp8-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( decorative ).
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `enabled`.
    temp8-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp8 INTO TABLE temp7.
    temp8-n = `displaysize`.
    temp8-v = displaysize.
    INSERT temp8 INTO TABLE temp7.
    _generic( name   = `Avatar`
              t_prop = temp7 ).
  ENDMETHOD.


  METHOD axis_time_strategy.
    result = _generic( name = `axisTimeStrategy`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD badge_custom_data.
    DATA temp9 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp10 LIKE LINE OF temp9.
    result = me.
    
    CLEAR temp9.
    
    temp10-n = `key`.
    temp10-v = key.
    INSERT temp10 INTO TABLE temp9.
    temp10-n = `value`.
    temp10-v = value.
    INSERT temp10 INTO TABLE temp9.
    temp10-n = `visible`.
    temp10-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp10 INTO TABLE temp9.
    _generic( name   = `BadgeCustomData`
              t_prop = temp9 ).
  ENDMETHOD.


  METHOD bar.
    result = _generic( `Bar` ).
  ENDMETHOD.


  METHOD barcode_scanner_button.
    DATA temp11 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp12 LIKE LINE OF temp11.
    CLEAR temp11.
    
    temp12-n = `id`.
    temp12-v = id.
    INSERT temp12 INTO TABLE temp11.
    temp12-n = `scanSuccess`.
    temp12-v = scansuccess.
    INSERT temp12 INTO TABLE temp11.
    temp12-n = `scanFail`.
    temp12-v = scanfail.
    INSERT temp12 INTO TABLE temp11.
    temp12-n = `inputLiveUpdate`.
    temp12-v = inputliveupdate.
    INSERT temp12 INTO TABLE temp11.
    temp12-n = `dialogTitle`.
    temp12-v = dialogtitle.
    INSERT temp12 INTO TABLE temp11.
    result = _generic( name   = `BarcodeScannerButton`
                       ns     = 'ndc'
                       t_prop = temp11 ).

  ENDMETHOD.


  METHOD bars.
    result = _generic( name = `bars`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD base_rectangle.

    DATA temp13 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp14 LIKE LINE OF temp13.
    CLEAR temp13.
    
    temp14-n = `time`.
    temp14-v = time.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `endtime`.
    temp14-v = endtime.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `selectable`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selectable ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `selectedFill`.
    temp14-v = selectedfill.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `fill`.
    temp14-v = fill.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `height`.
    temp14-v = height.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `title`.
    temp14-v = title.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `animationSettings`.
    temp14-v = animationsettings.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `alignShape`.
    temp14-v = alignshape.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `color`.
    temp14-v = color.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `fontSize`.
    temp14-v = fontsize.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `connectable`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( connectable ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `fontFamily`.
    temp14-v = fontfamily.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `filter`.
    temp14-v = filter.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `transform`.
    temp14-v = transform.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `countInBirdEye`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( countinbirdeye ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `fontWeight`.
    temp14-v = fontweight.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `showTitle`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtitle ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `selected`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `resizable`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( resizable ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `horizontalTextAlignment`.
    temp14-v = horizontaltextalignment.
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `highlighted`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( highlighted ).
    INSERT temp14 INTO TABLE temp13.
    temp14-n = `highlightable`.
    temp14-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( highlightable ).
    INSERT temp14 INTO TABLE temp13.
    result = _generic( name   = `BaseRectangle`
                       ns     = 'gantt'
                       t_prop = temp13 ).
  ENDMETHOD.


  METHOD begin_column_pages.
    " todo, implement method
    result = _generic( name = `beginColumnPages`
                       ns   = `f` ).

  ENDMETHOD.


  METHOD blocks.
    result = _generic( name = `blocks`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD block_layout.
    DATA temp15 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp16 LIKE LINE OF temp15.
    CLEAR temp15.
    
    temp16-n = `background`.
    temp16-v = background.
    INSERT temp16 INTO TABLE temp15.
    temp16-n = `id`.
    temp16-v = id.
    INSERT temp16 INTO TABLE temp15.
    result = _generic( name   = `BlockLayout`
                       ns     = `layout`
                       t_prop = temp15 ).
  ENDMETHOD.


  METHOD block_layout_cell.
    DATA temp17 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp18 LIKE LINE OF temp17.
    CLEAR temp17.
    
    temp18-n = `backgroundColorSet`.
    temp18-v = backgroundcolorset.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `backgroundColorShade`.
    temp18-v = backgroundcolorshade.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `title`.
    temp18-v = title.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `titleAlignment`.
    temp18-v = titlealignment.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `width`.
    temp18-v = width.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `class`.
    temp18-v = class.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `id`.
    temp18-v = id.
    INSERT temp18 INTO TABLE temp17.
    temp18-n = `titleLevel`.
    temp18-v = titlelevel.
    INSERT temp18 INTO TABLE temp17.
    result = _generic( name   = `BlockLayoutCell`
                       ns     = `layout`
                       t_prop = temp17 ).
  ENDMETHOD.


  METHOD block_layout_row.
    DATA temp19 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp20 LIKE LINE OF temp19.
    CLEAR temp19.
    
    temp20-n = `rowColorSet`.
    temp20-v = rowcolorset.
    INSERT temp20 INTO TABLE temp19.
    temp20-n = `id`.
    temp20-v = id.
    INSERT temp20 INTO TABLE temp19.
    result = _generic( name   = `BlockLayoutRow`
                       ns     = `layout`
                       t_prop = temp19 ).
  ENDMETHOD.


  METHOD bullet_micro_chart.
    DATA temp21 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp22 LIKE LINE OF temp21.
    result = me.
    
    CLEAR temp21.
    
    temp22-n = `actualValueLabel`.
    temp22-v = actualvaluelabel.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `press`.
    temp22-v = press.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `size`.
    temp22-v = size.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `height`.
    temp22-v = height.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `width`.
    temp22-v = width.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `deltaValueLabel`.
    temp22-v = deltavaluelabel.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `maxValue`.
    temp22-v = maxvalue.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `minValue`.
    temp22-v = minvalue.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `mode`.
    temp22-v = mode.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `scale`.
    temp22-v = scale.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `targetValue`.
    temp22-v = targetvalue.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `targetValueLabel`.
    temp22-v = targetvaluelabel.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `scaleColor`.
    temp22-v = scalecolor.
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `hideOnNoData`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `showActualValue`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showactualvalue ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `showActualValueInDeltaMode`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( savidm ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `showDeltaValue`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showdeltavalue ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `showTargetValue`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtargetvalue ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `showThresholds`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showthresholds ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `showValueMarker`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluemarker ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `smallRangeAllowed`.
    temp22-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( smallrangeallowed ).
    INSERT temp22 INTO TABLE temp21.
    temp22-n = `forecastValue`.
    temp22-v = forecastvalue.
    INSERT temp22 INTO TABLE temp21.
    _generic( name   = `BulletMicroChart`
              ns     = `mchart`
              t_prop = temp21 ).
  ENDMETHOD.


  METHOD button.
    DATA temp23 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp24 LIKE LINE OF temp23.

    result = me.
    
    CLEAR temp23.
    
    temp24-n = `press`.
    temp24-v = press.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `text`.
    temp24-v = text.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `enabled`.
    temp24-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `visible`.
    temp24-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `iconDensityAware`.
    temp24-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `iconFirst`.
    temp24-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( iconfirst ).
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `icon`.
    temp24-v = icon.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `type`.
    temp24-v = type.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `id`.
    temp24-v = id.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `width`.
    temp24-v = width.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `tooltip`.
    temp24-v = tooltip.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `textDirection`.
    temp24-v = textdirection.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `accessibleRole`.
    temp24-v = accessiblerole.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `activeIcon`.
    temp24-v = activeicon.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `ariaHasPopup`.
    temp24-v = ariahaspopup.
    INSERT temp24 INTO TABLE temp23.
    temp24-n = `class`.
    temp24-v = class.
    INSERT temp24 INTO TABLE temp23.
    _generic( name   = `Button`
              ns     = ns
              t_prop = temp23 ).
  ENDMETHOD.


  METHOD buttons.
    result = _generic( `buttons` ).
  ENDMETHOD.


  METHOD calendar_appointment.
    DATA temp25 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp26 LIKE LINE OF temp25.
    CLEAR temp25.
    
    temp26-n = `startDate`.
    temp26-v = startdate.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `endDate`.
    temp26-v = enddate.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `icon`.
    temp26-v = icon.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `title`.
    temp26-v = title.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `text`.
    temp26-v = text.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `type`.
    temp26-v = type.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `key`.
    temp26-v = key.
    INSERT temp26 INTO TABLE temp25.
    temp26-n = `tentative`.
    temp26-v = tentative.
    INSERT temp26 INTO TABLE temp25.
    result = _generic( name   = `CalendarAppointment`
                       ns     = `u`
                       t_prop = temp25 ).
  ENDMETHOD.


  METHOD calendar_legend_item.
    DATA temp27 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp28 LIKE LINE OF temp27.
    CLEAR temp27.
    
    temp28-n = `text`.
    temp28-v = text.
    INSERT temp28 INTO TABLE temp27.
    temp28-n = `type`.
    temp28-v = type.
    INSERT temp28 INTO TABLE temp27.
    temp28-n = `tooltip`.
    temp28-v = tooltip.
    INSERT temp28 INTO TABLE temp27.
    temp28-n = `color`.
    temp28-v = color.
    INSERT temp28 INTO TABLE temp27.
    result = _generic( name   = `CalendarLegendItem`
                       t_prop = temp27 ).

  ENDMETHOD.


  METHOD carousel.

    DATA temp29 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp30 LIKE LINE OF temp29.
    CLEAR temp29.
    
    temp30-n = `loop`.
    temp30-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( loop ).
    INSERT temp30 INTO TABLE temp29.
    temp30-n = `class`.
    temp30-v = class.
    INSERT temp30 INTO TABLE temp29.
    temp30-n = `height`.
    temp30-v = height.
    INSERT temp30 INTO TABLE temp29.
    temp30-n = `id`.
    temp30-v = id.
    INSERT temp30 INTO TABLE temp29.
    result = _generic( name   = `Carousel`
                       t_prop = temp29 ).

  ENDMETHOD.


  METHOD cells.
    result = _generic( `cells` ).
  ENDMETHOD.


  METHOD checkbox.
    DATA temp31 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp32 LIKE LINE OF temp31.

    result = me.
    
    CLEAR temp31.
    
    temp32-n = `text`.
    temp32-v = text.
    INSERT temp32 INTO TABLE temp31.
    temp32-n = `selected`.
    temp32-v = selected.
    INSERT temp32 INTO TABLE temp31.
    temp32-n = `enabled`.
    temp32-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp32 INTO TABLE temp31.
    temp32-n = `select`.
    temp32-v = select.
    INSERT temp32 INTO TABLE temp31.
    _generic( name   = `CheckBox`
              t_prop = temp31 ).
  ENDMETHOD.


  METHOD code_editor.
    DATA temp33 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp34 LIKE LINE OF temp33.
    result = me.
    
    CLEAR temp33.
    
    temp34-n = `value`.
    temp34-v = value.
    INSERT temp34 INTO TABLE temp33.
    temp34-n = `type`.
    temp34-v = type.
    INSERT temp34 INTO TABLE temp33.
    temp34-n = `editable`.
    temp34-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp34 INTO TABLE temp33.
    temp34-n = `height`.
    temp34-v = height.
    INSERT temp34 INTO TABLE temp33.
    temp34-n = `width`.
    temp34-v = width.
    INSERT temp34 INTO TABLE temp33.
    _generic( name   = `CodeEditor`
              ns     = `editor`
              t_prop = temp33 ).
  ENDMETHOD.


  METHOD column.
    DATA temp35 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp36 LIKE LINE OF temp35.
    CLEAR temp35.
    
    temp36-n = `width`.
    temp36-v = width.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `minScreenWidth`.
    temp36-v = minscreenwidth.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `hAlign`.
    temp36-v = halign.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `autoPopinWidth`.
    temp36-v = autopopinwidth.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `vAlign`.
    temp36-v = valign.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `importance`.
    temp36-v = importance.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `mergeFunctionName`.
    temp36-v = mergefunctionname.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `popinDisplay`.
    temp36-v = popindisplay.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `sortIndicator`.
    temp36-v = sortindicator.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `styleClass`.
    temp36-v = styleclass.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `id`.
    temp36-v = id.
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `mergeDuplicates`.
    temp36-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( mergeduplicates ).
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `visible`.
    temp36-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp36 INTO TABLE temp35.
    temp36-n = `demandPopin`.
    temp36-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( demandpopin ).
    INSERT temp36 INTO TABLE temp35.
    result = _generic( name   = `Column`
                       t_prop = temp35 ).
  ENDMETHOD.


  METHOD columns.
    result = _generic( `columns` ).
  ENDMETHOD.


  METHOD column_element_data.
    DATA temp37 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp38 LIKE LINE OF temp37.
    CLEAR temp37.
    
    temp38-n = `cellsLarge`.
    temp38-v = cellslarge.
    INSERT temp38 INTO TABLE temp37.
    temp38-n = `cellsSmall`.
    temp38-v = cellssmall.
    INSERT temp38 INTO TABLE temp37.
    result =  _generic( name   = `ColumnElementData` ns = `form`
                        t_prop = temp37 ).
  ENDMETHOD.


  METHOD column_list_item.
    DATA temp39 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp40 LIKE LINE OF temp39.
    CLEAR temp39.
    
    temp40-n = `vAlign`.
    temp40-v = valign.
    INSERT temp40 INTO TABLE temp39.
    temp40-n = `selected`.
    temp40-v = selected.
    INSERT temp40 INTO TABLE temp39.
    temp40-n = `type`.
    temp40-v = type.
    INSERT temp40 INTO TABLE temp39.
    temp40-n = `press`.
    temp40-v = press.
    INSERT temp40 INTO TABLE temp39.
    result = _generic( name   = `ColumnListItem`
                       t_prop = temp39 ).
  ENDMETHOD.


  METHOD column_micro_chart.
    DATA temp41 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp42 LIKE LINE OF temp41.
    result = me.
    
    CLEAR temp41.
    
    temp42-n = `width`.
    temp42-v = width.
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `press`.
    temp42-v = press.
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `size`.
    temp42-v = size.
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `alignContent`.
    temp42-v = aligncontent.
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `hideOnNoData`.
    temp42-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `allowColumnLabels`.
    temp42-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( allowcolumnlabels ).
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `showBottomLabels`.
    temp42-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showbottomlabels ).
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `showTopLabels`.
    temp42-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtoplabels ).
    INSERT temp42 INTO TABLE temp41.
    temp42-n = `height`.
    temp42-v = height.
    INSERT temp42 INTO TABLE temp41.
    _generic( name   = `ColumnMicroChart`
              ns     = `mchart`
              t_prop = temp41 ).
  ENDMETHOD.


  METHOD combobox.
    DATA temp43 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp44 LIKE LINE OF temp43.
    CLEAR temp43.
    
    temp44-n = `showClearIcon`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearicon ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `selectedKey`.
    temp44-v = selectedkey.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `items`.
    temp44-v = items.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `selectionchange`.
    temp44-v = selectionchange.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `selectedItem`.
    temp44-v = selecteditem.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `selectedItemId`.
    temp44-v = selecteditemid.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `name`.
    temp44-v = name.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `value`.
    temp44-v = value.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `valueState`.
    temp44-v = valuestate.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `valueStateText`.
    temp44-v = valuestatetext.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `textAlign`.
    temp44-v = textalign.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `showSecondaryValues`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsecondaryvalues ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `visible`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `showValueStateMessage`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `showButton`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showbutton ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `required`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `editable`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `enabled`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `filterSecondaryValues`.
    temp44-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( filtersecondaryvalues ).
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `width`.
    temp44-v = width.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `placeholder`.
    temp44-v = placeholder.
    INSERT temp44 INTO TABLE temp43.
    temp44-n = `change`.
    temp44-v = change.
    INSERT temp44 INTO TABLE temp43.
    result = _generic( name   = `ComboBox`
                       t_prop = temp43 ).

  ENDMETHOD.


  METHOD comparison_micro_chart.
    DATA temp45 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp46 LIKE LINE OF temp45.
    result = me.
    
    CLEAR temp45.
    
    temp46-n = `colorPalette`.
    temp46-v = colorpalette.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `press`.
    temp46-v = press.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `size`.
    temp46-v = size.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `height`.
    temp46-v = height.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `maxValue`.
    temp46-v = maxvalue.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `minValue`.
    temp46-v = minvalue.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `scale`.
    temp46-v = scale.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `width`.
    temp46-v = width.
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `hideOnNoData`.
    temp46-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `shrinkable`.
    temp46-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( shrinkable ).
    INSERT temp46 INTO TABLE temp45.
    temp46-n = `view`.
    temp46-v = view.
    INSERT temp46 INTO TABLE temp45.
    _generic( name   = `ComparisonMicroChart`
              ns     = `mchart`
              t_prop = temp45 ).
  ENDMETHOD.


  METHOD constructor.

*    mt_prop = VALUE #( ( n = `xmlns`           v = `sap.m` )
*                       ( n = `xmlns:z2ui5`     v = `z2ui5` )
*                       ( n = `xmlns:core`      v = `sap.ui.core` )
*                       ( n = `xmlns:mvc`       v = `sap.ui.core.mvc` )
*                       ( n = `xmlns:layout`    v = `sap.ui.layout` )
**                       ( n = `core:require` v = `{ MessageToast: 'sap/m/MessageToast' }` )
**                       ( n = `core:require` v = `{ URLHelper: 'sap/m/library/URLHelper' }` )
*                       ( n = `xmlns:table `    v = `sap.ui.table` )
*                       ( n = `xmlns:f`         v = `sap.f` )
*                       ( n = `xmlns:form`      v = `sap.ui.layout.form` )
*                       ( n = `xmlns:editor`    v = `sap.ui.codeeditor` )
*                       ( n = `xmlns:mchart`    v = `sap.suite.ui.microchart` )
*                       ( n = `xmlns:webc`      v = `sap.ui.webc.main` )
*                       ( n = `xmlns:uxap`      v = `sap.uxap` )
*                       ( n = `xmlns:sap`       v = `sap` )
*                       ( n = `xmlns:text`      v = `sap.ui.richtexteditor` )
*                       ( n = `xmlns:html`      v = `http://www.w3.org/1999/xhtml` )
*                       ( n = `xmlns:fb`        v = `sap.ui.comp.filterbar` )
*                       ( n = `xmlns:u`         v = `sap.ui.unified` )
*                       ( n = `xmlns:gantt`     v = `sap.gantt.simple` )
*                       ( n = `xmlns:axistime`  v = `sap.gantt.axistime` )
*                       ( n = `xmlns:config`    v = `sap.gantt.config` )
*                       ( n = `xmlns:shapes`    v = `sap.gantt.simple.shapes` )
*                       ( n = `xmlns:commons`   v = `sap.suite.ui.commons` )
*                       ( n = `xmlns:vm`        v = `sap.ui.comp.variants` )
*                       ( n = `xmlns:viz`        v = `sap.viz.ui5.controls` )
*                       ( n = `xmlns:vk`        v = `sap.ui.vk` )
*                       ( n = `xmlns:vbm`        v = `sap.ui.vbm` )
*                       ( n = `xmlns:ndc`        v = `sap.ndc` )
*                       ( n = `xmlns:svm`       v = `sap.ui.comp.smartvariants` )
*                       ( n = `xmlns:flvm`      v = `sap.ui.fl.variants` )
*                       ( n = `xmlns:p13n`      v = `sap.m.p13n` )
*                       ( n = `xmlns:upload`    v = `sap.m.upload` )
*                       ( n = `xmlns:fl`        v = `sap.ui.fl` )
*                       ( n = `xmlns:tnt `      v = `sap.tnt` ) ).
  ENDMETHOD.


  METHOD container_content.

    DATA temp47 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp48 LIKE LINE OF temp47.
    CLEAR temp47.
    
    temp48-n = `id`.
    temp48-v = id.
    INSERT temp48 INTO TABLE temp47.
    temp48-n = `title`.
    temp48-v = title.
    INSERT temp48 INTO TABLE temp47.
    temp48-n = `icon`.
    temp48-v = icon.
    INSERT temp48 INTO TABLE temp47.
    result = _generic( name = `ContainerContent`
                      ns    = `vk`
                      t_prop = temp47 ).

  ENDMETHOD.


  METHOD container_toolbar.

    DATA temp49 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp50 LIKE LINE OF temp49.
    CLEAR temp49.
    
    temp50-n = `showSearchButton`.
    temp50-v = showsearchbutton.
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `alignCustomContentToRight`.
    temp50-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( aligncustomcontenttoright ).
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `findMode`.
    temp50-v = findmode.
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `infoOfSelectItems`.
    temp50-v = infoofselectitems.
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `showBirdEyeButton`.
    temp50-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showbirdeyebutton ).
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `showDisplayTypeButton`.
    temp50-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showdisplaytypebutton ).
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `showLegendButton`.
    temp50-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showlegendbutton ).
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `showSettingButton`.
    temp50-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsettingbutton ).
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `showTimeZoomControl`.
    temp50-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtimezoomcontrol ).
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `stepCountOfSlider`.
    temp50-v = stepcountofslider.
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `zoomControlType`.
    temp50-v = zoomcontroltype.
    INSERT temp50 INTO TABLE temp49.
    temp50-n = `zoomLevel`.
    temp50-v = zoomlevel.
    INSERT temp50 INTO TABLE temp49.
    result = _generic( name   = `ContainerToolbar`
                       ns     = `gantt`
                       t_prop = temp49 ).
  ENDMETHOD.


  METHOD content.

    result = _generic( ns   = ns
                       name = `content` ).

  ENDMETHOD.


  METHOD content_left.
    result = _generic( `contentLeft` ).
  ENDMETHOD.


  METHOD content_middle.
    result = _generic( `contentMiddle` ).
  ENDMETHOD.


  METHOD content_right.
    result = _generic( `contentRight` ).
  ENDMETHOD.


  METHOD currency.
    DATA temp51 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp52 LIKE LINE OF temp51.
    CLEAR temp51.
    
    temp52-n = `value`.
    temp52-v = value.
    INSERT temp52 INTO TABLE temp51.
    temp52-n = `currency`.
    temp52-v = currency.
    INSERT temp52 INTO TABLE temp51.
    result = _generic( name = `Currency`
                       ns   = 'u'
                    t_prop  = temp51 ).

  ENDMETHOD.


  METHOD custom_data.
    result = _generic( `customData` ).
  ENDMETHOD.


  METHOD custom_header.
    result = _generic( `customHeader` ).
  ENDMETHOD.


  METHOD custom_list_item.
    result = _generic( `CustomListItem` ).
  ENDMETHOD.


  METHOD data.
    result = _generic( name = `data`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD date_picker.
    DATA temp53 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp54 LIKE LINE OF temp53.
    result = me.
    
    CLEAR temp53.
    
    temp54-n = `value`.
    temp54-v = value.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `displayFormat`.
    temp54-v = displayformat.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `valueFormat`.
    temp54-v = valueformat.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `required`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `valueState`.
    temp54-v = valuestate.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `valueStateText`.
    temp54-v = valuestatetext.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `placeholder`.
    temp54-v = placeholder.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `change`.
    temp54-v = change.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `maxDate`.
    temp54-v = maxdate.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `minDate`.
    temp54-v = mindate.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `width`.
    temp54-v = width.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `id`.
    temp54-v = id.
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `enabled`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `visible`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `editable`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `hideInput`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideinput ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `showFooter`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showfooter ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `showValueStateMessage`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp54 INTO TABLE temp53.
    temp54-n = `showCurrentDateButton`.
    temp54-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showcurrentdatebutton ).
    INSERT temp54 INTO TABLE temp53.
    _generic( name   = `DatePicker`
              t_prop = temp53 ).
  ENDMETHOD.


  METHOD date_time_picker.
    DATA temp55 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp56 LIKE LINE OF temp55.
    result = me.
    
    CLEAR temp55.
    
    temp56-n = `value`.
    temp56-v = value.
    INSERT temp56 INTO TABLE temp55.
    temp56-n = `placeholder`.
    temp56-v = placeholder.
    INSERT temp56 INTO TABLE temp55.
    temp56-n = `enabled`.
    temp56-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp56 INTO TABLE temp55.
    temp56-n = `valueState`.
    temp56-v = valuestate.
    INSERT temp56 INTO TABLE temp55.
    _generic( name   = `DateTimePicker`
              t_prop = temp55 ).
  ENDMETHOD.


  METHOD delta_micro_chart.
    DATA temp57 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp58 LIKE LINE OF temp57.
    result = me.
    
    CLEAR temp57.
    
    temp58-n = `color`.
    temp58-v = color.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `press`.
    temp58-v = press.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `size`.
    temp58-v = size.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `height`.
    temp58-v = height.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `width`.
    temp58-v = width.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `deltaDisplayValue`.
    temp58-v = deltadisplayvalue.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `displayValue1`.
    temp58-v = displayvalue1.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `displayValue2`.
    temp58-v = displayvalue2.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `title2`.
    temp58-v = title2.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `value1`.
    temp58-v = value1.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `value2`.
    temp58-v = value2.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `view`.
    temp58-v = view.
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `hideOnNoData`.
    temp58-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp58 INTO TABLE temp57.
    temp58-n = `title1`.
    temp58-v = title1.
    INSERT temp58 INTO TABLE temp57.
    _generic( name   = `DeltaMicroChart`
              ns     = `mchart`
              t_prop = temp57 ).
  ENDMETHOD.


  METHOD detail_box.
    result = _generic( `detailBox` ).
  ENDMETHOD.


  METHOD detail_pages.
    result = _generic( name = `detailPages` ).
  ENDMETHOD.


  METHOD dialog.

    DATA temp59 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp60 LIKE LINE OF temp59.
    CLEAR temp59.
    
    temp60-n = `title`.
    temp60-v = title.
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `icon`.
    temp60-v = icon.
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `stretch`.
    temp60-v = stretch.
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `showHeader`.
    temp60-v = showheader.
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `contentWidth`.
    temp60-v = contentwidth.
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `contentHeight`.
    temp60-v = contentheight.
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `resizable`.
    temp60-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( resizable ).
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `horizontalScrolling`.
    temp60-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( horizontalscrolling ).
    INSERT temp60 INTO TABLE temp59.
    temp60-n = `verticalScrolling`.
    temp60-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( verticalscrolling ).
    INSERT temp60 INTO TABLE temp59.
    result = _generic( name   = `Dialog`
                       t_prop = temp59 ).

  ENDMETHOD.


  METHOD dynamic_page.
    DATA temp61 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp62 LIKE LINE OF temp61.
    CLEAR temp61.
    
    temp62-n = `headerExpanded`.
    temp62-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( headerexpanded ).
    INSERT temp62 INTO TABLE temp61.
    temp62-n = `headerPinned`.
    temp62-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( headerpinned ).
    INSERT temp62 INTO TABLE temp61.
    temp62-n = `showFooter`.
    temp62-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showfooter ).
    INSERT temp62 INTO TABLE temp61.
    temp62-n = `toggleHeaderOnTitleClick`.
    temp62-v = toggleheaderontitleclick.
    INSERT temp62 INTO TABLE temp61.
    result = _generic( name   = `DynamicPage`
                       ns     = `f`
                       t_prop = temp61 ).
  ENDMETHOD.


  METHOD dynamic_page_header.
    DATA temp63 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp64 LIKE LINE OF temp63.
    CLEAR temp63.
    
    temp64-n = `pinnable`.
    temp64-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( pinnable ).
    INSERT temp64 INTO TABLE temp63.
    result = _generic(
                 name   = `DynamicPageHeader`
                 ns     = `f`
                 t_prop = temp63 ).
  ENDMETHOD.


  METHOD dynamic_page_title.
    result = _generic( name = `DynamicPageTitle`
                       ns   = `f` ).
  ENDMETHOD.


  METHOD dynamic_side_content.
    DATA temp65 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp66 LIKE LINE OF temp65.
    CLEAR temp65.
    
    temp66-n = `id`.
    temp66-v = id.
    INSERT temp66 INTO TABLE temp65.
    temp66-n = `class`.
    temp66-v = class.
    INSERT temp66 INTO TABLE temp65.
    temp66-n = `sideContentVisibility`.
    temp66-v = sidecontentvisibility.
    INSERT temp66 INTO TABLE temp65.
    temp66-n = `showSideContent`.
    temp66-v = showsidecontent.
    INSERT temp66 INTO TABLE temp65.
    temp66-n = `containerQuery`.
    temp66-v = containerquery.
    INSERT temp66 INTO TABLE temp65.
    result = _generic( name   = `DynamicSideContent`
                       ns     = 'layout'
                       t_prop = temp65 ).

  ENDMETHOD.


  METHOD embedded_control.
    result = _generic( name = `embeddedControl`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD end_column_pages.
    " todo, implement method
    result = me.
  ENDMETHOD.


  METHOD expandable_text.
    DATA temp67 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp68 LIKE LINE OF temp67.
    CLEAR temp67.
    
    temp68-n = `id`.
    temp68-v = id.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `emptyIndicatorMode`.
    temp68-v = emptyindicatormode.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `maxCharacters`.
    temp68-v = maxcharacters.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `overflowMode`.
    temp68-v = overflowmode.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `renderWhitespace`.
    temp68-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( renderwhitespace ).
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `text`.
    temp68-v = text.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `textAlign`.
    temp68-v = textalign.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `textDirection`.
    temp68-v = textdirection.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `wrappingType`.
    temp68-v = wrappingtype.
    INSERT temp68 INTO TABLE temp67.
    temp68-n = `visible`.
    temp68-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp68 INTO TABLE temp67.
    result = _generic( name = `ExpandableText`
                       t_prop = temp67 ).
  ENDMETHOD.


  METHOD expanded_content.
    result = _generic( name = `expandedContent`
                       ns   = ns ).
  ENDMETHOD.


  METHOD expanded_heading.
    result = _generic( name = `expandedHeading`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD factory.
    DATA temp69 LIKE result->mt_prop.
    DATA temp70 LIKE LINE OF temp69.
    DATA temp71 TYPE z2ui5_if_client=>ty_s_name_value.
    DATA temp72 TYPE z2ui5_if_client=>ty_s_name_value.
    DATA temp73 TYPE z2ui5_if_client=>ty_s_name_value.

    CREATE OBJECT result.

    IF t_ns IS NOT INITIAL.
      result->mt_prop = t_ns.
    ENDIF.

    result->mi_client = client.
    
    CLEAR temp69.
    temp69 = result->mt_prop.
    
    temp70-n = 'displayBlock'.
    temp70-v = 'true'.
    INSERT temp70 INTO TABLE temp69.
    temp70-n = 'height'.
    temp70-v = '100%'.
    INSERT temp70 INTO TABLE temp69.
    result->mt_prop  = temp69.

    result->mv_name   = `View`.
    result->mv_ns     = `mvc`.
    result->mo_root   = result.
    result->mo_parent = result.

    
    CLEAR temp71.
    temp71-n = `xmlns`.
    temp71-v = `sap.m`.
    INSERT temp71 INTO TABLE result->mt_prop.
    
    CLEAR temp72.
    temp72-n = `xmlns:mvc`.
    temp72-v = `sap.ui.core.mvc`.
    INSERT temp72 INTO TABLE result->mt_prop.
    
    CLEAR temp73.
    temp73-n = `xmlns:core`.
    temp73-v = `sap.ui.core`.
    INSERT temp73 INTO TABLE result->mt_prop.

  ENDMETHOD.


  METHOD factory_popup.
    DATA temp74 TYPE z2ui5_if_client=>ty_s_name_value.
    DATA temp75 TYPE z2ui5_if_client=>ty_s_name_value.

    CREATE OBJECT result.

    IF t_ns IS NOT INITIAL.
      result->mt_prop = t_ns.
    ENDIF.

    result->mi_client = client.
    result->mv_name   = `FragmentDefinition`.
    result->mv_ns     = `core`.
    result->mo_root   = result.
    result->mo_parent = result.

    
    CLEAR temp74.
    temp74-n = `xmlns`.
    temp74-v = `sap.m`.
    INSERT temp74 INTO TABLE result->mt_prop.
    
    CLEAR temp75.
    temp75-n = `xmlns:core`.
    temp75-v = `sap.ui.core`.
    INSERT temp75 INTO TABLE result->mt_prop.

  ENDMETHOD.


  METHOD fb_control.
    result = _generic( name = `control`
                       ns   = `fb` ).
  ENDMETHOD.


  METHOD feed_input.
    DATA temp76 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp77 LIKE LINE OF temp76.
    CLEAR temp76.
    
    temp77-n = `buttonTooltip`.
    temp77-v = buttontooltip.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `enabled`.
    temp77-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `growing`.
    temp77-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( growing ).
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `growingMaxLines`.
    temp77-v = growingmaxlines.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `icon`.
    temp77-v = icon.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `iconDensityAware`.
    temp77-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `iconDisplayShape`.
    temp77-v = icondisplayshape.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `iconInitials`.
    temp77-v = iconinitials.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `iconSize`.
    temp77-v = iconsize.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `maxLength`.
    temp77-v = maxlength.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `placeholder`.
    temp77-v = placeholder.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `rows`.
    temp77-v = rows.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `showExceededText`.
    temp77-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showexceededtext ).
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `showIcon`.
    temp77-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showicon ).
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `value`.
    temp77-v = value.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `class`.
    temp77-v = class.
    INSERT temp77 INTO TABLE temp76.
    temp77-n = `post`.
    temp77-v = post.
    INSERT temp77 INTO TABLE temp76.
    result = _generic( name   = `FeedInput`
                       t_prop = temp76 ).

  ENDMETHOD.


  METHOD feed_list_item.
    DATA temp78 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp79 LIKE LINE OF temp78.
    CLEAR temp78.
    
    temp79-n = `activeIcon`.
    temp79-v = activeicon.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `convertedLinksDefaultTarget`.
    temp79-v = convertedlinksdefaulttarget.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `convertLinksToAnchorTags`.
    temp79-v = convertlinkstoanchortags.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `iconActive`.
    temp79-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( iconactive ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `icon`.
    temp79-v = icon.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `iconDensityAware`.
    temp79-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `iconDisplayShape`.
    temp79-v = icondisplayshape.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `iconInitials`.
    temp79-v = iconinitials.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `iconSize`.
    temp79-v = iconsize.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `info`.
    temp79-v = info.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `lessLabel`.
    temp79-v = lesslabel.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `maxCharacters`.
    temp79-v = maxcharacters.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `moreLabel`.
    temp79-v = morelabel.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `sender`.
    temp79-v = sender.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `senderActive`.
    temp79-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( senderactive ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `showIcon`.
    temp79-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showicon ).
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `text`.
    temp79-v = text.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `senderPress`.
    temp79-v = senderpress.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `iconPress`.
    temp79-v = iconpress.
    INSERT temp79 INTO TABLE temp78.
    temp79-n = `timestamp`.
    temp79-v = timestamp.
    INSERT temp79 INTO TABLE temp78.
    result = _generic( name   = `FeedListItem`
                       t_prop = temp78 ).
  ENDMETHOD.


  METHOD feed_list_item_action.
    DATA temp80 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp81 LIKE LINE OF temp80.
    CLEAR temp80.
    
    temp81-n = `enabled`.
    temp81-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `icon`.
    temp81-v = icon.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `key`.
    temp81-v = key.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `text`.
    temp81-v = text.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `press`.
    temp81-v = press.
    INSERT temp81 INTO TABLE temp80.
    temp81-n = `visible`.
    temp81-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp81 INTO TABLE temp80.
    result =  _generic( name   = `FeedListItemAction`
                        t_prop = temp80 ).
  ENDMETHOD.


  METHOD filter_bar.

    DATA temp82 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp83 LIKE LINE OF temp82.
    CLEAR temp82.
    
    temp83-n = 'useToolbar'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( usetoolbar ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'search'.
    temp83-v = search.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'id'.
    temp83-v = id.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'persistencyKey'.
    temp83-v = persistencykey.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'afterVariantLoad'.
    temp83-v = aftervariantload.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'afterVariantSave'.
    temp83-v = aftervariantsave.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'assignedFiltersChanged'.
    temp83-v = assignedfilterschanged.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'beforeVariantFetch'.
    temp83-v = beforevariantfetch.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'cancel'.
    temp83-v = cancel.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'clear'.
    temp83-v = clear.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'filtersDialogBeforeOpen'.
    temp83-v = filtersdialogbeforeopen.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'filtersDialogCancel'.
    temp83-v = filtersdialogcancel.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'filtersDialogClosed'.
    temp83-v = filtersdialogclosed.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'initialise'.
    temp83-v = initialise.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'initialized'.
    temp83-v = initialized.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'reset'.
    temp83-v = reset.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'filterContainerWidth'.
    temp83-v = filtercontainerwidth.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'header'.
    temp83-v = header.
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'advancedMode'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( advancedmode ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'isRunningInValueHelpDialog'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( isrunninginvaluehelpdialog ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'showAllFilters'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showallfilters ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'showClearOnFB'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearonfb ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'showFilterConfiguration'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showfilterconfiguration ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'showGoOnFB'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgoonfb ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'showRestoreButton'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showrestorebutton ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'showRestoreOnFB'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showrestoreonfb ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'useSnapshot'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( usesnapshot ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'searchEnabled'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( searchenabled ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'considerGroupTitle'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( considergrouptitle ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'deltaVariantMode'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( deltavariantmode ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'disableSearchMatchesPatternWarning'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( disablesearchmatchespatternw ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'filterBarExpanded'.
    temp83-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( filterbarexpanded ).
    INSERT temp83 INTO TABLE temp82.
    temp83-n = 'filterChange'.
    temp83-v = filterchange.
    INSERT temp83 INTO TABLE temp82.
    result = _generic( name   = `FilterBar`
                       ns     = 'fb'
                       t_prop = temp82 ).
  ENDMETHOD.


  METHOD filter_control.
    result = _generic( name = `control`
                       ns   = 'fb' ).
  ENDMETHOD.


  METHOD filter_group_item.
    DATA temp84 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp85 LIKE LINE OF temp84.
    CLEAR temp84.
    
    temp85-n = 'name'.
    temp85-v = name.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = 'label'.
    temp85-v = label.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = 'groupName'.
    temp85-v = groupname.
    INSERT temp85 INTO TABLE temp84.
    temp85-n = 'visibleInFilterBar'.
    temp85-v = visibleinfilterbar.
    INSERT temp85 INTO TABLE temp84.
    result = _generic( name   = `FilterGroupItem`
                       ns     = 'fb'
                       t_prop = temp84 ).
  ENDMETHOD.


  METHOD filter_group_items.
    result = _generic( name = `filterGroupItems`
                       ns   = 'fb' ).
  ENDMETHOD.


  METHOD filter_items.
    result = _generic( name = `filterItems` ).
  ENDMETHOD.


  METHOD first_status.
    result = _generic( name = `firstStatus` ).
  ENDMETHOD.


  METHOD flexible_column_layout.

    DATA temp86 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp87 LIKE LINE OF temp86.
    CLEAR temp86.
    
    temp87-n = `layout`.
    temp87-v = layout.
    INSERT temp87 INTO TABLE temp86.
    temp87-n = `id`.
    temp87-v = id.
    INSERT temp87 INTO TABLE temp86.
    result = _generic( name   = `FlexibleColumnLayout`
                       ns     = `f`
                       t_prop = temp86 ).

  ENDMETHOD.


  METHOD flex_box.
    DATA temp88 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp89 LIKE LINE OF temp88.
    CLEAR temp88.
    
    temp89-n = `class`.
    temp89-v = class.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `renderType`.
    temp89-v = rendertype.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `width`.
    temp89-v = width.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `height`.
    temp89-v = height.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `alignItems`.
    temp89-v = alignitems.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `fitContainer`.
    temp89-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( fitcontainer ).
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `justifyContent`.
    temp89-v = justifycontent.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `wrap`.
    temp89-v = wrap.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `direction`.
    temp89-v = direction.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `alignContent`.
    temp89-v = aligncontent.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `backgroundDesign`.
    temp89-v = backgrounddesign.
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `displayInline`.
    temp89-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( displayinline ).
    INSERT temp89 INTO TABLE temp88.
    temp89-n = `visible`.
    temp89-v = visible.
    INSERT temp89 INTO TABLE temp88.
    result = _generic( name   = `FlexBox`
                       t_prop = temp88 ).
  ENDMETHOD.


  METHOD flex_item_data.
    DATA temp90 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp91 LIKE LINE OF temp90.
    result = me.

    
    CLEAR temp90.
    
    temp91-n = `growFactor`.
    temp91-v = growfactor.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `baseSize`.
    temp91-v = basesize.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `backgroundDesign`.
    temp91-v = backgrounddesign.
    INSERT temp91 INTO TABLE temp90.
    temp91-n = `styleClass`.
    temp91-v = styleclass.
    INSERT temp91 INTO TABLE temp90.
    _generic( name   = `FlexItemData`
              t_prop = temp90 ).
  ENDMETHOD.


  METHOD footer.
    result = _generic( ns   = ns
                       name = `footer` ).
  ENDMETHOD.


  METHOD formatted_text.
    DATA temp92 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp93 LIKE LINE OF temp92.
    result = me.
    
    CLEAR temp92.
    
    temp93-n = `htmlText`.
    temp93-v = htmltext.
    INSERT temp93 INTO TABLE temp92.
    _generic( name   = `FormattedText`
              t_prop = temp92 ).
  ENDMETHOD.


  METHOD form_toolbar.
    result = _generic( name = `toolbar`
                       ns   = `form` ).
  ENDMETHOD.


  METHOD gantt_chart_container.
    result = _generic( name = `GanttChartContainer`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD gantt_chart_with_table.
    DATA temp94 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp95 LIKE LINE OF temp94.
    CLEAR temp94.
    
    temp95-n = `id`.
    temp95-v = id.
    INSERT temp95 INTO TABLE temp94.
    temp95-n = `shapeSelectionMode`.
    temp95-v = shapeselectionmode.
    INSERT temp95 INTO TABLE temp94.
    result = _generic( name   = `GanttChartWithTable`
                       ns     = `gantt`
                       t_prop = temp94 ).
  ENDMETHOD.


  METHOD gantt_row_settings.
    DATA temp96 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp97 LIKE LINE OF temp96.
    CLEAR temp96.
    
    temp97-n = `rowId`.
    temp97-v = rowid.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `shapes1`.
    temp97-v = shapes1.
    INSERT temp97 INTO TABLE temp96.
    temp97-n = `shapes2`.
    temp97-v = shapes2.
    INSERT temp97 INTO TABLE temp96.
    result = _generic( name   = `GanttRowSettings`
                       ns     = `gantt`
                       t_prop = temp96 ).
  ENDMETHOD.


  METHOD gantt_table.
    result = _generic( name = `table`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD gantt_toolbar.
    result = _generic( name = `toolbar`
                       ns   = 'gantt' ).
  ENDMETHOD.


  METHOD generic_tag.

    DATA temp98 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp99 LIKE LINE OF temp98.
    CLEAR temp98.
    
    temp99-n = `ariaLabelledBy`.
    temp99-v = arialabelledby.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `class`.
    temp99-v = class.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `design`.
    temp99-v = design.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `status`.
    temp99-v = status.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `id`.
    temp99-v = id.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `press`.
    temp99-v = press.
    INSERT temp99 INTO TABLE temp98.
    temp99-n = `text`.
    temp99-v = text.
    INSERT temp99 INTO TABLE temp98.
    result = _generic( name   = `GenericTag`
                       t_prop = temp98 ).

  ENDMETHOD.


  METHOD generic_tile.
    DATA temp100 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp101 LIKE LINE OF temp100.

    result = me.
    
    CLEAR temp100.
    
    temp101-n = `class`.
    temp101-v = class.
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `header`.
    temp101-v = header.
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `mode`.
    temp101-v = mode.
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `press`.
    temp101-v = press.
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `frameType`.
    temp101-v = frametype.
    INSERT temp101 INTO TABLE temp100.
    temp101-n = `subheader`.
    temp101-v = subheader.
    INSERT temp101 INTO TABLE temp100.
    _generic(
      name   = `GenericTile`
      ns     = ``
      t_prop = temp100 ).

  ENDMETHOD.


  METHOD get.

    IF name IS INITIAL.
      result = mo_root->mo_previous.
      RETURN.
    ENDIF.

    IF mo_parent->mv_name = name.
      result = mo_parent.
    ELSE.
      result = mo_parent->get( name ).
    ENDIF.

  ENDMETHOD.


  METHOD get_child.
    DATA temp102 LIKE LINE OF mt_child.
    DATA temp103 LIKE sy-tabix.
    temp103 = sy-tabix.
    READ TABLE mt_child INDEX index INTO temp102.
    sy-tabix = temp103.
    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
    ENDIF.
    result = temp102.
  ENDMETHOD.


  METHOD get_parent.
    result = mo_parent.
  ENDMETHOD.


  METHOD get_root.
    result = mo_root.
  ENDMETHOD.


  METHOD grid.

    DATA temp104 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp105 LIKE LINE OF temp104.
    CLEAR temp104.
    
    temp105-n = `defaultSpan`.
    temp105-v = default_span.
    INSERT temp105 INTO TABLE temp104.
    temp105-n = `class`.
    temp105-v = class.
    INSERT temp105 INTO TABLE temp104.
    result = _generic( name   = `Grid`
                       ns     = `layout`
                       t_prop = temp104 ).
  ENDMETHOD.


  METHOD grid_data.
    DATA temp106 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp107 LIKE LINE OF temp106.
    result = me.
    
    CLEAR temp106.
    
    temp107-n = `span`.
    temp107-v = span.
    INSERT temp107 INTO TABLE temp106.
    _generic( name   = `GridData`
              ns     = `layout`
              t_prop = temp106 ).
  ENDMETHOD.


  METHOD group_items.
    result = _generic( name = `groupItems` ).
  ENDMETHOD.


  METHOD harvey_ball_micro_chart.
    DATA temp108 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp109 LIKE LINE OF temp108.
    result = me.
    
    CLEAR temp108.
    
    temp109-n = `colorPalette`.
    temp109-v = colorpalette.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `press`.
    temp109-v = press.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `size`.
    temp109-v = size.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `height`.
    temp109-v = height.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `width`.
    temp109-v = width.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `total`.
    temp109-v = total.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `totalLabel`.
    temp109-v = totallabel.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `alignContent`.
    temp109-v = aligncontent.
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `hideOnNoData`.
    temp109-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `formattedLabel`.
    temp109-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( formattedlabel ).
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `showFractions`.
    temp109-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showfractions ).
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `showTotal`.
    temp109-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtotal ).
    INSERT temp109 INTO TABLE temp108.
    temp109-n = `totalScale`.
    temp109-v = totalscale.
    INSERT temp109 INTO TABLE temp108.
    _generic( name   = `HarveyBallMicroChart`
              ns     = `mchart`
              t_prop = temp108 ).
  ENDMETHOD.


  METHOD hbox.
    DATA temp110 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp111 LIKE LINE OF temp110.
    CLEAR temp110.
    
    temp111-n = `class`.
    temp111-v = class.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `alignContent`.
    temp111-v = aligncontent.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `alignItems`.
    temp111-v = alignitems.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `width`.
    temp111-v = width.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `renderType`.
    temp111-v = rendertype.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `height`.
    temp111-v = height.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `wrap`.
    temp111-v = wrap.
    INSERT temp111 INTO TABLE temp110.
    temp111-n = `justifyContent`.
    temp111-v = justifycontent.
    INSERT temp111 INTO TABLE temp110.
    result = _generic( name   = `HBox`
                       t_prop = temp110 ).

  ENDMETHOD.


  METHOD header.
    result = _generic( name = `header`
                       ns   = ns ).
  ENDMETHOD.


  METHOD header_container.
    result = _generic( name = `headerContainer` ).
  ENDMETHOD.


  METHOD header_container_control.
    DATA temp112 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp113 LIKE LINE OF temp112.
    CLEAR temp112.
    
    temp113-n = `backgroundDesign`.
    temp113-v = backgroundDesign.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `gridLayout`.
    temp113-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( gridLayout ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `height`.
    temp113-v = height.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `orientation`.
    temp113-v = orientation.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `scrollStep`.
    temp113-v = scrollStep.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `scrollStepByItem`.
    temp113-v = scrollStepByItem.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `scrollTime`.
    temp113-v = scrollTime.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `showDividers`.
    temp113-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showDividers ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `showOverflowItem`.
    temp113-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showOverflowItem ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `visible`.
    temp113-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `width`.
    temp113-v = width.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `id`.
    temp113-v = id.
    INSERT temp113 INTO TABLE temp112.
    temp113-n = `scroll`.
    temp113-v = scroll.
    INSERT temp113 INTO TABLE temp112.
    result = _generic( name = `HeaderContainer`
                       t_prop = temp112 ).
  ENDMETHOD.


  METHOD header_content.
    result = _generic( name = `headerContent`
                       ns   = ns ).
  ENDMETHOD.


  METHOD header_title.
    result = _generic( name = `headerTitle`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD header_toolbar.
    result = _generic( `headerToolbar` ).
  ENDMETHOD.


  METHOD heading.

    result = me.
    result = _generic( name = `heading`
                       ns   = ns ).

  ENDMETHOD.


  METHOD hlp_get_app_url.
    DATA lv_url TYPE string.
    DATA lt_param TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp114 TYPE z2ui5_if_client=>ty_s_name_value.

    IF classname IS NOT SUPPLIED.
      classname = z2ui5_cl_fw_utility=>rtti_get_classname_by_ref( mi_client->get( )-s_draft-app ).
    ENDIF.

    
    lv_url = to_lower( mi_client->get( )-s_config-origin && mi_client->get( )-s_config-pathname ) && `?`.
    
    lt_param = z2ui5_cl_fw_utility=>url_param_get_tab( mi_client->get( )-s_config-search ).
    DELETE lt_param WHERE n = `app_start`.
    
    CLEAR temp114.
    temp114-n = `app_start`.
    temp114-v = to_lower( classname ).
    INSERT temp114 INTO TABLE lt_param.

    result = lv_url && z2ui5_cl_fw_utility=>url_param_create_url( lt_param ).

  ENDMETHOD.


  METHOD hlp_get_source_code_url.

    DATA ls_draft TYPE z2ui5_if_client=>ty_s_draft.
    DATA ls_config TYPE z2ui5_if_client=>ty_s_config.
    ls_draft = mo_root->mi_client->get( )-s_draft.
    
    ls_config = mo_root->mi_client->get( )-s_config.

    result = ls_config-origin && `/sap/bc/adt/oo/classes/`
       && z2ui5_cl_fw_utility=>rtti_get_classname_by_ref( ls_draft-app ) && `/source/main`.

  ENDMETHOD.


  METHOD hlp_get_url_param.

    result = z2ui5_cl_fw_utility=>url_param_get(
      val = val
      url = mi_client->get( )-s_config-search ).

  ENDMETHOD.


  METHOD hlp_set_url_param.

    DATA result TYPE string.
    result = z2ui5_cl_fw_utility=>url_param_set(
      url   = mi_client->get( )-s_config-search
      name  = n
      value = v ).

    mi_client->url_param_set( result ).

  ENDMETHOD.


  METHOD horizontal_layout.
    DATA temp115 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp116 LIKE LINE OF temp115.
    CLEAR temp115.
    
    temp116-n = `class`.
    temp116-v = class.
    INSERT temp116 INTO TABLE temp115.
    temp116-n = `width`.
    temp116-v = width.
    INSERT temp116 INTO TABLE temp115.
    result = _generic( name   = `HorizontalLayout`
                       ns     = `layout`
                       t_prop = temp115 ).
  ENDMETHOD.


  METHOD html.

    DATA temp117 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp118 LIKE LINE OF temp117.
    CLEAR temp117.
    
    temp118-n = 'content'.
    temp118-v = content.
    INSERT temp118 INTO TABLE temp117.
    result = _generic( name = `HTML`
                       ns   = `core`
                       t_prop = temp117
                        ).

  ENDMETHOD.


  METHOD icon.
    DATA temp119 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp120 LIKE LINE OF temp119.

    result = me.
    
    CLEAR temp119.
    
    temp120-n = `size`.
    temp120-v = size.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `color`.
    temp120-v = color.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `class`.
    temp120-v = class.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `src`.
    temp120-v = src.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `activeColor`.
    temp120-v = activeColor.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `activeBackgroundColor`.
    temp120-v = activeBackgroundColor.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `alt`.
    temp120-v = alt.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `backgroundColor`.
    temp120-v = backgroundColor.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `height`.
    temp120-v = height.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `width`.
    temp120-v = width.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `id`.
    temp120-v = id.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `press`.
    temp120-v = press.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `hoverBackgroundColor`.
    temp120-v = hoverBackgroundColor.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `hoverColor`.
    temp120-v = hoverColor.
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `decorative`.
    temp120-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( decorative ).
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `noTabStop`.
    temp120-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( noTabStop ).
    INSERT temp120 INTO TABLE temp119.
    temp120-n = `useIconTooltip`.
    temp120-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( useIconTooltip ).
    INSERT temp120 INTO TABLE temp119.
    _generic( name   = `Icon`
                      ns     = `core`
                      t_prop = temp119 ).

  ENDMETHOD.


  METHOD icon_tab_bar.

    DATA temp121 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp122 LIKE LINE OF temp121.
    CLEAR temp121.
    
    temp122-n = `class`.
    temp122-v = class.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `select`.
    temp122-v = select.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `expand`.
    temp122-v = expand.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `expandable`.
    temp122-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( expandable ).
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `expanded`.
    temp122-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( expanded ).
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `applyContentPadding`.
    temp122-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( applycontentpadding ).
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `backgroundDesign`.
    temp122-v = backgrounddesign.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `enableTabReordering`.
    temp122-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabletabreordering ).
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `headerBackgroundDesign`.
    temp122-v = headerbackgrounddesign.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `stretchContentHeight`.
    temp122-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( stretchcontentheight ).
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `headerMode`.
    temp122-v = headermode.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `maxNestingLevel`.
    temp122-v = maxnestinglevel.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `tabDensityMode`.
    temp122-v = tabdensitymode.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `tabsOverflowMode`.
    temp122-v = tabsoverflowmode.
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `upperCase`.
    temp122-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( uppercase ).
    INSERT temp122 INTO TABLE temp121.
    temp122-n = `selectedKey`.
    temp122-v = selectedkey.
    INSERT temp122 INTO TABLE temp121.
    result = _generic( name   = `IconTabBar`
                       t_prop = temp121 ).
  ENDMETHOD.


  METHOD icon_tab_filter.

    DATA temp123 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp124 LIKE LINE OF temp123.
    CLEAR temp123.
    
    temp124-n = `icon`.
    temp124-v = icon.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `items`.
    temp124-v = items.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `design`.
    temp124-v = design.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `iconColor`.
    temp124-v = iconcolor.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `showAll`.
    temp124-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showall ).
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `iconDensityAware`.
    temp124-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `visible`.
    temp124-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `count`.
    temp124-v = count.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `text`.
    temp124-v = text.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `id`.
    temp124-v = id.
    INSERT temp124 INTO TABLE temp123.
    temp124-n = `key`.
    temp124-v = key.
    INSERT temp124 INTO TABLE temp123.
    result = _generic( name   = `IconTabFilter`
                       t_prop = temp123 ).
  ENDMETHOD.


  METHOD icon_tab_header.

    DATA temp125 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp126 LIKE LINE OF temp125.
    CLEAR temp125.
    
    temp126-n = `selectedKey`.
    temp126-v = selectedkey.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `items`.
    temp126-v = items.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `select`.
    temp126-v = select.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `ariaTexts`.
    temp126-v = ariatexts.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `backgroundDesign`.
    temp126-v = backgrounddesign.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `enableTabReordering`.
    temp126-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabletabreordering ).
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `maxNestingLevel`.
    temp126-v = maxnestinglevel.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `tabDensityMode`.
    temp126-v = tabdensitymode.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `tabsOverflowMode`.
    temp126-v = tabsoverflowmode.
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `visible`.
    temp126-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp126 INTO TABLE temp125.
    temp126-n = `mode`.
    temp126-v = mode.
    INSERT temp126 INTO TABLE temp125.
    result = _generic( name   = `IconTabHeader`
                       t_prop = temp125 ).

  ENDMETHOD.


  METHOD icon_tab_separator.

    DATA temp127 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp128 LIKE LINE OF temp127.
    CLEAR temp127.
    
    temp128-n = `icon`.
    temp128-v = icon.
    INSERT temp128 INTO TABLE temp127.
    temp128-n = `iconDensityAware`.
    temp128-v = icondensityaware.
    INSERT temp128 INTO TABLE temp127.
    temp128-n = `id`.
    temp128-v = id.
    INSERT temp128 INTO TABLE temp127.
    temp128-n = `visible`.
    temp128-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp128 INTO TABLE temp127.
    result = _generic( name = `IconTabSeparator`
                        t_prop = temp127 ).

  ENDMETHOD.


  METHOD illustrated_message.

    DATA temp129 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp130 LIKE LINE OF temp129.
    CLEAR temp129.
    
    temp130-n = `enableVerticalResponsiveness`.
    temp130-v = enableverticalresponsiveness.
    INSERT temp130 INTO TABLE temp129.
    temp130-n = `illustrationType`.
    temp130-v = illustrationtype.
    INSERT temp130 INTO TABLE temp129.
    temp130-n = `enableFormattedText`.
    temp130-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enableformattedtext ).
    INSERT temp130 INTO TABLE temp129.
    temp130-n = `illustrationSize`.
    temp130-v = illustrationsize.
    INSERT temp130 INTO TABLE temp129.
    temp130-n = `description`.
    temp130-v = description.
    INSERT temp130 INTO TABLE temp129.
    temp130-n = `title`.
    temp130-v = title.
    INSERT temp130 INTO TABLE temp129.
    result = _generic( name   = `IllustratedMessage`
                       t_prop = temp129 ).
  ENDMETHOD.


  METHOD image.
    DATA temp131 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp132 LIKE LINE OF temp131.
    result = me.
    
    CLEAR temp131.
    
    temp132-n = `src`.
    temp132-v = src.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `class`.
    temp132-v = class.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `height`.
    temp132-v = height.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `alt`.
    temp132-v = alt.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `activeSrc`.
    temp132-v = activesrc.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `ariaHasPopup`.
    temp132-v = ariahaspopup.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `backgroundPosition`.
    temp132-v = backgroundposition.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `backgroundRepeat`.
    temp132-v = backgroundrepeat.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `backgroundSize`.
    temp132-v = backgroundsize.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `mode`.
    temp132-v = mode.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `useMap`.
    temp132-v = usemap.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `width`.
    temp132-v = width.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `error`.
    temp132-v = error.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `press`.
    temp132-v = press.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `load`.
    temp132-v = load.
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `decorative`.
    temp132-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( decorative ).
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `densityAware`.
    temp132-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( densityaware ).
    INSERT temp132 INTO TABLE temp131.
    temp132-n = `lazyLoading`.
    temp132-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( lazyloading ).
    INSERT temp132 INTO TABLE temp131.
    _generic( name   = `Image`
              t_prop = temp131 ).
  ENDMETHOD.


  METHOD image_content.

    DATA temp133 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp134 LIKE LINE OF temp133.
    CLEAR temp133.
    
    temp134-n = `src`.
    temp134-v = src.
    INSERT temp134 INTO TABLE temp133.
    result = _generic( name   = `ImageContent`
                       t_prop = temp133 ).


  ENDMETHOD.


  METHOD info_label.
    DATA temp135 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp136 LIKE LINE OF temp135.
    CLEAR temp135.
    
    temp136-n = `id`.
    temp136-v = id.
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `text`.
    temp136-v = text.
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `renderMode `.
    temp136-v = rendermode.
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `colorScheme`.
    temp136-v = colorscheme.
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `displayOnly`.
    temp136-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( displayonly ).
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `icon`.
    temp136-v = icon.
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `textDirection`.
    temp136-v = textdirection.
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `visible`.
    temp136-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp136 INTO TABLE temp135.
    temp136-n = `width`.
    temp136-v = width.
    INSERT temp136 INTO TABLE temp135.
    result = _generic( name   = `InfoLabel`
                       ns     = 'tnt'
                       t_prop = temp135 ).

  ENDMETHOD.


  METHOD input.
    DATA temp137 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp138 LIKE LINE OF temp137.
    result = me.
    
    CLEAR temp137.
    
    temp138-n = `id`.
    temp138-v = id.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `placeholder`.
    temp138-v = placeholder.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `type`.
    temp138-v = type.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `maxLength`.
    temp138-v = maxlength.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `showClearIcon`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearicon ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `description`.
    temp138-v = description.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `editable`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `enabled`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `visible`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `enableTableAutoPopinMode`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabletableautopopinmode ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `enableSuggestionsHighlighting`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enablesuggestionshighlighting ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `showTableSuggestionValueHelp`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtablesuggestionvaluehelp ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `valueState`.
    temp138-v = valuestate.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `valueStateText`.
    temp138-v = valuestatetext.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `value`.
    temp138-v = value.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `required`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `suggest`.
    temp138-v = suggest.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `suggestionItems`.
    temp138-v = suggestionitems.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `suggestionRows`.
    temp138-v = suggestionrows.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `showSuggestion`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsuggestion ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `valueHelpRequest`.
    temp138-v = valuehelprequest.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `autocomplete`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( autocomplete ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `valueLiveUpdate`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( valueliveupdate ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `submit`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( submit ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `showValueHelp`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluehelp ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `valueHelpOnly`.
    temp138-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( valuehelponly ).
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `class`.
    temp138-v = class.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `change`.
    temp138-v = change.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `maxSuggestionWidth`.
    temp138-v = maxsuggestionwidth.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `width`.
    temp138-v = width.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `textFormatter`.
    temp138-v = textformatter.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `startSuggestion`.
    temp138-v = startsuggestion.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `valueHelpIconSrc`.
    temp138-v = valuehelpiconsrc.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `textFormatMode`.
    temp138-v = textformatmode.
    INSERT temp138 INTO TABLE temp137.
    temp138-n = `fieldWidth`.
    temp138-v = fieldwidth.
    INSERT temp138 INTO TABLE temp137.
    _generic( name   = `Input`
              t_prop = temp137 ).
  ENDMETHOD.


  METHOD input_list_item.
    DATA temp139 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp140 LIKE LINE OF temp139.
    CLEAR temp139.
    
    temp140-n = `label`.
    temp140-v = label.
    INSERT temp140 INTO TABLE temp139.
    result = _generic( name   = `InputListItem`
                       t_prop = temp139 ).
  ENDMETHOD.


  METHOD interact_bar_chart.
    DATA temp141 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp142 LIKE LINE OF temp141.
    CLEAR temp141.
    
    temp142-n = `selectionChanged`.
    temp142-v = selectionchanged.
    INSERT temp142 INTO TABLE temp141.
    temp142-n = `showError`.
    temp142-v = showerror.
    INSERT temp142 INTO TABLE temp141.
    temp142-n = `press`.
    temp142-v = press.
    INSERT temp142 INTO TABLE temp141.
    temp142-n = `labelWidth`.
    temp142-v = labelwidth.
    INSERT temp142 INTO TABLE temp141.
    temp142-n = `errorMessageTitle`.
    temp142-v = errormessagetitle.
    INSERT temp142 INTO TABLE temp141.
    temp142-n = `errorMessage`.
    temp142-v = errormessage.
    INSERT temp142 INTO TABLE temp141.
    result = _generic( name   = `InteractiveBarChart`
                       ns     = `mchart`
                       t_prop = temp141 ).
  ENDMETHOD.


  METHOD interact_bar_chart_bar.
    DATA temp143 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp144 LIKE LINE OF temp143.
    CLEAR temp143.
    
    temp144-n = `label`.
    temp144-v = label.
    INSERT temp144 INTO TABLE temp143.
    temp144-n = `displayedValue`.
    temp144-v = displayedvalue.
    INSERT temp144 INTO TABLE temp143.
    temp144-n = `value`.
    temp144-v = value.
    INSERT temp144 INTO TABLE temp143.
    temp144-n = `selected`.
    temp144-v = selected.
    INSERT temp144 INTO TABLE temp143.
    result = _generic( name   = `InteractiveBarChartBar`
                       ns     = `mchart`
                       t_prop = temp143 ).
  ENDMETHOD.


  METHOD interact_donut_chart.
    DATA temp145 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp146 LIKE LINE OF temp145.
    CLEAR temp145.
    
    temp146-n = `selectionChanged`.
    temp146-v = selectionchanged.
    INSERT temp146 INTO TABLE temp145.
    temp146-n = `showError`.
    temp146-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showerror ).
    INSERT temp146 INTO TABLE temp145.
    temp146-n = `errorMessageTitle`.
    temp146-v = errormessagetitle.
    INSERT temp146 INTO TABLE temp145.
    temp146-n = `errorMessage`.
    temp146-v = errormessage.
    INSERT temp146 INTO TABLE temp145.
    temp146-n = `displayedSegments`.
    temp146-v = displayedsegments.
    INSERT temp146 INTO TABLE temp145.
    temp146-n = `press`.
    temp146-v = press.
    INSERT temp146 INTO TABLE temp145.
    result = _generic( name   = `InteractiveDonutChart`
                       ns     = `mchart`
                       t_prop = temp145 ).
  ENDMETHOD.


  METHOD interact_donut_chart_segment.
    DATA temp147 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp148 LIKE LINE OF temp147.
    CLEAR temp147.
    
    temp148-n = `label`.
    temp148-v = label.
    INSERT temp148 INTO TABLE temp147.
    temp148-n = `displayedValue`.
    temp148-v = displayedvalue.
    INSERT temp148 INTO TABLE temp147.
    temp148-n = `value`.
    temp148-v = value.
    INSERT temp148 INTO TABLE temp147.
    temp148-n = `selected`.
    temp148-v = selected.
    INSERT temp148 INTO TABLE temp147.
    result = _generic( name   = `InteractiveDonutChartSegment`
                       ns     = `mchart`
                       t_prop = temp147 ).
  ENDMETHOD.


  METHOD interact_line_chart.
    DATA temp149 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp150 LIKE LINE OF temp149.
    CLEAR temp149.
    
    temp150-n = `selectionChanged`.
    temp150-v = selectionchanged.
    INSERT temp150 INTO TABLE temp149.
    temp150-n = `showError`.
    temp150-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showerror ).
    INSERT temp150 INTO TABLE temp149.
    temp150-n = `press`.
    temp150-v = press.
    INSERT temp150 INTO TABLE temp149.
    temp150-n = `errorMessageTitle`.
    temp150-v = errormessagetitle.
    INSERT temp150 INTO TABLE temp149.
    temp150-n = `errorMessage`.
    temp150-v = errormessage.
    INSERT temp150 INTO TABLE temp149.
    temp150-n = `precedingPoint`.
    temp150-v = precedingpoint.
    INSERT temp150 INTO TABLE temp149.
    temp150-n = `succeedingPoint`.
    temp150-v = succeddingpoint.
    INSERT temp150 INTO TABLE temp149.
    result = _generic( name   = `InteractiveLineChart`
                       ns     = `mchart`
                       t_prop = temp149 ).
  ENDMETHOD.


  METHOD interact_line_chart_point.
    DATA temp151 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp152 LIKE LINE OF temp151.
    CLEAR temp151.
    
    temp152-n = `label`.
    temp152-v = label.
    INSERT temp152 INTO TABLE temp151.
    temp152-n = `secondaryLabel`.
    temp152-v = secondarylabel.
    INSERT temp152 INTO TABLE temp151.
    temp152-n = `value`.
    temp152-v = value.
    INSERT temp152 INTO TABLE temp151.
    temp152-n = `displayedValue`.
    temp152-v = displayedvalue.
    INSERT temp152 INTO TABLE temp151.
    temp152-n = `selected`.
    temp152-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp152 INTO TABLE temp151.
    result = _generic( name   = `InteractiveLineChartPoint`
                       ns     = `mchart`
                       t_prop = temp151 ).
  ENDMETHOD.


  METHOD interval_headers.
    result = _generic( `intervalHeaders` ).
  ENDMETHOD.


  METHOD item.
    DATA temp153 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp154 LIKE LINE OF temp153.
    result = me.
    
    CLEAR temp153.
    
    temp154-n = `key`.
    temp154-v = key.
    INSERT temp154 INTO TABLE temp153.
    temp154-n = `text`.
    temp154-v = text.
    INSERT temp154 INTO TABLE temp153.
    _generic( name   = `Item`
              ns     = `core`
              t_prop = temp153 ).
  ENDMETHOD.


  METHOD items.
    result = _generic( name = `items`  ns = ns ).
  ENDMETHOD.


  METHOD label.
    DATA temp155 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp156 LIKE LINE OF temp155.
    result = me.
    
    CLEAR temp155.
    
    temp156-n = `text`.
    temp156-v = text.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `displayOnly`.
    temp156-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( displayonly ).
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `required`.
    temp156-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `showColon`.
    temp156-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showcolon ).
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `textAlign`.
    temp156-v = textalign.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `textDirection`.
    temp156-v = textdirection.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `vAlign`.
    temp156-v = valign.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `width`.
    temp156-v = width.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `wrapping`.
    temp156-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapping ).
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `wrappingType`.
    temp156-v = wrappingtype.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `design`.
    temp156-v = design.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `id`.
    temp156-v = id.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `class`.
    temp156-v = class.
    INSERT temp156 INTO TABLE temp155.
    temp156-n = `labelFor`.
    temp156-v = labelfor.
    INSERT temp156 INTO TABLE temp155.
    _generic( name   = `Label`
              t_prop = temp155 ).
  ENDMETHOD.


  METHOD lanes.
    result = _generic( name = `lanes`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD layout_data.
    result = _generic( ns   = ns
                       name = `layoutData` ).
  ENDMETHOD.


  METHOD light_box.
    result = _generic( `LightBox` ).
  ENDMETHOD.


  METHOD light_box_item.
    DATA temp157 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp158 LIKE LINE OF temp157.
    CLEAR temp157.
    
    temp158-n = `alt`.
    temp158-v = alt.
    INSERT temp158 INTO TABLE temp157.
    temp158-n = `imageSrc`.
    temp158-v = imagesrc.
    INSERT temp158 INTO TABLE temp157.
    temp158-n = `subtitle`.
    temp158-v = subtitle.
    INSERT temp158 INTO TABLE temp157.
    temp158-n = `title`.
    temp158-v = title.
    INSERT temp158 INTO TABLE temp157.
    result =  _generic( name   = `LightBoxItem`
                        t_prop = temp157 ).
  ENDMETHOD.


  METHOD line_micro_chart.
    DATA temp159 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp160 LIKE LINE OF temp159.
    result = me.
    
    CLEAR temp159.
    
    temp160-n = `color`.
    temp160-v = color.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `height`.
    temp160-v = height.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `leftBottomLabel`.
    temp160-v = leftbottomlabel.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `leftTopLabel`.
    temp160-v = lefttoplabel.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `maxXValue`.
    temp160-v = maxxvalue.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `minXValue`.
    temp160-v = minxvalue.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `minYValue`.
    temp160-v = minyvalue.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `rightBottomLabel`.
    temp160-v = rightbottomlabel.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `rightTopLabel`.
    temp160-v = righttoplabel.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `size`.
    temp160-v = size.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `threshold`.
    temp160-v = threshold.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `thresholdDisplayValue`.
    temp160-v = thresholddisplayvalue.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `width`.
    temp160-v = width.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `press`.
    temp160-v = press.
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `hideOnNoData`.
    temp160-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `showBottomLabels`.
    temp160-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showbottomlabels ).
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `showPoints`.
    temp160-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showpoints ).
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `showThresholdLine`.
    temp160-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showthresholdline ).
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `showThresholdValue`.
    temp160-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showthresholdvalue ).
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `showTopLabels`.
    temp160-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtoplabels ).
    INSERT temp160 INTO TABLE temp159.
    temp160-n = `maxYValue`.
    temp160-v = maxyvalue.
    INSERT temp160 INTO TABLE temp159.
    _generic( name   = `LineMicroChart`
              ns     = `mchart`
              t_prop = temp159 ).
  ENDMETHOD.


  METHOD link.
    DATA temp161 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp162 LIKE LINE OF temp161.
    result = me.
    
    CLEAR temp161.
    
    temp162-n = `text`.
    temp162-v = text.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `target`.
    temp162-v = target.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `href`.
    temp162-v = href.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `press`.
    temp162-v = press.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `id`.
    temp162-v = id.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `accessibleRole`.
    temp162-v = accessiblerole.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `ariaHasPopup`.
    temp162-v = ariahaspopup.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `emptyIndicatorMode`.
    temp162-v = emptyindicatormode.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `rel`.
    temp162-v = rel.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `subtle`.
    temp162-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( subtle ).
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `textAlign`.
    temp162-v = textalign.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `textDirection`.
    temp162-v = textdirection.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `validateUrl`.
    temp162-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( validateurl ).
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `width`.
    temp162-v = width.
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `wrapping`.
    temp162-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapping ).
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `emphasized`.
    temp162-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( emphasized ).
    INSERT temp162 INTO TABLE temp161.
    temp162-n = `enabled`.
    temp162-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp162 INTO TABLE temp161.
    _generic( name   = `Link`
              ns     = ns
              t_prop = temp161 ).
  ENDMETHOD.


  METHOD list.
    DATA temp163 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp164 LIKE LINE OF temp163.
    CLEAR temp163.
    
    temp164-n = `headerText`.
    temp164-v = headertext.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `items`.
    temp164-v = items.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `mode`.
    temp164-v = mode.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `itemPress`.
    temp164-v = itemPress.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `select`.
    temp164-v = select.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `selectionChange`.
    temp164-v = selectionchange.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `showSeparators`.
    temp164-v = showseparators.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `footerText`.
    temp164-v = footertext.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `growingDirection`.
    temp164-v = growingdirection.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `growingThreshold`.
    temp164-v = growingthreshold.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `growingTriggerText`.
    temp164-v = growingtriggertext.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `headerLevel`.
    temp164-v = headerlevel.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `multiSelectMode`.
    temp164-v = multiselectmode.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `noDataText`.
    temp164-v = nodatatext.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `id`.
    temp164-v = id.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `sticky`.
    temp164-v = sticky.
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `modeAnimationOn`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( modeanimationon ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `growingScrollToLoad`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( growingscrolltoload ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `includeItemInSelection`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( includeiteminselection ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `growing`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( growing ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `inset`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( inset ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `rememberSelections`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( rememberselections ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `showUnread`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showunread ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `visible`.
    temp164-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp164 INTO TABLE temp163.
    temp164-n = `noData`.
    temp164-v = nodata.
    INSERT temp164 INTO TABLE temp163.
    result = _generic( name   = `List`
                       t_prop = temp163 ).
  ENDMETHOD.


  METHOD list_item.
    DATA temp165 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp166 LIKE LINE OF temp165.
    result = me.
    
    CLEAR temp165.
    
    temp166-n = `text`.
    temp166-v = text.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `icon`.
    temp166-v = icon.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `key`.
    temp166-v = key.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `textDirection`.
    temp166-v = textdirection.
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `enabled`.
    temp166-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp166 INTO TABLE temp165.
    temp166-n = `additionalText`.
    temp166-v = additionaltext.
    INSERT temp166 INTO TABLE temp165.
    _generic( name   = `ListItem`
              ns     = `core`
              t_prop = temp165 ).
  ENDMETHOD.


  METHOD main_content.
    result = _generic( name = `mainContent`
                       ns   = `f` ).
  ENDMETHOD.


  METHOD main_contents.

    result = _generic( name   = `mainContents`
                       ns     = `tnt` ).

  ENDMETHOD.


  METHOD map_container.

    DATA temp167 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp168 LIKE LINE OF temp167.
    CLEAR temp167.
    
    temp168-n = `id`.
    temp168-v = id.
    INSERT temp168 INTO TABLE temp167.
    temp168-n = `autoAdjustHeight`.
    temp168-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( autoadjustheight ).
    INSERT temp168 INTO TABLE temp167.
    result = _generic( name = `MapContainer`
                      ns    = `vk`
                      t_prop = temp167 ).

  ENDMETHOD.


  METHOD markers.
    result = _generic( name = `markers` ns = ns ).
  ENDMETHOD.


  METHOD markers_as_status.
    result = _generic( name = `markersAsStatus`
                       ns   = `upload` ).
  ENDMETHOD.


  METHOD mask_input.
    DATA temp169 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp170 LIKE LINE OF temp169.
    result = me.
    
    CLEAR temp169.
    
    temp170-n = `placeholder`.
    temp170-v = placeholder.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `mask`.
    temp170-v = mask.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `name`.
    temp170-v = name.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `textAlign`.
    temp170-v = textalign.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `textDirection`.
    temp170-v = textdirection.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `value`.
    temp170-v = value.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `width`.
    temp170-v = width.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `liveChange`.
    temp170-v = livechange.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `change`.
    temp170-v = change.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `valueState`.
    temp170-v = valuestate.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `valueStateText`.
    temp170-v = valuestatetext.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `placeholderSymbol`.
    temp170-v = placeholdersymbol.
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `required`.
    temp170-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `showClearIcon`.
    temp170-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearicon ).
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `showValueStateMessage`.
    temp170-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `visible`.
    temp170-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp170 INTO TABLE temp169.
    temp170-n = `fieldWidth`.
    temp170-v = fieldwidth.
    INSERT temp170 INTO TABLE temp169.
    _generic( name   = `MaskInput`
              t_prop = temp169 ).
  ENDMETHOD.


  METHOD mask_input_rule.
    DATA temp171 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp172 LIKE LINE OF temp171.
    CLEAR temp171.
    
    temp172-n = `maskFormatSymbol`.
    temp172-v = maskformatsymbol.
    INSERT temp172 INTO TABLE temp171.
    temp172-n = `regex`.
    temp172-v = regex.
    INSERT temp172 INTO TABLE temp171.
    result = _generic( name   = `MaskInputRule`
                       t_prop = temp171 ).
  ENDMETHOD.


  METHOD master_pages.
    result = _generic( name = `masterPages` ).
  ENDMETHOD.


  METHOD menu_item.
    DATA temp173 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp174 LIKE LINE OF temp173.
    result = me.
    
    CLEAR temp173.
    
    temp174-n = `press`.
    temp174-v = press.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `text`.
    temp174-v = text.
    INSERT temp174 INTO TABLE temp173.
    temp174-n = `icon`.
    temp174-v = icon.
    INSERT temp174 INTO TABLE temp173.
    _generic( name   = `MenuItem`
              t_prop = temp173 ).
  ENDMETHOD.


  METHOD message_item.
    DATA temp175 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp176 LIKE LINE OF temp175.
    CLEAR temp175.
    
    temp176-n = `type`.
    temp176-v = type.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `title`.
    temp176-v = title.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `subtitle`.
    temp176-v = subtitle.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `description`.
    temp176-v = description.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `longtextUrl`.
    temp176-v = longtexturl.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `textDirection`.
    temp176-v = textdirection.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `groupName`.
    temp176-v = groupname.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `activeTitle`.
    temp176-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( activetitle ).
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `counter`.
    temp176-v = counter.
    INSERT temp176 INTO TABLE temp175.
    temp176-n = `markupDescription`.
    temp176-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( markupdescription ).
    INSERT temp176 INTO TABLE temp175.
    result = _generic( name   = `MessageItem`
                       t_prop = temp175 ).
  ENDMETHOD.


  METHOD message_page.
    DATA temp177 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp178 LIKE LINE OF temp177.
    CLEAR temp177.
    
    temp178-n = `showHeader`.
    temp178-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( show_header ).
    INSERT temp178 INTO TABLE temp177.
    temp178-n = `description`.
    temp178-v = description.
    INSERT temp178 INTO TABLE temp177.
    temp178-n = `icon`.
    temp178-v = icon.
    INSERT temp178 INTO TABLE temp177.
    temp178-n = `text`.
    temp178-v = text.
    INSERT temp178 INTO TABLE temp177.
    temp178-n = `enableFormattedText`.
    temp178-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enableformattedtext ).
    INSERT temp178 INTO TABLE temp177.
    result = _generic( name   = `MessagePage`
                       t_prop = temp177 ).
  ENDMETHOD.


  METHOD message_popover.
    DATA temp179 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp180 LIKE LINE OF temp179.
    CLEAR temp179.
    
    temp180-n = `items`.
    temp180-v = items.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `activeTitlePress`.
    temp180-v = activetitlepress.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `placement`.
    temp180-v = placement.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `listSelect`.
    temp180-v = listselect.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `afterClose`.
    temp180-v = afterclose.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `beforeClose`.
    temp180-v = beforeclose.
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `initiallyExpanded`.
    temp180-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( initiallyexpanded ).
    INSERT temp180 INTO TABLE temp179.
    temp180-n = `groupItems`.
    temp180-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( groupitems ).
    INSERT temp180 INTO TABLE temp179.
    result = _generic( name   = `MessagePopover`
                       t_prop = temp179 ).
  ENDMETHOD.


  METHOD message_strip.
    DATA temp181 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp182 LIKE LINE OF temp181.
    result = me.
    
    CLEAR temp181.
    
    temp182-n = `text`.
    temp182-v = text.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `type`.
    temp182-v = type.
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `showIcon`.
    temp182-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showicon ).
    INSERT temp182 INTO TABLE temp181.
    temp182-n = `class`.
    temp182-v = class.
    INSERT temp182 INTO TABLE temp181.
    _generic( name   = `MessageStrip`
              t_prop = temp181 ).
  ENDMETHOD.


  METHOD message_view.

    DATA temp183 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp184 LIKE LINE OF temp183.
    CLEAR temp183.
    
    temp184-n = `items`.
    temp184-v = items.
    INSERT temp184 INTO TABLE temp183.
    temp184-n = `groupItems`.
    temp184-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( groupitems ).
    INSERT temp184 INTO TABLE temp183.
    result = _generic( name   = `MessageView`
                       t_prop = temp183 ).
  ENDMETHOD.


  METHOD mid_column_pages.

    DATA temp185 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp186 LIKE LINE OF temp185.
    CLEAR temp185.
    
    temp186-n = `id`.
    temp186-v = id.
    INSERT temp186 INTO TABLE temp185.
    result = _generic( name   = `midColumnPages`
                       ns     = `f`
                       t_prop = temp185 ).

  ENDMETHOD.


  METHOD multi_combobox.
    DATA temp187 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp188 LIKE LINE OF temp187.
    CLEAR temp187.
    
    temp188-n = `selectionChange`.
    temp188-v = selectionchange.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `selectedKeys`.
    temp188-v = selectedkeys.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `items`.
    temp188-v = items.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `selectionFinish`.
    temp188-v = selectionfinish.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `width`.
    temp188-v = width.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `showSecondaryValues`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsecondaryvalues ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `placeholder`.
    temp188-v = placeholder.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `selectedItemId`.
    temp188-v = selecteditemid.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `selectedKey`.
    temp188-v = selectedkey.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `name`.
    temp188-v = name.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `value`.
    temp188-v = value.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `valueState`.
    temp188-v = valuestate.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `valueStateText`.
    temp188-v = valuestatetext.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `textAlign`.
    temp188-v = textalign.
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `visible`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `showValueStateMessage`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluestatemessage ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `showClearIcon`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearicon ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `showButton`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showbutton ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `required`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `editable`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `enabled`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `filterSecondaryValues`.
    temp188-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( filtersecondaryvalues ).
    INSERT temp188 INTO TABLE temp187.
    temp188-n = `showSelectAll`.
    temp188-v = showselectall.
    INSERT temp188 INTO TABLE temp187.
    result = _generic( name   = `MultiComboBox`
                       t_prop = temp187 ).
  ENDMETHOD.


  METHOD multi_input.
    DATA temp189 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp190 LIKE LINE OF temp189.
    CLEAR temp189.
    
    temp190-n = `tokens`.
    temp190-v = tokens.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `showClearIcon`.
    temp190-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearicon ).
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `showValueHelp`.
    temp190-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvaluehelp ).
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `enabled`.
    temp190-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `suggestionItems`.
    temp190-v = suggestionitems.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `tokenUpdate`.
    temp190-v = tokenupdate.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `submit`.
    temp190-v = submit.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `width`.
    temp190-v = width.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `value`.
    temp190-v = value.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `id`.
    temp190-v = id.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `change`.
    temp190-v = change.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `valueHelpRequest`.
    temp190-v = valuehelprequest.
    INSERT temp190 INTO TABLE temp189.
    temp190-n = `class`.
    temp190-v = class.
    INSERT temp190 INTO TABLE temp189.
    result = _generic( name   = `MultiInput`
                       t_prop = temp189 ).
  ENDMETHOD.


  METHOD navigation_actions.
    result = _generic( name = `navigationActions`
                       ns   = `f` ).
  ENDMETHOD.


  METHOD nav_container.

    DATA temp191 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp192 LIKE LINE OF temp191.
    CLEAR temp191.
    
    temp192-n = `initialPage`.
    temp192-v = initialpage.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `id`.
    temp192-v = id.
    INSERT temp192 INTO TABLE temp191.
    temp192-n = `defaultTransitionName`.
    temp192-v = defaulttransitionname.
    INSERT temp192 INTO TABLE temp191.
    result = _generic( name   = `NavContainer`
                       t_prop = temp191  ).

  ENDMETHOD.


  METHOD nodes.
    result = _generic( name = `nodes`
                       ns   = `commons` ).
  ENDMETHOD.


  METHOD numeric_content.

    DATA temp193 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp194 LIKE LINE OF temp193.
    CLEAR temp193.
    
    temp194-n = `value`.
    temp194-v = value.
    INSERT temp194 INTO TABLE temp193.
    temp194-n = `icon`.
    temp194-v = icon.
    INSERT temp194 INTO TABLE temp193.
    temp194-n = `withMargin`.
    temp194-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( withmargin ).
    INSERT temp194 INTO TABLE temp193.
    result = _generic( name   = `NumericContent`
                       t_prop = temp193 ).

  ENDMETHOD.


  METHOD object_attribute.
    DATA temp195 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp196 LIKE LINE OF temp195.
    result = me.

    
    CLEAR temp195.
    
    temp196-n = `title`.
    temp196-v = title.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `textDirection`.
    temp196-v = textdirection.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `ariaHasPopup`.
    temp196-v = ariahaspopup.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `press`.
    temp196-v = press.
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `active`.
    temp196-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( active ).
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `visible`.
    temp196-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp196 INTO TABLE temp195.
    temp196-n = `text`.
    temp196-v = text.
    INSERT temp196 INTO TABLE temp195.
    _generic( name   = `ObjectAttribute`
              t_prop = temp195 ).
  ENDMETHOD.


  METHOD object_header.

    DATA temp197 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp198 LIKE LINE OF temp197.
    CLEAR temp197.
    
    temp198-n = `backgrounddesign`.
    temp198-v = backgrounddesign.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `condensed`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( condensed ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `fullscreenoptimized`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( fullscreenoptimized ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `icon`.
    temp198-v = icon.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `iconactive`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( iconactive ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `iconalt`.
    temp198-v = iconalt.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `icondensityaware`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `icontooltip`.
    temp198-v = icontooltip.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `imageshape`.
    temp198-v = imageshape.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `intro`.
    temp198-v = intro.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `introactive`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( introactive ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `introhref`.
    temp198-v = introhref.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `introtarget`.
    temp198-v = introtarget.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `introtextdirection`.
    temp198-v = introtextdirection.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `number`.
    temp198-v = number.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `numberstate`.
    temp198-v = numberstate.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `numbertextdirection`.
    temp198-v = numbertextdirection.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `numberunit`.
    temp198-v = numberunit.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `responsive`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( responsive ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `showtitleselector`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtitleselector ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `title`.
    temp198-v = title.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titleactive`.
    temp198-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( titleactive ).
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titlehref`.
    temp198-v = titlehref.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titlelevel`.
    temp198-v = titlelevel.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titleselectortooltip`.
    temp198-v = titleselectortooltip.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titletarget`.
    temp198-v = titletarget.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titletextdirection`.
    temp198-v = titletextdirection.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `iconpress`.
    temp198-v = iconpress.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `intropress`.
    temp198-v = intropress.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titlepress`.
    temp198-v = titlepress.
    INSERT temp198 INTO TABLE temp197.
    temp198-n = `titleselectorpress`.
    temp198-v = titleselectorpress.
    INSERT temp198 INTO TABLE temp197.
    result = _generic( name   = `ObjectHeader`
                       t_prop = temp197 ).
  ENDMETHOD.


  METHOD object_identifier.
    DATA temp199 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp200 LIKE LINE OF temp199.
    CLEAR temp199.
    
    temp200-n = `emptyIndicatorMode`.
    temp200-v = emptyindicatormode.
    INSERT temp200 INTO TABLE temp199.
    temp200-n = `text`.
    temp200-v = text.
    INSERT temp200 INTO TABLE temp199.
    temp200-n = `textDirection`.
    temp200-v = textdirection.
    INSERT temp200 INTO TABLE temp199.
    temp200-n = `title`.
    temp200-v = title.
    INSERT temp200 INTO TABLE temp199.
    temp200-n = `titleActive`.
    temp200-v = titleactive.
    INSERT temp200 INTO TABLE temp199.
    temp200-n = `visible`.
    temp200-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp200 INTO TABLE temp199.
    temp200-n = `titlePress`.
    temp200-v = titlepress.
    INSERT temp200 INTO TABLE temp199.
    result = _generic( name   = `ObjectIdentifier`
                       t_prop = temp199 ).
  ENDMETHOD.


  METHOD object_list_item.
    DATA temp201 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp202 LIKE LINE OF temp201.
    CLEAR temp201.
    
    temp202-n = `activeIcon`.
    temp202-v = activeicon.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `icon`.
    temp202-v = icon.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `intro`.
    temp202-v = intro.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `introTextDirection`.
    temp202-v = introtextdirection.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `number`.
    temp202-v = number.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `numberState`.
    temp202-v = numberstate.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `numberTextDirection`.
    temp202-v = numbertextdirection.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `numberUnit`.
    temp202-v = numberunit.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `title`.
    temp202-v = title.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `titleTextDirection`.
    temp202-v = titletextdirection.
    INSERT temp202 INTO TABLE temp201.
    temp202-n = `iconDensityAware`.
    temp202-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp202 INTO TABLE temp201.
    result = _generic( name   = `ObjectListItem`
                       t_prop = temp201 ).
  ENDMETHOD.


  METHOD object_marker.
    DATA temp203 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp204 LIKE LINE OF temp203.
    CLEAR temp203.
    
    temp204-n = `additionalInfo`.
    temp204-v = additionalinfo.
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `type`.
    temp204-v = type.
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `visible`.
    temp204-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `press`.
    temp204-v = press.
    INSERT temp204 INTO TABLE temp203.
    temp204-n = `visibility`.
    temp204-v = visibility.
    INSERT temp204 INTO TABLE temp203.
    result = _generic( name = `ObjectMarker`
                       t_prop = temp203 ).
  ENDMETHOD.


  METHOD object_number.
    DATA temp205 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp206 LIKE LINE OF temp205.
    result = me.
    
    CLEAR temp205.
    
    temp206-n = `emphasized`.
    temp206-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( emphasized ).
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `number`.
    temp206-v = number.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `state`.
    temp206-v = state.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `textAlign`.
    temp206-v = textalign.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `textDirection`.
    temp206-v = textdirection.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `emptyIndicatorMode`.
    temp206-v = emptyindicatormode.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `numberunit`.
    temp206-v = numberunit.
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `active`.
    temp206-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( active ).
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `inverted`.
    temp206-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( inverted ).
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `visible`.
    temp206-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp206 INTO TABLE temp205.
    temp206-n = `unit`.
    temp206-v = unit.
    INSERT temp206 INTO TABLE temp205.
    _generic( name   = `ObjectNumber`
              t_prop = temp205 ).
  ENDMETHOD.


  METHOD object_page_dyn_header_title.
    result = _generic( name = `ObjectPageDynamicHeaderTitle`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD object_page_layout.
    DATA temp207 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp208 LIKE LINE OF temp207.
    CLEAR temp207.
    
    temp208-n = `showTitleInHeaderContent`.
    temp208-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtitleinheadercontent ).
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `showEditHeaderButton`.
    temp208-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showeditheaderbutton ).
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `editHeaderButtonPress`.
    temp208-v = editheaderbuttonpress.
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `upperCaseAnchorBar`.
    temp208-v = uppercaseanchorbar.
    INSERT temp208 INTO TABLE temp207.
    temp208-n = `showFooter`.
    temp208-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showfooter ).
    INSERT temp208 INTO TABLE temp207.
    result = _generic(
                 name   = `ObjectPageLayout`
                 ns     = `uxap`
                 t_prop = temp207 ).
  ENDMETHOD.


  METHOD object_page_section.
    DATA temp209 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp210 LIKE LINE OF temp209.
    CLEAR temp209.
    
    temp210-n = `titleUppercase`.
    temp210-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( titleuppercase ).
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `title`.
    temp210-v = title.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `id`.
    temp210-v = id.
    INSERT temp210 INTO TABLE temp209.
    temp210-n = `importance`.
    temp210-v = importance.
    INSERT temp210 INTO TABLE temp209.
    result = _generic( name   = `ObjectPageSection`
                       ns     = `uxap`
                       t_prop = temp209 ).
  ENDMETHOD.


  METHOD object_page_sub_section.
    DATA temp211 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp212 LIKE LINE OF temp211.
    CLEAR temp211.
    
    temp212-n = `id`.
    temp212-v = id.
    INSERT temp212 INTO TABLE temp211.
    temp212-n = `title`.
    temp212-v = title.
    INSERT temp212 INTO TABLE temp211.
    result = _generic( name   = `ObjectPageSubSection`
                       ns     = `uxap`
                       t_prop = temp211 ).
  ENDMETHOD.


  METHOD object_status.
    DATA temp213 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp214 LIKE LINE OF temp213.
    CLEAR temp213.
    
    temp214-n = `active`.
    temp214-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( active ).
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `emptyIndicatorMode`.
    temp214-v = emptyindicatormode.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `icon`.
    temp214-v = icon.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `iconDensityAware`.
    temp214-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( icondensityaware ).
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `inverted`.
    temp214-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( inverted ).
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `state`.
    temp214-v = state.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `stateAnnouncementText`.
    temp214-v = stateannouncementtext.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `text`.
    temp214-v = text.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `textDirection`.
    temp214-v = textdirection.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `title`.
    temp214-v = title.
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `visible`.
    temp214-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp214 INTO TABLE temp213.
    temp214-n = `press`.
    temp214-v = press.
    INSERT temp214 INTO TABLE temp213.
    result = _generic( name   = `ObjectStatus`
                       t_prop = temp213 ).
  ENDMETHOD.


  METHOD overflow_toolbar.
    result = _generic( `OverflowToolbar` ).
  ENDMETHOD.


  METHOD overflow_toolbar_button.
    DATA temp215 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp216 LIKE LINE OF temp215.
    result = me.
    
    CLEAR temp215.
    
    temp216-n = `press`.
    temp216-v = press.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `text`.
    temp216-v = text.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `enabled`.
    temp216-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `icon`.
    temp216-v = icon.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `type`.
    temp216-v = type.
    INSERT temp216 INTO TABLE temp215.
    temp216-n = `tooltip`.
    temp216-v = tooltip.
    INSERT temp216 INTO TABLE temp215.
    _generic( name   = `OverflowToolbarButton`
              t_prop = temp215 ).
  ENDMETHOD.


  METHOD overflow_toolbar_menu_button.
    DATA temp217 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp218 LIKE LINE OF temp217.
    CLEAR temp217.
    
    temp218-n = `buttonMode`.
    temp218-v = buttonmode.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `defaultAction`.
    temp218-v = defaultaction.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `text`.
    temp218-v = text.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `enabled`.
    temp218-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `icon`.
    temp218-v = icon.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `type`.
    temp218-v = type.
    INSERT temp218 INTO TABLE temp217.
    temp218-n = `tooltip`.
    temp218-v = tooltip.
    INSERT temp218 INTO TABLE temp217.
    result = _generic( name   = `OverflowToolbarMenuButton`
                       t_prop = temp217 ).
  ENDMETHOD.


  METHOD overflow_toolbar_toggle_button.
    DATA temp219 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp220 LIKE LINE OF temp219.
    result = me.
    
    CLEAR temp219.
    
    temp220-n = `press`.
    temp220-v = press.
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `text`.
    temp220-v = text.
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `enabled`.
    temp220-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `icon`.
    temp220-v = icon.
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `type`.
    temp220-v = type.
    INSERT temp220 INTO TABLE temp219.
    temp220-n = `tooltip`.
    temp220-v = tooltip.
    INSERT temp220 INTO TABLE temp219.
    _generic( name   = `OverflowToolbarToggleButton`
              t_prop = temp219 ).
  ENDMETHOD.


  METHOD page.
    DATA temp221 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp222 LIKE LINE OF temp221.
    CLEAR temp221.
    
    temp222-n = `title`.
    temp222-v = title.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `showNavButton`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( shownavbutton ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `navButtonPress`.
    temp222-v = navbuttonpress.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `showHeader`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showheader ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `class`.
    temp222-v = class.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `backgroundDesign`.
    temp222-v = backgrounddesign.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `navButtonTooltip`.
    temp222-v = navbuttontooltip.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `titleAlignment`.
    temp222-v = titlealignment.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `titleLevel`.
    temp222-v = titlelevel.
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `contentOnlyBusy`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( contentonlybusy ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `enableScrolling`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enablescrolling ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `floatingFooter`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( floatingfooter ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `showFooter`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showfooter ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `showSubHeader`.
    temp222-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsubheader ).
    INSERT temp222 INTO TABLE temp221.
    temp222-n = `id`.
    temp222-v = id.
    INSERT temp222 INTO TABLE temp221.
    result = _generic( name   = `Page`
                       ns     = ns
                       t_prop = temp221 ).
  ENDMETHOD.


  METHOD pages.
    result = _generic( name   = `pages`  ).

  ENDMETHOD.


  METHOD paging_button.
    DATA temp223 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp224 LIKE LINE OF temp223.
    result = me.
    
    CLEAR temp223.
    
    temp224-n = `count`.
    temp224-v = count.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `nextButtonTooltip`.
    temp224-v = nextbuttontooltip.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `position`.
    temp224-v = position.
    INSERT temp224 INTO TABLE temp223.
    temp224-n = `previousButtonTooltip`.
    temp224-v = previousbuttontooltip.
    INSERT temp224 INTO TABLE temp223.
    _generic( name   = `PagingButton`
              t_prop = temp223 ).
  ENDMETHOD.


  METHOD panel.

    DATA temp225 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp226 LIKE LINE OF temp225.
    CLEAR temp225.
    
    temp226-n = `expandable`.
    temp226-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( expandable ).
    INSERT temp226 INTO TABLE temp225.
    temp226-n = `expanded`.
    temp226-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( expanded ).
    INSERT temp226 INTO TABLE temp225.
    temp226-n = `stickyHeader`.
    temp226-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( stickyheader ).
    INSERT temp226 INTO TABLE temp225.
    temp226-n = `height`.
    temp226-v = height.
    INSERT temp226 INTO TABLE temp225.
    temp226-n = `headerText`.
    temp226-v = headertext.
    INSERT temp226 INTO TABLE temp225.
    result = _generic( name   = `Panel`
                       t_prop = temp225 ).

  ENDMETHOD.


  METHOD pane_container.
    DATA temp227 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp228 LIKE LINE OF temp227.
    CLEAR temp227.
    
    temp228-n = `resize`.
    temp228-v = resize.
    INSERT temp228 INTO TABLE temp227.
    temp228-n = `orientation`.
    temp228-v = orientation.
    INSERT temp228 INTO TABLE temp227.
    result = _generic( name   = `PaneContainer` ns = `layout`
                       t_prop = temp227 ).
  ENDMETHOD.


  METHOD planning_calendar.
    DATA temp229 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp230 LIKE LINE OF temp229.
    CLEAR temp229.
    
    temp230-n = `rows`.
    temp230-v = rows.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `startDate`.
    temp230-v = startdate.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `appointmentsVisualization`.
    temp230-v = appointmentsvisualization.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `appointmentSelect`.
    temp230-v = appointmentselect.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `showEmptyIntervalHeaders`.
    temp230-v = showemptyintervalheaders.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `showWeekNumbers`.
    temp230-v = showweeknumbers.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `legend`.
    temp230-v = legend.
    INSERT temp230 INTO TABLE temp229.
    temp230-n = `showDayNamesLine`.
    temp230-v = showdaynamesline.
    INSERT temp230 INTO TABLE temp229.
    result = _generic( name   = `PlanningCalendar`
                       t_prop = temp229 ).
  ENDMETHOD.


  METHOD planning_calendar_legend.
    DATA temp231 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp232 LIKE LINE OF temp231.
    CLEAR temp231.
    
    temp232-n = `id`.
    temp232-v = id.
    INSERT temp232 INTO TABLE temp231.
    temp232-n = `items`.
    temp232-v = items.
    INSERT temp232 INTO TABLE temp231.
    temp232-n = `appointmentItems`.
    temp232-v = appointmentitems.
    INSERT temp232 INTO TABLE temp231.
    temp232-n = `standardItems`.
    temp232-v = standarditems.
    INSERT temp232 INTO TABLE temp231.
    result = _generic( name   = `PlanningCalendarLegend`
                       t_prop = temp231 ).

  ENDMETHOD.


  METHOD planning_calendar_row.
    DATA temp233 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp234 LIKE LINE OF temp233.
    CLEAR temp233.
    
    temp234-n = `appointments`.
    temp234-v = appointments.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `intervalHeaders`.
    temp234-v = intervalheaders.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `icon`.
    temp234-v = icon.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `title`.
    temp234-v = title.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `key`.
    temp234-v = key.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `enableAppointmentsCreate`.
    temp234-v = enableappointmentscreate.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `appointmentResize`.
    temp234-v = appointmentresize.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `appointmentDrop`.
    temp234-v = appointmentdrop.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `appointmentDragEnter`.
    temp234-v = appointmentdragenter.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `appointmentCreate`.
    temp234-v = appointmentcreate.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `selected`.
    temp234-v = selected.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `nonWorkingDays`.
    temp234-v = nonworkingdays.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `enableAppointmentsResize`.
    temp234-v = enableappointmentsresize.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `enableAppointmentsDragAndDrop`.
    temp234-v = enableappointmentsdraganddrop.
    INSERT temp234 INTO TABLE temp233.
    temp234-n = `text`.
    temp234-v = text.
    INSERT temp234 INTO TABLE temp233.
    result = _generic( name   = `PlanningCalendarRow`
                       t_prop = temp233 ).

  ENDMETHOD.


  METHOD points.
    result = _generic( name = `points`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD popover.
    DATA temp235 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp236 LIKE LINE OF temp235.
    CLEAR temp235.
    
    temp236-n = `title`.
    temp236-v = title.
    INSERT temp236 INTO TABLE temp235.
    temp236-n = `class`.
    temp236-v = class.
    INSERT temp236 INTO TABLE temp235.
    temp236-n = `placement`.
    temp236-v = placement.
    INSERT temp236 INTO TABLE temp235.
    temp236-n = `initialFocus`.
    temp236-v = initialfocus.
    INSERT temp236 INTO TABLE temp235.
    temp236-n = `contentHeight`.
    temp236-v = contentheight.
    INSERT temp236 INTO TABLE temp235.
    temp236-n = `showheader`.
    temp236-v = showheader.
    INSERT temp236 INTO TABLE temp235.
    temp236-n = `contentWidth`.
    temp236-v = contentwidth.
    INSERT temp236 INTO TABLE temp235.
    result = _generic( name   = `Popover`
                       t_prop = temp235 ).
  ENDMETHOD.


  METHOD process_flow.
    DATA temp237 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp238 LIKE LINE OF temp237.
    CLEAR temp237.
    
    temp238-n = `id`.
    temp238-v = id.
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `foldedCorners`.
    temp238-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( foldedcorners ).
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `scrollable`.
    temp238-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( scrollable ).
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `showLabels`.
    temp238-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showlabels ).
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `visible`.
    temp238-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `wheelZoomable`.
    temp238-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wheelzoomable ).
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `headerPress`.
    temp238-v = headerpress.
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `labelPress`.
    temp238-v = labelpress.
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `nodePress`.
    temp238-v = nodepress.
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `onError`.
    temp238-v = onerror.
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `lanes`.
    temp238-v = lanes.
    INSERT temp238 INTO TABLE temp237.
    temp238-n = `nodes`.
    temp238-v = nodes.
    INSERT temp238 INTO TABLE temp237.
    result = _generic( name   = `ProcessFlow`
                   ns     = 'commons'
                   t_prop = temp237 ).
  ENDMETHOD.


  METHOD process_flow_lane_header.

    DATA temp239 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp240 LIKE LINE OF temp239.
    CLEAR temp239.
    
    temp240-n = `iconSrc`.
    temp240-v = iconsrc.
    INSERT temp240 INTO TABLE temp239.
    temp240-n = `laneId`.
    temp240-v = laneid.
    INSERT temp240 INTO TABLE temp239.
    temp240-n = `position`.
    temp240-v = position.
    INSERT temp240 INTO TABLE temp239.
    temp240-n = `state`.
    temp240-v = state.
    INSERT temp240 INTO TABLE temp239.
    temp240-n = `text`.
    temp240-v = text.
    INSERT temp240 INTO TABLE temp239.
    temp240-n = `zoomLevel`.
    temp240-v = zoomlevel.
    INSERT temp240 INTO TABLE temp239.
    result = _generic( name   = `ProcessFlowLaneHeader`
                   ns     = 'commons'
                   t_prop = temp239 ).
  ENDMETHOD.


  METHOD process_flow_node.
    DATA temp241 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp242 LIKE LINE OF temp241.
    CLEAR temp241.
    
    temp242-n = `laneId`.
    temp242-v = laneid.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `nodeId`.
    temp242-v = nodeid.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `title`.
    temp242-v = title.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `titleAbbreviation`.
    temp242-v = titleabbreviation.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `children`.
    temp242-v = children.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `state`.
    temp242-v = state.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `stateText`.
    temp242-v = statetext.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `texts`.
    temp242-v = texts.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `highlighted`.
    temp242-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( highlighted ).
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `focused`.
    temp242-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( focused ).
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `selected`.
    temp242-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `tag`.
    temp242-v = tag.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `texts`.
    temp242-v = texts.
    INSERT temp242 INTO TABLE temp241.
    temp242-n = `type`.
    temp242-v = type.
    INSERT temp242 INTO TABLE temp241.
    result = _generic( name   = `ProcessFlowNode`
                   ns     = 'commons'
                   t_prop = temp241 ).
  ENDMETHOD.


  METHOD progress_indicator.
    DATA temp243 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp244 LIKE LINE OF temp243.
    result = me.
    
    CLEAR temp243.
    
    temp244-n = `class`.
    temp244-v = class.
    INSERT temp244 INTO TABLE temp243.
    temp244-n = `percentValue`.
    temp244-v = percentvalue.
    INSERT temp244 INTO TABLE temp243.
    temp244-n = `displayValue`.
    temp244-v = displayvalue.
    INSERT temp244 INTO TABLE temp243.
    temp244-n = `showValue`.
    temp244-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showvalue ).
    INSERT temp244 INTO TABLE temp243.
    temp244-n = `state`.
    temp244-v = state.
    INSERT temp244 INTO TABLE temp243.
    _generic( name   = `ProgressIndicator`
              t_prop = temp243 ).
  ENDMETHOD.


  METHOD proportion_zoom_strategy.
    result = _generic( name = `ProportionZoomStrategy`
                       ns   = `axistime` ).
  ENDMETHOD.


  METHOD quick_view.
    DATA temp245 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp246 LIKE LINE OF temp245.
    CLEAR temp245.
    
    temp246-n = `placement`.
    temp246-v = placement.
    INSERT temp246 INTO TABLE temp245.
    temp246-n = `width`.
    temp246-v = width.
    INSERT temp246 INTO TABLE temp245.
    temp246-n = `afterClose`.
    temp246-v = afterclose.
    INSERT temp246 INTO TABLE temp245.
    temp246-n = `afterOpen`.
    temp246-v = afteropen.
    INSERT temp246 INTO TABLE temp245.
    temp246-n = `beforeClose`.
    temp246-v = beforeclose.
    INSERT temp246 INTO TABLE temp245.
    temp246-n = `beforeOpen`.
    temp246-v = beforeopen.
    INSERT temp246 INTO TABLE temp245.
    result = _generic( name   = `QuickView`
                       t_prop = temp245 ).
  ENDMETHOD.


  METHOD quick_view_group.
    DATA temp247 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp248 LIKE LINE OF temp247.
    CLEAR temp247.
    
    temp248-n = `heading`.
    temp248-v = heading.
    INSERT temp248 INTO TABLE temp247.
    temp248-n = `visible`.
    temp248-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp248 INTO TABLE temp247.
    result = _generic( name = `QuickViewGroup`
                       t_prop   = temp247 ).
  ENDMETHOD.


  METHOD quick_view_group_element.
    DATA temp249 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp250 LIKE LINE OF temp249.
    CLEAR temp249.
    
    temp250-n = `emailSubject`.
    temp250-v = emailsubject.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `label`.
    temp250-v = label.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `pageLinkId`.
    temp250-v = pagelinkid.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `target`.
    temp250-v = target.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `type`.
    temp250-v = type.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `url`.
    temp250-v = url.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `value`.
    temp250-v = value.
    INSERT temp250 INTO TABLE temp249.
    temp250-n = `visible`.
    temp250-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp250 INTO TABLE temp249.
    result =  _generic( name   = `QuickViewGroupElement`
                        t_prop = temp249 ).
  ENDMETHOD.


  METHOD quick_view_page.
    DATA temp251 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp252 LIKE LINE OF temp251.
    CLEAR temp251.
    
    temp252-n = `description`.
    temp252-v = description.
    INSERT temp252 INTO TABLE temp251.
    temp252-n = `header`.
    temp252-v = header.
    INSERT temp252 INTO TABLE temp251.
    temp252-n = `pageId`.
    temp252-v = pageid.
    INSERT temp252 INTO TABLE temp251.
    temp252-n = `title`.
    temp252-v = title.
    INSERT temp252 INTO TABLE temp251.
    temp252-n = `titleUrl`.
    temp252-v = titleurl.
    INSERT temp252 INTO TABLE temp251.
    result = _generic( name   = `QuickViewPage`
                       t_prop = temp251 ).
  ENDMETHOD.


  METHOD quick_view_page_avatar.
    result = _generic( name = `avatar` ).
  ENDMETHOD.


  METHOD radial_micro_chart.
    DATA temp253 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp254 LIKE LINE OF temp253.
    result = me.
    
    CLEAR temp253.
    
    temp254-n = `percentage`.
    temp254-v = percentage.
    INSERT temp254 INTO TABLE temp253.
    temp254-n = `press`.
    temp254-v = press.
    INSERT temp254 INTO TABLE temp253.
    temp254-n = `size`.
    temp254-v = size.
    INSERT temp254 INTO TABLE temp253.
    temp254-n = `height`.
    temp254-v = height.
    INSERT temp254 INTO TABLE temp253.
    temp254-n = `alignContent`.
    temp254-v = aligncontent.
    INSERT temp254 INTO TABLE temp253.
    temp254-n = `hideOnNoData`.
    temp254-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp254 INTO TABLE temp253.
    temp254-n = `valueColor`.
    temp254-v = valuecolor.
    INSERT temp254 INTO TABLE temp253.
    _generic( name   = `RadialMicroChart`
              ns     = `mchart`
              t_prop = temp253 ).
  ENDMETHOD.


  METHOD radio_button.
    DATA temp255 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp256 LIKE LINE OF temp255.
    CLEAR temp255.
    
    temp256-n = `activeHandling`.
    temp256-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( activehandling ).
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `editable`.
    temp256-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `enabled`.
    temp256-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `selected`.
    temp256-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `useEntireWidth`.
    temp256-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( useentirewidth ).
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `text`.
    temp256-v = text.
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `textDirection`.
    temp256-v = textdirection.
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `textAlign`.
    temp256-v = textalign.
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `groupName`.
    temp256-v = groupname.
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `valueState`.
    temp256-v = valuestate.
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `width`.
    temp256-v = width.
    INSERT temp256 INTO TABLE temp255.
    temp256-n = `select`.
    temp256-v = select.
    INSERT temp256 INTO TABLE temp255.
    result = _generic( name = `RadioButton`
                   t_prop   = temp255 ).
  ENDMETHOD.


  METHOD radio_button_group.
    DATA temp257 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp258 LIKE LINE OF temp257.
    CLEAR temp257.
    
    temp258-n = `id`.
    temp258-v = id.
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `columns`.
    temp258-v = columns.
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `editable`.
    temp258-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `enabled`.
    temp258-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `selectedIndex`.
    temp258-v = selectedindex.
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `textDirection`.
    temp258-v = textdirection.
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `valueState`.
    temp258-v = valuestate.
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `select`.
    temp258-v = select.
    INSERT temp258 INTO TABLE temp257.
    temp258-n = `width`.
    temp258-v = width.
    INSERT temp258 INTO TABLE temp257.
    result = _generic( name   = `RadioButtonGroup`
                       t_prop = temp257 ).
  ENDMETHOD.


  METHOD range_slider.
    DATA temp259 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp260 LIKE LINE OF temp259.
    result = me.
    
    CLEAR temp259.
    
    temp260-n = `class`.
    temp260-v = class.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `endValue`.
    temp260-v = endvalue.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `id`.
    temp260-v = id.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `labelInterval`.
    temp260-v = labelinterval.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `max`.
    temp260-v = max.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `min`.
    temp260-v = min.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `showTickmarks`.
    temp260-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtickmarks ).
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `startValue`.
    temp260-v = startvalue.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `step`.
    temp260-v = step.
    INSERT temp260 INTO TABLE temp259.
    temp260-n = `width`.
    temp260-v = width.
    INSERT temp260 INTO TABLE temp259.
    _generic( name   = `RangeSlider`
              ns     = `webc`
              t_prop = temp259 ).
  ENDMETHOD.


  METHOD rating_indicator.

    DATA temp261 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp262 LIKE LINE OF temp261.
    CLEAR temp261.
    
    temp262-n = `class`.
    temp262-v = class.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `maxValue`.
    temp262-v = maxvalue.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `displayOnly`.
    temp262-v = displayonly.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `editable`.
    temp262-v = editable.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `iconSize`.
    temp262-v = iconsize.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `value`.
    temp262-v = value.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `id`.
    temp262-v = id.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `change`.
    temp262-v = change.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `enabled`.
    temp262-v = enabled.
    INSERT temp262 INTO TABLE temp261.
    temp262-n = `tooltip`.
    temp262-v = tooltip.
    INSERT temp262 INTO TABLE temp261.
    result = _generic( name   = `RatingIndicator`
                       t_prop = temp261 ).

  ENDMETHOD.


  METHOD responsive_splitter.
    DATA temp263 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp264 LIKE LINE OF temp263.
    CLEAR temp263.
    
    temp264-n = `defaultPane`.
    temp264-v = defaultpane.
    INSERT temp264 INTO TABLE temp263.
    temp264-n = `height`.
    temp264-v = height.
    INSERT temp264 INTO TABLE temp263.
    temp264-n = `width`.
    temp264-v = width.
    INSERT temp264 INTO TABLE temp263.
    result = _generic( name   = `ResponsiveSplitter` ns = `layout`
                       t_prop = temp263 ).
  ENDMETHOD.


  METHOD rich_text_editor.
    DATA temp265 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp266 LIKE LINE OF temp265.
    CLEAR temp265.
    
    temp266-n = `buttonGroups`.
    temp266-v = buttongroups.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `customToolbar`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( customtoolbar ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `editable`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `height`.
    temp266-v = height.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `editorType`.
    temp266-v = editortype.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `plugins`.
    temp266-v = plugins.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `textDirection`.
    temp266-v = textdirection.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `value`.
    temp266-v = value.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `beforeEditorInit`.
    temp266-v = beforeeditorinit.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `change`.
    temp266-v = change.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `ready`.
    temp266-v = ready.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `readyRecurring`.
    temp266-v = readyrecurring.
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `required`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `sanitizeValue`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( sanitizevalue ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupClipboard`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgroupclipboard ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupFont`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgroupfont ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupFontStyle`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgroupfontstyle ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupInsert`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgroupinsert ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupLink`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgrouplink ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupStructure`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgroupstructure ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupTextAlign`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgrouptextalign ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `showGroupUndo`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showgroupundo ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `useLegacyTheme`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( uselegacytheme ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `wrapping`.
    temp266-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapping ).
    INSERT temp266 INTO TABLE temp265.
    temp266-n = `width`.
    temp266-v = width.
    INSERT temp266 INTO TABLE temp265.
    result = _generic( name   = `RichTextEditor`
                       ns     = `text`
                       t_prop = temp265 ).

  ENDMETHOD.


  METHOD rows.
    result = _generic( `rows` ).
  ENDMETHOD.


  METHOD row_settings_template.
    result = _generic( name = `rowSettingsTemplate`
                       ns   = `table` ).
  ENDMETHOD.


  METHOD rules.
    result = _generic( `rules` ).
  ENDMETHOD.


  METHOD scroll_container.
    DATA temp267 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp268 LIKE LINE OF temp267.
    CLEAR temp267.
    
    temp268-n = `height`.
    temp268-v = height.
    INSERT temp268 INTO TABLE temp267.
    temp268-n = `width`.
    temp268-v = width.
    INSERT temp268 INTO TABLE temp267.
    temp268-n = `id`.
    temp268-v = id.
    INSERT temp268 INTO TABLE temp267.
    temp268-n = `vertical`.
    temp268-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( vertical ).
    INSERT temp268 INTO TABLE temp267.
    temp268-n = `horizontal`.
    temp268-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( horizontal ).
    INSERT temp268 INTO TABLE temp267.
    temp268-n = `focusable`.
    temp268-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( focusable ).
    INSERT temp268 INTO TABLE temp267.
    result = _generic( name   = `ScrollContainer`
                       t_prop = temp267 ).
  ENDMETHOD.


  METHOD search_field.
    DATA temp269 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp270 LIKE LINE OF temp269.
    result = me.
    
    CLEAR temp269.
    
    temp270-n = `width`.
    temp270-v = width.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `search`.
    temp270-v = search.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `value`.
    temp270-v = value.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `id`.
    temp270-v = id.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `change`.
    temp270-v = change.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `maxLength`.
    temp270-v = maxlength.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `placeholder`.
    temp270-v = placeholder.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `suggest`.
    temp270-v = suggest.
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `enableSuggestions`.
    temp270-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enablesuggestions ).
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `showRefreshButton`.
    temp270-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showrefreshbutton ).
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `showSearchButton`.
    temp270-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsearchbutton ).
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `visible`.
    temp270-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `enabled`.
    temp270-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp270 INTO TABLE temp269.
    temp270-n = `liveChange`.
    temp270-v = livechange.
    INSERT temp270 INTO TABLE temp269.
    _generic( name   = `SearchField`
              t_prop = temp269 ).
  ENDMETHOD.


  METHOD second_status.
    result = _generic( name = `secondStatus` ).
  ENDMETHOD.


  METHOD sections.
    result = _generic( name = `sections`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD segmented_button.
    DATA temp271 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp272 LIKE LINE OF temp271.
    CLEAR temp271.
    
    temp272-n = `selectedKey`.
    temp272-v = selected_key.
    INSERT temp272 INTO TABLE temp271.
    temp272-n = `selectionChange`.
    temp272-v = selection_change.
    INSERT temp272 INTO TABLE temp271.
    result = _generic( name   = `SegmentedButton`
                       t_prop = temp271 ).
  ENDMETHOD.


  METHOD segmented_button_item.
    DATA temp273 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp274 LIKE LINE OF temp273.
    result = me.
    
    CLEAR temp273.
    
    temp274-n = `icon`.
    temp274-v = icon.
    INSERT temp274 INTO TABLE temp273.
    temp274-n = `key`.
    temp274-v = key.
    INSERT temp274 INTO TABLE temp273.
    temp274-n = `text`.
    temp274-v = text.
    INSERT temp274 INTO TABLE temp273.
    _generic( name   = `SegmentedButtonItem`
              t_prop = temp273 ).
  ENDMETHOD.


  METHOD segments.
    result = _generic( name = `segments`
                       ns   = `mchart` ).
  ENDMETHOD.


  METHOD select.
    DATA temp275 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp276 LIKE LINE OF temp275.
    CLEAR temp275.
    
    temp276-n = `id`.
    temp276-v = id.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `autoAdjustWidth`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( autoAdjustWidth ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `columnRatio`.
    temp276-v = columnRatio.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `editable`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `enabled`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `forceSelection`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( forceSelection ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `icon`.
    temp276-v = icon.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `maxWidth`.
    temp276-v = maxWidth.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `name`.
    temp276-v = name.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `required`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `resetOnMissingKey`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( resetOnMissingKey ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `selectedItemId`.
    temp276-v = selectedItemId.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `selectedKey`.
    temp276-v = selectedKey.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `showSecondaryValues`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showSecondaryValues ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `textAlign`.
    temp276-v = textAlign.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `textDirection`.
    temp276-v = textDirection.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `type`.
    temp276-v = type.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `valueState`.
    temp276-v = valueState.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `valueStateText`.
    temp276-v = valueStateText.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `width`.
    temp276-v = width.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `wrapItemsText`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapItemsText ).
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `items`.
    temp276-v = items.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `selectedItem`.
    temp276-v = selectedItem.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `change`.
    temp276-v = change.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `liveChange`.
    temp276-v = liveChange.
    INSERT temp276 INTO TABLE temp275.
    temp276-n = `visible`.
    temp276-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp276 INTO TABLE temp275.
    result = _generic( name = `Select`
                       t_prop = temp275 ).
  ENDMETHOD.


  METHOD shapes1.
    result = _generic( name = `shapes1`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD shapes2.
    result = _generic( name = `shapes2`
                       ns   = `gantt` ).
  ENDMETHOD.


  METHOD shell.
    result = _generic( name = `Shell`
                       ns   = ns ).
  ENDMETHOD.


  METHOD side_content.
    DATA temp277 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp278 LIKE LINE OF temp277.
    CLEAR temp277.
    
    temp278-n = `width`.
    temp278-v = width.
    INSERT temp278 INTO TABLE temp277.
    result = _generic( name   = `sideContent`
                       ns     = 'layout'
                       t_prop = temp277 ).

  ENDMETHOD.


  METHOD side_panel.
    DATA temp279 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp280 LIKE LINE OF temp279.
    CLEAR temp279.
    
    temp280-n = `sidePanelWidth`.
    temp280-v = sidepanelwidth.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `sidePanelResizeStep`.
    temp280-v = sidepanelresizestep.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `sidePanelResizeLargerStep`.
    temp280-v = sidepanelresizelargerstep.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `sidePanelPosition`.
    temp280-v = sidepanelposition.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `sidePanelMinWidth`.
    temp280-v = sidepanelminwidth.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `sidePanelMaxWidth`.
    temp280-v = sidepanelmaxwidth.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `sidePanelResizable`.
    temp280-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( sidepanelresizable ).
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `actionBarExpanded`.
    temp280-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( actionbarexpanded ).
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `toggle`.
    temp280-v = toggle.
    INSERT temp280 INTO TABLE temp279.
    temp280-n = `ariaLabel`.
    temp280-v = arialabel.
    INSERT temp280 INTO TABLE temp279.
    result = _generic( name   = `SidePanel`
                       ns     = `f`
                       t_prop = temp279 ).
  ENDMETHOD.


  METHOD side_panel_item.
    DATA temp281 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp282 LIKE LINE OF temp281.
    CLEAR temp281.
    
    temp282-n = `icon`.
    temp282-v = icon.
    INSERT temp282 INTO TABLE temp281.
    temp282-n = `enabled`.
    temp282-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp282 INTO TABLE temp281.
    temp282-n = `key`.
    temp282-v = key.
    INSERT temp282 INTO TABLE temp281.
    temp282-n = `text`.
    temp282-v = text.
    INSERT temp282 INTO TABLE temp281.
    result = _generic( name   = `SidePanelItem`
                       ns     = `f`
                       t_prop = temp281 ).
  ENDMETHOD.


  METHOD simple_form.
    DATA temp283 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp284 LIKE LINE OF temp283.
    CLEAR temp283.
    
    temp284-n = `title`.
    temp284-v = title.
    INSERT temp284 INTO TABLE temp283.
    temp284-n = `layout`.
    temp284-v = layout.
    INSERT temp284 INTO TABLE temp283.
    temp284-n = `id`.
    temp284-v = id.
    INSERT temp284 INTO TABLE temp283.
    temp284-n = `columnsXL`.
    temp284-v = columnsxl.
    INSERT temp284 INTO TABLE temp283.
    temp284-n = `columnsL`.
    temp284-v = columnsl.
    INSERT temp284 INTO TABLE temp283.
    temp284-n = `columnsM`.
    temp284-v = columnsm.
    INSERT temp284 INTO TABLE temp283.
    temp284-n = `editable`.
    temp284-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp284 INTO TABLE temp283.
    result = _generic( name   = `SimpleForm`
                       ns     = `form`
                       t_prop = temp283 ).
  ENDMETHOD.


  METHOD smart_variant_management.
    DATA temp285 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp286 LIKE LINE OF temp285.
    CLEAR temp285.
    
    temp286-n = `id`.
    temp286-v = id.
    INSERT temp286 INTO TABLE temp285.
    temp286-n = `showExecuteOnSelection`.
    temp286-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showexecuteonselection ).
    INSERT temp286 INTO TABLE temp285.
    result = _generic( name   = `SmartVariantManagement` ns = `svm`
                       t_prop = temp285 ).
  ENDMETHOD.


  METHOD snapped_content.
    result = _generic( name = `snappedContent`
                       ns   = ns ).
  ENDMETHOD.


  METHOD snapped_heading.
    result = me.
    result = _generic( name = `snappedHeading`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD snapped_title_on_mobile.
    result = _generic( name = `snappedTitleOnMobile`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD sort_items.
    result = _generic( name = `sortItems` ).
  ENDMETHOD.


  METHOD splitter_layout_data.
    DATA temp287 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp288 LIKE LINE OF temp287.
    CLEAR temp287.
    
    temp288-n = `size`.
    temp288-v = size.
    INSERT temp288 INTO TABLE temp287.
    temp288-n = `minSize`.
    temp288-v = minsize.
    INSERT temp288 INTO TABLE temp287.
    temp288-n = `resizable`.
    temp288-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( resizable ).
    INSERT temp288 INTO TABLE temp287.
    result = _generic( name   = `SplitterLayoutData` ns = `layout`
                       t_prop = temp287 ).
  ENDMETHOD.


  METHOD split_container.
    DATA temp289 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp290 LIKE LINE OF temp289.

    result = me.
    
    CLEAR temp289.
    
    temp290-n = `id`.
    temp290-v = id.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `initialDetail`.
    temp290-v = initialdetail.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `initialMaster`.
    temp290-v = initialmaster.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `backgroundColor`.
    temp290-v = backgroundcolor.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `backgroundImage`.
    temp290-v = backgroundimage.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `backgroundOpacity`.
    temp290-v = backgroundopacity.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `backgroundRepeat`.
    temp290-v = backgroundrepeat.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `defaultTransitionNameDetail`.
    temp290-v = defaulttransitionnamedetail.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `defaultTransitionNameMaster`.
    temp290-v = defaulttransitionnamemaster.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `masterButtonText`.
    temp290-v = masterbuttontext.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `masterButtonTooltip`.
    temp290-v = masterbuttontooltip.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `afterDetailNavigate`.
    temp290-v = afterdetailnavigate.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `afterMasterClose`.
    temp290-v = aftermasterclose.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `afterMasterNavigate`.
    temp290-v = aftermasternavigate.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `afterMasterOpen`.
    temp290-v = aftermasteropen.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `beforeMasterClose`.
    temp290-v = beforemasterclose.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `beforeMasterOpen`.
    temp290-v = beforemasteropen.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `detailNavigate`.
    temp290-v = detailnavigate.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `masterButton`.
    temp290-v = masterbutton.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `masterNavigate`.
    temp290-v = masternavigate.
    INSERT temp290 INTO TABLE temp289.
    temp290-n = `mode`.
    temp290-v = mode.
    INSERT temp290 INTO TABLE temp289.
    _generic( name   = `SplitContainer`
              t_prop = temp289 ).

  ENDMETHOD.


  METHOD split_pane.
    DATA temp291 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp292 LIKE LINE OF temp291.
    CLEAR temp291.
    
    temp292-n = `id`.
    temp292-v = id.
    INSERT temp292 INTO TABLE temp291.
    temp292-n = `requiredParentWidth`.
    temp292-v = requiredparentwidth.
    INSERT temp292 INTO TABLE temp291.
    result = _generic( name   = `SplitPane` ns = `layout`
                       t_prop = temp291 ).
  ENDMETHOD.


  METHOD spot.
    DATA temp293 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp294 LIKE LINE OF temp293.

    result = me.
    
    CLEAR temp293.
    
    temp294-n = `id`.
    temp294-v = id.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `position`.
    temp294-v = position.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `contentOffset`.
    temp294-v = contentoffset.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `type`.
    temp294-v = type.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `scale`.
    temp294-v = scale.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `tooltip`.
    temp294-v = tooltip.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `image`.
    temp294-v = image.
    INSERT temp294 INTO TABLE temp293.
    temp294-n = `icon`.
    temp294-v = icon.
    INSERT temp294 INTO TABLE temp293.
    _generic( name = `Spot`
                      ns    = `vbm`
                      t_prop = temp293 ).

  ENDMETHOD.


  METHOD spots.

    DATA temp295 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp296 LIKE LINE OF temp295.
    CLEAR temp295.
    
    temp296-n = `id`.
    temp296-v = id.
    INSERT temp296 INTO TABLE temp295.
    temp296-n = `items`.
    temp296-v = items.
    INSERT temp296 INTO TABLE temp295.
    result = _generic( name = `Spots`
                      ns    = `vbm`
                      t_prop = temp295 ).

  ENDMETHOD.


  METHOD stacked_bar_micro_chart.
    DATA temp297 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp298 LIKE LINE OF temp297.

    result = me.
    
    CLEAR temp297.
    
    temp298-n = `height`.
    temp298-v = height.
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `press`.
    temp298-v = press.
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `maxValue`.
    temp298-v = maxvalue.
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `precision`.
    temp298-v = precision.
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `size`.
    temp298-v = size.
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `hideOnNoData`.
    temp298-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( hideonnodata ).
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `displayZeroValue`.
    temp298-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( displayzerovalue ).
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `showLabels`.
    temp298-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showlabels ).
    INSERT temp298 INTO TABLE temp297.
    temp298-n = `width`.
    temp298-v = width.
    INSERT temp298 INTO TABLE temp297.
    _generic( name   = `StackedBarMicroChart`
              ns     = `mchart`
              t_prop = temp297 ).
  ENDMETHOD.


  METHOD standard_list_item.
    DATA temp299 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp300 LIKE LINE OF temp299.
    result = me.
    
    CLEAR temp299.
    
    temp300-n = `title`.
    temp300-v = title.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `description`.
    temp300-v = description.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `icon`.
    temp300-v = icon.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `info`.
    temp300-v = info.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `press`.
    temp300-v = press.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `type`.
    temp300-v = type.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `counter`.
    temp300-v = counter.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `activeIcon`.
    temp300-v = activeicon.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `adaptTitleSize`.
    temp300-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( adapttitlesize ).
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `unread`.
    temp300-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( unread ).
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `iconInset`.
    temp300-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( iconinset ).
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `infoStateInverted`.
    temp300-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( infostateinverted ).
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `wrapping`.
    temp300-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapping ).
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `infoState`.
    temp300-v = infostate.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `highlight`.
    temp300-v = highlight.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `wrapCharLimit`.
    temp300-v = wrapcharlimit.
    INSERT temp300 INTO TABLE temp299.
    temp300-n = `selected`.
    temp300-v = selected.
    INSERT temp300 INTO TABLE temp299.
    _generic( name   = `StandardListItem`
              t_prop = temp299 ).
  ENDMETHOD.


  METHOD standard_tree_item.
    DATA temp301 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp302 LIKE LINE OF temp301.
    result = me.
    
    CLEAR temp301.
    
    temp302-n = `title`.
    temp302-v = title.
    INSERT temp302 INTO TABLE temp301.
    temp302-n = `icon`.
    temp302-v = icon.
    INSERT temp302 INTO TABLE temp301.
    temp302-n = `press`.
    temp302-v = press.
    INSERT temp302 INTO TABLE temp301.
    temp302-n = `detailPress`.
    temp302-v = detailpress.
    INSERT temp302 INTO TABLE temp301.
    temp302-n = `type`.
    temp302-v = type.
    INSERT temp302 INTO TABLE temp301.
    temp302-n = `counter`.
    temp302-v = counter.
    INSERT temp302 INTO TABLE temp301.
    temp302-n = `selected`.
    temp302-v = selected.
    INSERT temp302 INTO TABLE temp301.
    _generic( name   = `StandardTreeItem`
              t_prop = temp301 ).

  ENDMETHOD.


  METHOD statuses.
    result = _generic( name = `statuses` ns = ns ).
  ENDMETHOD.


  METHOD step_input.
    DATA temp303 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp304 LIKE LINE OF temp303.
    result = me.
    
    CLEAR temp303.
    
    temp304-n = `max`.
    temp304-v = max.
    INSERT temp304 INTO TABLE temp303.
    temp304-n = `min`.
    temp304-v = min.
    INSERT temp304 INTO TABLE temp303.
    temp304-n = `step`.
    temp304-v = step.
    INSERT temp304 INTO TABLE temp303.
    temp304-n = `value`.
    temp304-v = value.
    INSERT temp304 INTO TABLE temp303.
    temp304-n = `valueState`.
    temp304-v = valuestate.
    INSERT temp304 INTO TABLE temp303.
    temp304-n = `enabled`.
    temp304-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp304 INTO TABLE temp303.
    temp304-n = `description`.
    temp304-v = description.
    INSERT temp304 INTO TABLE temp303.
    _generic( name   = `StepInput`
              t_prop = temp303 ).
  ENDMETHOD.


  METHOD stringify.

    result = get_root( )->xml_get( ).

  ENDMETHOD.


  METHOD sub_header.

    result = _generic( name = `subHeader`
                      ns   = ns ).

  ENDMETHOD.


  METHOD sub_sections.
    result = me.
    result = _generic( name = `subSections`
                       ns   = `uxap` ).
  ENDMETHOD.


  METHOD suggestion_columns.
    result = _generic( `suggestionColumns` ).
  ENDMETHOD.


  METHOD suggestion_items.
    result = _generic( `suggestionItems` ).
  ENDMETHOD.


  METHOD suggestion_rows.
    result = _generic( `suggestionRows` ).
  ENDMETHOD.


  METHOD switch.
    DATA temp305 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp306 LIKE LINE OF temp305.
    result = me.
    
    CLEAR temp305.
    
    temp306-n = `type`.
    temp306-v = type.
    INSERT temp306 INTO TABLE temp305.
    temp306-n = `enabled`.
    temp306-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp306 INTO TABLE temp305.
    temp306-n = `state`.
    temp306-v = state.
    INSERT temp306 INTO TABLE temp305.
    temp306-n = `change`.
    temp306-v = change.
    INSERT temp306 INTO TABLE temp305.
    temp306-n = `customTextOff`.
    temp306-v = customtextoff.
    INSERT temp306 INTO TABLE temp305.
    temp306-n = `customTextOn`.
    temp306-v = customtexton.
    INSERT temp306 INTO TABLE temp305.
    _generic( name   = `Switch`
              t_prop = temp305 ).
  ENDMETHOD.


  METHOD tab.
    DATA temp307 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp308 LIKE LINE OF temp307.
    CLEAR temp307.
    
    temp308-n = `text`.
    temp308-v = text.
    INSERT temp308 INTO TABLE temp307.
    temp308-n = `selected`.
    temp308-v = selected.
    INSERT temp308 INTO TABLE temp307.
    result = _generic( name   = `Tab`
                       ns     = `webc`
                       t_prop = temp307 ).
  ENDMETHOD.


  METHOD table.
    DATA temp309 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp310 LIKE LINE OF temp309.
    CLEAR temp309.
    
    temp310-n = `items`.
    temp310-v = items.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `headerText`.
    temp310-v = headertext.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `growing`.
    temp310-v = growing.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `growingThreshold`.
    temp310-v = growingthreshold.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `growingScrollToLoad`.
    temp310-v = growingscrolltoload.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `sticky`.
    temp310-v = sticky.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `showSeparators`.
    temp310-v = showseparators.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `mode`.
    temp310-v = mode.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `inset`.
    temp310-v = inset.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `width`.
    temp310-v = width.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `id`.
    temp310-v = id.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `hiddenInPopin`.
    temp310-v = hiddeninpopin.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `popinLayout`.
    temp310-v = popinlayout.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `selectionChange`.
    temp310-v = selectionchange.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `backgroundDesign`.
    temp310-v = backgrounddesign.
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `alternateRowColors`.
    temp310-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( alternaterowcolors ).
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `fixedLayout`.
    temp310-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( fixedlayout ).
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `showOverlay`.
    temp310-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showoverlay ).
    INSERT temp310 INTO TABLE temp309.
    temp310-n = `autoPopinMode`.
    temp310-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( autopopinmode ).
    INSERT temp310 INTO TABLE temp309.
    result = _generic( name   = `Table`
                       t_prop = temp309 ).
  ENDMETHOD.


  METHOD table_select_dialog.

    DATA temp311 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp312 LIKE LINE OF temp311.
    CLEAR temp311.
    
    temp312-n = `confirmButtonText`.
    temp312-v = confirmbuttontext.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `contentHeight`.
    temp312-v = contentheight.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `contentWidth`.
    temp312-v = contentwidth.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `draggable`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( draggable ).
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `growing`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( growing ).
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `growingThreshold`.
    temp312-v = growingthreshold.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `multiSelect`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( multiselect ).
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `noDataText`.
    temp312-v = nodatatext.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `rememberSelections`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( rememberselections ).
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `resizable`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( resizable ).
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `searchPlaceholder`.
    temp312-v = searchplaceholder.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `showClearButton`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showclearbutton ).
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `title`.
    temp312-v = title.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `titleAlignment`.
    temp312-v = titlealignment.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `items`.
    temp312-v = items.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `search`.
    temp312-v = search.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `confirm`.
    temp312-v = confirm.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `cancel`.
    temp312-v = cancel.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `liveChange`.
    temp312-v = livechange.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `selectionChange`.
    temp312-v = selectionchange.
    INSERT temp312 INTO TABLE temp311.
    temp312-n = `visible`.
    temp312-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp312 INTO TABLE temp311.
    result = _generic( name   = `TableSelectDialog`
               t_prop = temp311 ).
  ENDMETHOD.


  METHOD tab_container.
    result = _generic( name = `TabContainer`
                       ns   = `webc` ).
  ENDMETHOD.


  METHOD task.
    DATA temp313 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp314 LIKE LINE OF temp313.
    CLEAR temp313.
    
    temp314-n = `time`.
    temp314-v = time.
    INSERT temp314 INTO TABLE temp313.
    temp314-n = `endTime`.
    temp314-v = endtime.
    INSERT temp314 INTO TABLE temp313.
    temp314-n = `type`.
    temp314-v = type.
    INSERT temp314 INTO TABLE temp313.
    temp314-n = `title`.
    temp314-v = title.
    INSERT temp314 INTO TABLE temp313.
    temp314-n = `showTitle`.
    temp314-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showtitle ).
    INSERT temp314 INTO TABLE temp313.
    temp314-n = `color`.
    temp314-v = color.
    INSERT temp314 INTO TABLE temp313.
    result = _generic( name   = `Task`
                       ns     = `shapes`
                       t_prop = temp313 ).
  ENDMETHOD.


  METHOD text.
    DATA temp315 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp316 LIKE LINE OF temp315.
    result = me.
    
    CLEAR temp315.
    
    temp316-n = `text`.
    temp316-v = text.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `emptyIndicatorMode`.
    temp316-v = emptyindicatormode.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `maxLines`.
    temp316-v = maxlines.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `renderWhitespace`.
    temp316-v = renderwhitespace.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `textAlign`.
    temp316-v = textalign.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `textDirection`.
    temp316-v = textdirection.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `width`.
    temp316-v = width.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `id`.
    temp316-v = id.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `wrapping`.
    temp316-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapping ).
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `wrappingType`.
    temp316-v = wrappingtype.
    INSERT temp316 INTO TABLE temp315.
    temp316-n = `class`.
    temp316-v = class.
    INSERT temp316 INTO TABLE temp315.
    _generic( name   = `Text`
              ns     = ns
              t_prop = temp315 ).
  ENDMETHOD.


  METHOD text_area.
    DATA temp317 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp318 LIKE LINE OF temp317.
    result = me.
    
    CLEAR temp317.
    
    temp318-n = `value`.
    temp318-v = value.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `rows`.
    temp318-v = rows.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `cols`.
    temp318-v = cols.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `height`.
    temp318-v = height.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `width`.
    temp318-v = width.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `valueLiveUpdate`.
    temp318-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( valueliveupdate ).
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `editable`.
    temp318-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `class`.
    temp318-v = class.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `enabled`.
    temp318-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `id`.
    temp318-v = id.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `growing`.
    temp318-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( growing ).
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `growingMaxLines`.
    temp318-v = growingmaxlines.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `required`.
    temp318-v = required.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `valueState`.
    temp318-v = valuestate.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `placeholder`.
    temp318-v = placeholder.
    INSERT temp318 INTO TABLE temp317.
    temp318-n = `valueStateText`.
    temp318-v = valuestatetext.
    INSERT temp318 INTO TABLE temp317.
    _generic( name   = `TextArea`
              t_prop = temp317 ).
  ENDMETHOD.


  METHOD tile_content.

    DATA temp319 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp320 LIKE LINE OF temp319.
    CLEAR temp319.
    
    temp320-n = `unit`.
    temp320-v = unit.
    INSERT temp320 INTO TABLE temp319.
    temp320-n = `footer`.
    temp320-v = footer.
    INSERT temp320 INTO TABLE temp319.
    result = _generic( name   = `TileContent`
                       ns     = ``
                       t_prop = temp319 ).

  ENDMETHOD.


  METHOD timeline.

    DATA temp321 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp322 LIKE LINE OF temp321.
    CLEAR temp321.
    
    temp322-n = 'id'.
    temp322-v = id.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'enableDoubleSided'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabledoublesided ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'groupBy'.
    temp322-v = groupby.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'growingThreshold'.
    temp322-v = growingthreshold.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'filterTitle'.
    temp322-v = filtertitle.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'sortOldestFirst'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( sortoldestfirst ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'enableModelFilter'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enableModelFilter ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'enableScroll'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enableScroll ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'forceGrowing'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( forceGrowing ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'group'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( group ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'lazyLoading'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( lazyLoading ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'showHeaderBar'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showHeaderBar ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'showIcons'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showIcons ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'showItemFilter'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showItemFilter ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'showSearch'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showSearch ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'showSort'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showSort ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'showTimeFilter'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showTimeFilter ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'sort'.
    temp322-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( sort ).
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'groupByType'.
    temp322-v = groupByType.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'textHeight'.
    temp322-v = textHeight.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'width'.
    temp322-v = width.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'height'.
    temp322-v = height.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'noDataText'.
    temp322-v = noDataText.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'alignment'.
    temp322-v = alignment.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'axisOrientation'.
    temp322-v = axisorientation.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'filterList'.
    temp322-v = filterList.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'customFilter'.
    temp322-v = customFilter.
    INSERT temp322 INTO TABLE temp321.
    temp322-n = 'content'.
    temp322-v = content.
    INSERT temp322 INTO TABLE temp321.
    result = _generic( name   = `Timeline`
                       ns     = 'commons'
                       t_prop = temp321 ).
  ENDMETHOD.


  METHOD timeline_item.

    DATA temp323 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp324 LIKE LINE OF temp323.
    CLEAR temp323.
    
    temp324-n = 'id'.
    temp324-v = id.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'dateTime'.
    temp324-v = datetime.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'title'.
    temp324-v = title.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'userNameClickable'.
    temp324-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( usernameclickable ).
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'useIconTooltip'.
    temp324-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( useIconTooltip ).
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'userNameClicked'.
    temp324-v = usernameclicked.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'userPicture'.
    temp324-v = userPicture.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'select'.
    temp324-v = select.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'text'.
    temp324-v = text.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'userName'.
    temp324-v = username.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'filterValue'.
    temp324-v = filtervalue.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'iconDisplayShape'.
    temp324-v = iconDisplayShape.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'iconInitials'.
    temp324-v = iconInitials.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'iconSize'.
    temp324-v = iconSize.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'iconTooltip'.
    temp324-v = iconTooltip.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'maxCharacters'.
    temp324-v = maxCharacters.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'replyCount'.
    temp324-v = replyCount.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'status'.
    temp324-v = status.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'customActionClicked'.
    temp324-v = customActionClicked.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'press'.
    temp324-v = press.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'replyListOpen'.
    temp324-v = replyListOpen.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'replyPost'.
    temp324-v = replyPost.
    INSERT temp324 INTO TABLE temp323.
    temp324-n = 'icon'.
    temp324-v = icon.
    INSERT temp324 INTO TABLE temp323.
    result = _generic( name   = `TimelineItem`
                       ns     = 'commons'
                       t_prop = temp323 ).
  ENDMETHOD.


  METHOD time_horizon.
    DATA temp325 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp326 LIKE LINE OF temp325.
    CLEAR temp325.
    
    temp326-n = `startTime`.
    temp326-v = starttime.
    INSERT temp326 INTO TABLE temp325.
    temp326-n = `endTime`.
    temp326-v = endtime.
    INSERT temp326 INTO TABLE temp325.
    result = _generic( name   = `TimeHorizon`
                       ns     = `config`
                       t_prop = temp325 ).
  ENDMETHOD.


  METHOD time_picker.
    DATA temp327 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp328 LIKE LINE OF temp327.
    result = me.
    
    CLEAR temp327.
    
    temp328-n = `value`.
    temp328-v = value.
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `placeholder`.
    temp328-v = placeholder.
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `enabled`.
    temp328-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `required`.
    temp328-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( required ).
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `width`.
    temp328-v = width.
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `valueState`.
    temp328-v = valuestate.
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `displayFormat`.
    temp328-v = displayformat.
    INSERT temp328 INTO TABLE temp327.
    temp328-n = `valueFormat`.
    temp328-v = valueformat.
    INSERT temp328 INTO TABLE temp327.
    _generic( name   = `TimePicker`
              t_prop = temp327 ).
  ENDMETHOD.


  METHOD title.
    DATA lv_name TYPE c LENGTH 5.
    DATA temp1 LIKE lv_name.
    DATA temp330 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp331 LIKE LINE OF temp330.
    DATA temp2 TYPE string.
    IF ns = 'f'.
      temp1 = 'title'.
    ELSE.
      temp1 = `Title`.
    ENDIF.
    lv_name = temp1.


    result = me.
    
    CLEAR temp330.
    
    temp331-n = `text`.
    temp331-v = text.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `class`.
    temp331-v = class.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `id`.
    temp331-v = id.
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `wrapping`.
    temp331-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( wrapping ).
    INSERT temp331 INTO TABLE temp330.
    temp331-n = `level`.
    temp331-v = level.
    INSERT temp331 INTO TABLE temp330.
    
    IF level IS NOT INITIAL.
      temp2 = `webc`.
    ELSE.
      temp2 = ns.
    ENDIF.
    _generic( ns     = temp2
              name   = lv_name
              t_prop = temp330 ).
  ENDMETHOD.


  METHOD toggle_button.
    DATA temp332 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp333 LIKE LINE OF temp332.

    result = me.
    
    CLEAR temp332.
    
    temp333-n = `press`.
    temp333-v = press.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `text`.
    temp333-v = text.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `enabled`.
    temp333-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `icon`.
    temp333-v = icon.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `type`.
    temp333-v = type.
    INSERT temp333 INTO TABLE temp332.
    temp333-n = `class`.
    temp333-v = class.
    INSERT temp333 INTO TABLE temp332.
    _generic( name   = `ToggleButton`
              t_prop = temp332 ).
  ENDMETHOD.


  METHOD token.
    DATA temp334 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp335 LIKE LINE OF temp334.

    result = me.
    
    CLEAR temp334.
    
    temp335-n = `key`.
    temp335-v = key.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `text`.
    temp335-v = text.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `selected`.
    temp335-v = selected.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `visible`.
    temp335-v = visible.
    INSERT temp335 INTO TABLE temp334.
    temp335-n = `editable`.
    temp335-v = editable.
    INSERT temp335 INTO TABLE temp334.
    _generic( name   = `Token`
              t_prop = temp334 ).
  ENDMETHOD.


  METHOD tokens.

    result = _generic( `tokens` ).

  ENDMETHOD.


  METHOD toolbar.

    DATA temp336 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp337 LIKE LINE OF temp336.
    CLEAR temp336.
    
    temp337-n = `active`.
    temp337-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( active ).
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `ariaHasPopup`.
    temp337-v = ariaHasPopup.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `design`.
    temp337-v = design.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `enabled`.
    temp337-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `visible`.
    temp337-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `height`.
    temp337-v = height.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `style`.
    temp337-v = style.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `width`.
    temp337-v = width.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `id`.
    temp337-v = id.
    INSERT temp337 INTO TABLE temp336.
    temp337-n = `press`.
    temp337-v = press.
    INSERT temp337 INTO TABLE temp336.
    result = _generic( name = `Toolbar`
                       ns = ns
                       t_prop = temp336 ).

  ENDMETHOD.


  METHOD toolbar_spacer.

    result = me.
    _generic( name = `ToolbarSpacer`
              ns   = ns ).

  ENDMETHOD.


  METHOD tool_header.

    result = _generic( name = `ToolHeader`
                       ns   = `tnt` ).

  ENDMETHOD.


  METHOD tool_page.
    result = _generic( name = `ToolPage`
                       ns   = `tnt` ).
  ENDMETHOD.


  METHOD total_horizon.
    result = _generic( name = `totalHorizon`
                       ns   = `axistime` ).
  ENDMETHOD.


  METHOD tree.
    DATA temp338 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp339 LIKE LINE OF temp338.
    CLEAR temp338.
    
    temp339-n = `items`.
    temp339-v = items.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `headerText`.
    temp339-v = headertext.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `footerText`.
    temp339-v = footertext.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `mode`.
    temp339-v = mode.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `width`.
    temp339-v = width.
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `includeItemInSelection`.
    temp339-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( includeiteminselection ).
    INSERT temp339 INTO TABLE temp338.
    temp339-n = `inset`.
    temp339-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( inset ).
    INSERT temp339 INTO TABLE temp338.
    result = _generic( name   = `Tree`
                       t_prop = temp338 ).
  ENDMETHOD.


  METHOD tree_column.

    DATA temp340 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp341 LIKE LINE OF temp340.
    CLEAR temp340.
    
    temp341-n = `label`.
    temp341-v = label.
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `template`.
    temp341-v = template.
    INSERT temp341 INTO TABLE temp340.
    temp341-n = `hAlign`.
    temp341-v = halign.
    INSERT temp341 INTO TABLE temp340.
    result = _generic( name = `Column`
                  ns        = `table`
                  t_prop    = temp340 ).

  ENDMETHOD.


  METHOD tree_columns.

    result = _generic( name = `columns`
                       ns   = `table` ).

  ENDMETHOD.


  METHOD tree_table.

    DATA temp342 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp343 LIKE LINE OF temp342.
    CLEAR temp342.
    
    temp343-n = `rows`.
    temp343-v = rows.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `selectionMode`.
    temp343-v = selectionmode.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `enableColumnReordering`.
    temp343-v = enablecolumnreordering.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `expandFirstLevel`.
    temp343-v = expandfirstlevel.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `columnSelect`.
    temp343-v = columnselect.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `rowSelectionChange`.
    temp343-v = rowselectionchange.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `selectionBehavior`.
    temp343-v = selectionbehavior.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `id`.
    temp343-v = id.
    INSERT temp343 INTO TABLE temp342.
    temp343-n = `selectedIndex`.
    temp343-v = selectedindex.
    INSERT temp343 INTO TABLE temp342.
    result = _generic( name  = `TreeTable`
                      ns     = `table`
                      t_prop = temp342 ).
  ENDMETHOD.


  METHOD tree_template.

    result = _generic( name = `template`
                       ns   = `table` ).

  ENDMETHOD.


  METHOD ui_column.
    DATA temp344 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp345 LIKE LINE OF temp344.
    CLEAR temp344.
    
    temp345-n = `width`.
    temp345-v = width.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `showSortMenuEntry`.
    temp345-v = showsortmenuentry.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `sortProperty`.
    temp345-v = sortproperty.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `showFilterMenuEntry`.
    temp345-v = showfiltermenuentry.
    INSERT temp345 INTO TABLE temp344.
    temp345-n = `filterProperty`.
    temp345-v = filterproperty.
    INSERT temp345 INTO TABLE temp344.
    result = _generic( name   = `Column`
                       ns     = 'table'
                       t_prop = temp344 ).
  ENDMETHOD.


  METHOD ui_columns.
    result = _generic( name = `columns`
                       ns   = 'table' ).
  ENDMETHOD.


  METHOD ui_extension.

    result = _generic( name = `extension`
                       ns   = 'table' ).
  ENDMETHOD.


  METHOD ui_row_action.
    result = _generic( name = `RowAction`
                       ns   = `table` ).
  ENDMETHOD.


  METHOD ui_row_action_item.
    DATA temp346 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp347 LIKE LINE OF temp346.
    CLEAR temp346.
    
    temp347-n = `icon`.
    temp347-v = icon.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `text`.
    temp347-v = text.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `type`.
    temp347-v = type.
    INSERT temp347 INTO TABLE temp346.
    temp347-n = `press`.
    temp347-v = press.
    INSERT temp347 INTO TABLE temp346.
    result = _generic( name   = `RowActionItem`
                       ns     = `table`
                       t_prop = temp346 ).
  ENDMETHOD.


  METHOD ui_row_action_template.
    result = _generic( name = `rowActionTemplate`
                       ns   = `table` ).
  ENDMETHOD.


  METHOD ui_table.

    DATA temp348 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp349 LIKE LINE OF temp348.
    CLEAR temp348.
    
    temp349-n = `rows`.
    temp349-v = rows.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `alternateRowColors`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( alternaterowcolors ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `columnHeaderVisible`.
    temp349-v = columnheadervisible.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `editable`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `enableCellFilter`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enablecellfilter ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `enableGrouping`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enablegrouping ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `senableSelectAll`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enableselectall ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `firstVisibleRow`.
    temp349-v = firstvisiblerow.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `fixedBottomRowCount`.
    temp349-v = fixedbottomrowcount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `fixedColumnCount`.
    temp349-v = fixedcolumncount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `rowActionCount`.
    temp349-v = rowactioncount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `fixedRowCount`.
    temp349-v = fixedrowcount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `minAutoRowCount`.
    temp349-v = minautorowcount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `minAutoRowCount`.
    temp349-v = minautorowcount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `rowHeight`.
    temp349-v = rowheight.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `selectedIndex`.
    temp349-v = selectedindex.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `selectionMode`.
    temp349-v = selectionmode.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `showColumnVisibilityMenu`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showcolumnvisibilitymenu ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `showNoData`.
    temp349-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( shownodata ).
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `threshold`.
    temp349-v = threshold.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `visibleRowCount`.
    temp349-v = visiblerowcount.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `visibleRowCountMode`.
    temp349-v = visiblerowcountmode.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `footer`.
    temp349-v = footer.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `filter`.
    temp349-v = filter.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `sort`.
    temp349-v = sort.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `customFilter`.
    temp349-v = customfilter.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `id`.
    temp349-v = id.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `fl:flexibility`.
    temp349-v = flex.
    INSERT temp349 INTO TABLE temp348.
    temp349-n = `rowSelectionChange`.
    temp349-v = rowselectionchange.
    INSERT temp349 INTO TABLE temp348.
    result = _generic( name   = `Table`
                       ns     = `table`
                       t_prop = temp348 ).

  ENDMETHOD.


  METHOD ui_template.

    result = _generic( name = `template`
                       ns   = 'table' ).

  ENDMETHOD.


  METHOD upload_set.
    DATA temp350 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp351 LIKE LINE OF temp350.
    CLEAR temp350.
    
    temp351-n = `id`.
    temp351-v = id.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `instantUpload`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( instantupload ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `showIcons`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showicons ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `uploadEnabled`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( uploadenabled ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `terminationEnabled`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( terminationenabled ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `uploadButtonInvisible`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( uploadbuttoninvisible ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `fileTypes`.
    temp351-v = filetypes.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `maxFileNameLength`.
    temp351-v = maxfilenamelength.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `maxFileSize`.
    temp351-v = maxfilesize.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `mediaTypes`.
    temp351-v = mediatypes.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `items`.
    temp351-v = items.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `uploadUrl`.
    temp351-v = uploadurl.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `mode`.
    temp351-v = mode.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `fileRenamed`.
    temp351-v = filerenamed.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `directory`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( directory ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `multiple`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( multiple ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `dragDropDescription`.
    temp351-v = dragdropdescription.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `dragDropText`.
    temp351-v = dragdroptext.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `noDataText`.
    temp351-v = nodatatext.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `noDataDescription`.
    temp351-v = nodatadescription.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `noDataIllustrationType`.
    temp351-v = nodataillustrationtype.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `afterItemEdited`.
    temp351-v = afteritemedited.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `afterItemRemoved`.
    temp351-v = afteritemremoved.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `beforeItemAdded`.
    temp351-v = beforeitemadded.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `beforeItemEdited`.
    temp351-v = beforeitemedited.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `beforeItemRemoved`.
    temp351-v = beforeitemremoved.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `beforeUploadStarts`.
    temp351-v = beforeuploadstarts.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `beforeUploadTermination`.
    temp351-v = beforeuploadtermination.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `fileNameLengthExceeded`.
    temp351-v = filenamelengthexceeded.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `fileSizeExceeded`.
    temp351-v = filesizeexceeded.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `fileTypeMismatch`.
    temp351-v = filetypemismatch.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `itemDragStart`.
    temp351-v = itemdragstart.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `itemDrop`.
    temp351-v = itemdrop.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `mediaTypeMismatch`.
    temp351-v = mediatypemismatch.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `uploadTerminated`.
    temp351-v = uploadterminated.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `uploadCompleted`.
    temp351-v = uploadcompleted.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `afterItemAdded`.
    temp351-v = afteritemadded.
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `sameFilenameAllowed`.
    temp351-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( samefilenameallowed ).
    INSERT temp351 INTO TABLE temp350.
    temp351-n = `selectionChanged`.
    temp351-v = selectionchanged.
    INSERT temp351 INTO TABLE temp350.
    result = _generic( name   = `UploadSet`
                       ns     = 'upload'
                       t_prop = temp350 ).
  ENDMETHOD.


  METHOD upload_set_item.
    DATA temp352 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp353 LIKE LINE OF temp352.
    CLEAR temp352.
    
    temp353-n = `fileName`.
    temp353-v = filename.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `mediaType`.
    temp353-v = mediatype.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `url`.
    temp353-v = url.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `thumbnailUrl`.
    temp353-v = thumbnailurl.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `markers`.
    temp353-v = markers.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `enabledEdit`.
    temp353-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enablededit ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `enabledRemove`.
    temp353-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabledremove ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `selected`.
    temp353-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `visibleEdit`.
    temp353-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visibleedit ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `visibleRemove`.
    temp353-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visibleremove ).
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `uploadState`.
    temp353-v = uploadstate.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `uploadUrl`.
    temp353-v = uploadurl.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `openPressed`.
    temp353-v = openpressed.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `removePressed`.
    temp353-v = removepressed.
    INSERT temp353 INTO TABLE temp352.
    temp353-n = `statuses`.
    temp353-v = statuses.
    INSERT temp353 INTO TABLE temp352.
    result = _generic( name   = `UploadSetItem`
                   ns     = 'upload'
                   t_prop = temp352 ).
  ENDMETHOD.


  METHOD upload_set_toolbar_placeholder.
    result = _generic( name = `UploadSetToolbarPlaceholder` ns = `upload` ).
  ENDMETHOD.


  METHOD variant_item.

    DATA temp354 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp355 LIKE LINE OF temp354.
    CLEAR temp354.
    
    temp355-n = `executeOnSelection`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( executeonselection ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `global`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( global ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `labelReadOnly`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( labelreadonly ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `lifecyclePackage`.
    temp355-v = lifecyclepackage.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `lifecycleTransportId`.
    temp355-v = lifecycletransportid.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `namespace`.
    temp355-v = namespace.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `readOnly`.
    temp355-v = readonly.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `executeOnSelect`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( executeonselect ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `author`.
    temp355-v = author.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `changeable`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( changeable ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `enabled`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `favorite`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( favorite ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `key`.
    temp355-v = key.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `text`.
    temp355-v = text.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `title`.
    temp355-v = title.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `textDirection`.
    temp355-v = textdirection.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `originalTitle`.
    temp355-v = originaltitle.
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `originalExecuteOnSelect`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( originalexecuteonselect ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `remove`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( remove ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `rename`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( rename ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `originalFavorite`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( originalfavorite ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `sharing`.
    temp355-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( sharing ).
    INSERT temp355 INTO TABLE temp354.
    temp355-n = `change`.
    temp355-v = change.
    INSERT temp355 INTO TABLE temp354.
    result = _generic( name   = `VariantItem`
                         ns     = `vm`
                         t_prop = temp354 ).

  ENDMETHOD.


  METHOD variant_items.

    result = _generic( name   = `variantItems`
                         ns     = `vm` ).

  ENDMETHOD.


  METHOD variant_management.

    DATA temp356 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp357 LIKE LINE OF temp356.
    CLEAR temp356.
    
    temp357-n = `defaultVariantKey`.
    temp357-v = defaultvariantkey.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `enabled`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `inErrorState`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( inerrorstate ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `initialSelectionKey`.
    temp357-v = initialselectionkey.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `lifecycleSupport`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( lifecyclesupport ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `selectionKey`.
    temp357-v = selectionkey.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `showCreateTile`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showcreatetile ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `showExecuteOnSelection`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showexecuteonselection ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `showSetAsDefault`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsetasdefault ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `showShare`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showshare ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `standardItemAuthor`.
    temp357-v = standarditemauthor.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `standardItemText`.
    temp357-v = standarditemtext.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `useFavorites`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( usefavorites ).
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `variantItems`.
    temp357-v = variantitems.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `manage`.
    temp357-v = manage.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `save`.
    temp357-v = save.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `select`.
    temp357-v = select.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `id`.
    temp357-v = id.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `variantCreationByUserAllowed`.
    temp357-v = uservarcreate.
    INSERT temp357 INTO TABLE temp356.
    temp357-n = `visible`.
    temp357-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( visible ).
    INSERT temp357 INTO TABLE temp356.
    result = _generic( name   = `VariantManagement`
                       ns     = `vm`
                       t_prop = temp356 ).

  ENDMETHOD.


  METHOD variant_management_fl.
    DATA temp358 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp359 LIKE LINE OF temp358.
    CLEAR temp358.
    
    temp359-n = `displayTextForExecuteOnSelectionForStandardVariant`.
    temp359-v = displaytextfsv.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `editable`.
    temp359-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( editable ).
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `executeOnSelectionForStandardDefault`.
    temp359-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( executeonselectionforstandflt ).
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `headerLevel`.
    temp359-v = headerlevel.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `inErrorState`.
    temp359-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( inerrorstate ).
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `maxWidth`.
    temp359-v = maxwidth.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `modelName`.
    temp359-v = modelname.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `resetOnContextChange`.
    temp359-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( resetoncontextchange ).
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `showSetAsDefault`.
    temp359-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( showsetasdefault ).
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `titleStyle`.
    temp359-v = titlestyle.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `updateVariantInURL`.
    temp359-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( updatevariantinurl ).
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `cancel`.
    temp359-v = cancel.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `initialized`.
    temp359-v = initialized.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `manage`.
    temp359-v = manage.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `save`.
    temp359-v = save.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `select`.
    temp359-v = select.
    INSERT temp359 INTO TABLE temp358.
    temp359-n = `for`.
    temp359-v = for.
    INSERT temp359 INTO TABLE temp358.
    result = _generic( name   = `VariantManagement`
                       ns     = `flvm`
                       t_prop = temp358 ).
  ENDMETHOD.


  METHOD vbox.

    DATA temp360 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp361 LIKE LINE OF temp360.
    CLEAR temp360.
    
    temp361-n = `height`.
    temp361-v = height.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `justifyContent`.
    temp361-v = justifycontent.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `renderType`.
    temp361-v = rendertype.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `alignContent`.
    temp361-v = aligncontent.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `alignItems`.
    temp361-v = alignitems.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `direction`.
    temp361-v = direction.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `width`.
    temp361-v = width.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `wrap`.
    temp361-v = wrap.
    INSERT temp361 INTO TABLE temp360.
    temp361-n = `class`.
    temp361-v = class.
    INSERT temp361 INTO TABLE temp360.
    result = _generic( name   = `VBox`
                       t_prop = temp360 ).

  ENDMETHOD.


  METHOD vertical_layout.

    DATA temp362 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp363 LIKE LINE OF temp362.
    CLEAR temp362.
    
    temp363-n = `class`.
    temp363-v = class.
    INSERT temp363 INTO TABLE temp362.
    temp363-n = `width`.
    temp363-v = width.
    INSERT temp363 INTO TABLE temp362.
    result = _generic( name   = `VerticalLayout`
                       ns     = `layout`
                       t_prop = temp362 ).
  ENDMETHOD.


  METHOD view_settings_dialog.

    DATA temp364 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp365 LIKE LINE OF temp364.
    CLEAR temp364.
    
    temp365-n = `confirm`.
    temp365-v = confirm.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `cancel`.
    temp365-v = cancel.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `filterDetailPageOpened`.
    temp365-v = filterdetailpageopened.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `reset`.
    temp365-v = reset.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `resetFilters`.
    temp365-v = resetfilters.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `filterSearchOperator`.
    temp365-v = filtersearchoperator.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `groupDescending`.
    temp365-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( groupdescending ).
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `sortDescending`.
    temp365-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( sortdescending ).
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `title`.
    temp365-v = title.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `selectedGroupItem`.
    temp365-v = selectedgroupitem.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `selectedPresetFilterItem`.
    temp365-v = selectedpresetfilteritem.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `selectedSortItem`.
    temp365-v = selectedsortitem.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `selectedSortItem`.
    temp365-v = selectedsortitem.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `filterItems`.
    temp365-v = filteritems.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `sortItems`.
    temp365-v = sortitems.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `groupItems`.
    temp365-v = groupitems.
    INSERT temp365 INTO TABLE temp364.
    temp365-n = `titleAlignment`.
    temp365-v = titlealignment.
    INSERT temp365 INTO TABLE temp364.
    result = _generic( name   = `ViewSettingsDialog`
              t_prop = temp364 ).

  ENDMETHOD.


  METHOD view_settings_filter_item.
    DATA temp366 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp367 LIKE LINE OF temp366.
    CLEAR temp366.
    
    temp367-n = `enabled`.
    temp367-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `key`.
    temp367-v = key.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `selected`.
    temp367-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `text`.
    temp367-v = text.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `textDirection`.
    temp367-v = textdirection.
    INSERT temp367 INTO TABLE temp366.
    temp367-n = `multiSelect`.
    temp367-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( multiselect ).
    INSERT temp367 INTO TABLE temp366.
    result = _generic( name   = `ViewSettingsFilterItem`
                  t_prop = temp366 ).
  ENDMETHOD.


  METHOD view_settings_item.
    DATA temp368 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp369 LIKE LINE OF temp368.
    CLEAR temp368.
    
    temp369-n = `enabled`.
    temp369-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( enabled ).
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `key`.
    temp369-v = key.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `selected`.
    temp369-v = z2ui5_cl_fw_utility=>boolean_abap_2_json( selected ).
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `text`.
    temp369-v = text.
    INSERT temp369 INTO TABLE temp368.
    temp369-n = `textDirection`.
    temp369-v = textdirection.
    INSERT temp369 INTO TABLE temp368.
    result = _generic( name   = `ViewSettingsItem`
                  t_prop = temp368 ).

  ENDMETHOD.


  METHOD visible_horizon.
    result = _generic( name = `visibleHorizon`
                       ns   = `axistime` ).
  ENDMETHOD.


  METHOD vos.

    result = _generic( name = `vos`
                      ns    = `vbm`
                  ).

  ENDMETHOD.


  METHOD xml_get.
        DATA temp370 LIKE LINE OF mt_prop.
        DATA temp371 LIKE sy-tabix.
      DATA lt_prop TYPE z2ui5_if_client=>ty_t_name_value.
      DATA temp372 TYPE z2ui5_if_client=>ty_t_name_value.
      DATA temp373 LIKE LINE OF temp372.
      DATA temp374 LIKE LINE OF mt_ns.
      DATA lr_ns LIKE REF TO temp374.
        DATA temp375 LIKE LINE OF lt_prop.
        DATA lr_prop LIKE REF TO temp375.
          DATA ns TYPE z2ui5_if_client=>ty_s_name_value-n.
    DATA temp376 TYPE string.
    DATA lv_tmp2 LIKE temp376.
    DATA temp377 TYPE string.
    DATA val TYPE string.
    DATA row LIKE LINE OF mt_prop.
      DATA temp3 TYPE string.
    DATA lv_tmp3 LIKE temp377.
    DATA lr_child LIKE LINE OF mt_child.
      DATA temp378 TYPE REF TO z2ui5_cl_xml_view.
    DATA temp379 TYPE string.
    DATA lv_ns LIKE temp379.

    CASE mv_name.
      WHEN `ZZPLAIN`.
        
        
        temp371 = sy-tabix.
        READ TABLE mt_prop WITH KEY n = `VALUE` INTO temp370.
        sy-tabix = temp371.
        IF sy-subrc <> 0.
          RAISE EXCEPTION TYPE cx_sy_itab_line_not_found.
        ENDIF.
        result = temp370-v.
        RETURN.
    ENDCASE.

    IF me = mo_root.
      



      
      CLEAR temp372.
      
      temp373-n = `xmlns:z2ui5`.
      temp373-v = `z2ui5`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:layout`.
      temp373-v = `sap.ui.layout`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:table`.
      temp373-v = `sap.ui.table`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:f`.
      temp373-v = `sap.f`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:form`.
      temp373-v = `sap.ui.layout.form`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:editor`.
      temp373-v = `sap.ui.codeeditor`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:mchart`.
      temp373-v = `sap.suite.ui.microchart`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:webc`.
      temp373-v = `sap.ui.webc.main`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:uxap`.
      temp373-v = `sap.uxap`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:sap`.
      temp373-v = `sap`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:text`.
      temp373-v = `sap.ui.richtexteditor`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:html`.
      temp373-v = `http://www.w3.org/1999/xhtml`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:fb`.
      temp373-v = `sap.ui.comp.filterbar`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:u`.
      temp373-v = `sap.ui.unified`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:gantt`.
      temp373-v = `sap.gantt.simple`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:axistime`.
      temp373-v = `sap.gantt.axistime`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:config`.
      temp373-v = `sap.gantt.config`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:shapes`.
      temp373-v = `sap.gantt.simple.shapes`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:commons`.
      temp373-v = `sap.suite.ui.commons`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:vm`.
      temp373-v = `sap.ui.comp.variants`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:viz`.
      temp373-v = `sap.viz.ui5.controls`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:vk`.
      temp373-v = `sap.ui.vk`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:vbm`.
      temp373-v = `sap.ui.vbm`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:ndc`.
      temp373-v = `sap.ndc`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:svm`.
      temp373-v = `sap.ui.comp.smartvariants`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:flvm`.
      temp373-v = `sap.ui.fl.variants`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:p13n`.
      temp373-v = `sap.m.p13n`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:upload`.
      temp373-v = `sap.m.upload`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:fl`.
      temp373-v = `sap.ui.fl`.
      INSERT temp373 INTO TABLE temp372.
      temp373-n = `xmlns:tnt`.
      temp373-v = `sap.tnt`.
      INSERT temp373 INTO TABLE temp372.
      lt_prop = temp372.

      
      
      LOOP AT mt_ns REFERENCE INTO lr_ns.

        
        
        LOOP AT lt_prop REFERENCE INTO lr_prop.

          
          ns = lr_prop->n+6.
          IF ns = lr_ns->*.
          try.
            INSERT lr_prop->* INTO TABLE mt_prop.
            catch cx_root.
            endtry.
            DELETE lt_prop.
            EXIT.
          ENDIF.

        ENDLOOP.

      ENDLOOP.

    DELETE ADJACENT DUPLICATES FROM mt_prop COMPARING n.
    ENDIF.

    
    IF mv_ns <> ``.
      temp376 = |{ mv_ns }:|.
    ELSE.
      CLEAR temp376.
    ENDIF.
    
    lv_tmp2 = temp376.
    
    
    val = ``.
    
    LOOP AT mt_prop INTO row WHERE v <> ``.
      
      IF row-v = abap_true.
        temp3 = `true`.
      ELSE.
        temp3 = row-v.
      ENDIF.
      val = |{ val } { row-n }="{ escape( val = temp3 format = cl_abap_format=>e_xml_attr ) }" \n |.
    ENDLOOP.
    temp377 = val.
    
    lv_tmp3 = temp377.

    result = |{ result } <{ lv_tmp2 }{ mv_name } \n { lv_tmp3 }|.

    IF mt_child IS INITIAL.
      result = |{ result }/>|.
      RETURN.
    ENDIF.

    result = |{ result }>|.

    
    LOOP AT mt_child INTO lr_child.
      
      temp378 ?= lr_child.
      result = result && temp378->xml_get( ).
    ENDLOOP.

    
    IF mv_ns <> ||.
      temp379 = |{ mv_ns }:|.
    ELSE.
      CLEAR temp379.
    ENDIF.
    
    lv_ns = temp379.
    result = |{ result }</{ lv_ns }{ mv_name }>|.

  ENDMETHOD.


  METHOD _cc.

    CREATE OBJECT result EXPORTING I_VIEW = me.

  ENDMETHOD.


  METHOD _cc_plain_xml.
    DATA temp380 TYPE z2ui5_if_client=>ty_t_name_value.
    DATA temp381 LIKE LINE OF temp380.

    result = me.
    
    CLEAR temp380.
    
    temp381-n = `VALUE`.
    temp381-v = val.
    INSERT temp381 INTO TABLE temp380.
    _generic( name   = `ZZPLAIN`
              t_prop = temp380 ).

  ENDMETHOD.


  METHOD _generic.
        DATA temp382 TYPE string.
    DATA result2 TYPE REF TO z2ui5_cl_xml_view.

    TRY.
        
        temp382 = ns.
        INSERT temp382 INTO TABLE mo_root->mt_ns.
      CATCH cx_root.
    ENDTRY.

    
    CREATE OBJECT result2 TYPE z2ui5_cl_xml_view.
    result2->mv_name   = name.
    result2->mv_ns     = ns.
    result2->mt_prop  = t_prop.
    result2->mo_parent = me.
    result2->mo_root   = mo_root.
    INSERT result2 INTO TABLE mt_child.

    mo_root->mo_previous = result2.
    result = result2.

  ENDMETHOD.


  METHOD _generic_property.

    INSERT val INTO TABLE mt_prop.
    result = me.

  ENDMETHOD.
ENDCLASS.

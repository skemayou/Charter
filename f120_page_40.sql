prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.04.04'
,p_release=>'18.1.0.00.45'
,p_default_workspace_id=>93079293702481126
,p_default_application_id=>120
,p_default_owner=>'CHARTER'
);
end;
/
 
prompt APPLICATION 120 - Charter
--
-- Application Export:
--   Application:     120
--   Name:            Charter
--   Date and Time:   18:38 Thursday November 22, 2018
--   Exported By:     SUZY
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         18.1.0.00.45
--   Instance ID:     61930891962732
--

prompt --application/pages/delete_00040
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>40);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Request For Quote'
,p_alias=>'RFQ'
,p_step_title=>'Request For Quote'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#shippement_IG button[data-action="selection-delete"] span.icon-ig-delete'').remove();',
'$(''#shippement_IG button[data-action="selection-delete"] '').prepend(''<i class="fa fa-trash" aria-hidden="true"></i> '');',
'$(''th.a-GV-header'').addClass(''a-GV-header-public'') ;',
'$(''th'').removeClass(''a-GV-header'') ;',
'',
'document.getElementById(''P40_AIRPORT_FROM'').click();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#shippement_IG #shippement_IG_ig_toolbar_actions_button,',
'#shippement_IG div[data-action="edit"],',
'#shippement_IG button[data-action="save"],',
'.a-Toolbar-group--together ,',
'.a-GV-footer{',
'    display: none !important;',
'}',
'',
'.col-4 {',
'     max-width:100%!important; ',
'}',
'',
'.t-Header-logo-link img {',
'    max-height: 7rem!important;',
'    display: block;',
'}',
'',
'',
'#shippement_IG span.a-Icon.fa, #shippement_IG span.a-Icon.fa:before {',
'  font-family: FontAwesome !important; ',
'}',
'#shippement_IG_ig_toolbar .a-Button--hot {',
'    background-color: #0072b9;',
'    color: #ffffff;',
'   ',
'}',
'.a-GV-header-public, .a-GV-headerGroup {',
'    border-color: #E0E0E0; ',
'        position: relative;',
'            border: 1px solid;',
'     height: 40px; ',
'    padding: 8px;',
'}',
'',
'',
'#shippement_IG_ig {',
'    border: none!important;',
'    position: relative!important;',
'}',
'',
'.a-GV-table th {',
'    font-weight: bold;',
'}',
'',
'.a-GV-table .a-GV-cell {',
'    border-color: grey!important; ',
'}',
'#shippement_IG_ig_toolbar .a-Button--hot {',
'    background:#ce3544!important;',
'}',
'',
'body{',
'    background:black!important;',
'}',
'',
'',
'',
'/*Public page Css ',
'*/',
'',
'.rfq_branding, .t-Header-logo-oracle:before {',
'    height: 88px!important;',
'    background-color: white!important;',
'}',
'.rfq-send-btn {',
'    height: 50px;',
'   font-size: 25px!important;',
'   color: #fff!important;',
'    background-color: #ce3544!important;',
'        border-color: red!important;',
'}',
'',
'.a-GV-table th {',
'    font-weight: bold;',
'}',
'',
'.a-IG {',
'    border: 0px solid!important;',
'    position: relative;',
'}',
'.t-Region-header {',
'    background-color: #ce3544!important;',
'}'))
,p_step_template=>wwv_flow_api.id(23732166919090006)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181122183712'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23750566174287626)
,p_plug_name=>'Quote request Sucess Message'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success:t-Alert--removeHeading'
,p_plug_template=>wwv_flow_api.id(93087646763489109)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Your Quote request has been successfully created and a email has been send with your Quote No.  <b> &P40_RFQ_ID.  </b>.<br>',
'We will contact you sonner. Thank you to trust CargoJet. </h4>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P40_SUCESS is not null'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23750742874287628)
,p_plug_name=>'REQUEST INFORMATION'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23580445907752537)
,p_plug_name=>'<h4 >Routing Info & Aircraft Type</h4> '
,p_parent_plug_id=>wwv_flow_api.id(23750742874287628)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:t-Form--labelsAbove'
,p_region_attributes=>'style=''margin-top:30px;'''
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23748418682287605)
,p_plug_name=>'<h4 >Contact Information </h4> '
,p_parent_plug_id=>wwv_flow_api.id(23750742874287628)
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--accent10:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23748995951287610)
,p_plug_name=>'<span style=''color:white''>Shipment Information</span>'
,p_region_name=>'shippement_IG'
,p_parent_plug_id=>wwv_flow_api.id(23750742874287628)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  id,',
'        rfq_id,',
'       item_description,',
'       nbr_pallets,',
'       weight,',
'       volume',
'from chr_shipment_detail ',
'where rfq_id = :P40_RFQ_ID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P40_RFQ_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749120802287612)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749230846287613)
,p_name=>'RFQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RFQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749329792287614)
,p_name=>'ITEM_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749411321287615)
,p_name=>'NBR_PALLETS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NBR_PALLETS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nbr Pallets'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749588579287616)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weight'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749630690287617)
,p_name=>'VOLUME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Volume'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23749801260287619)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(23749064086287611)
,p_internal_uid=>23749064086287611
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_no_data_found_message=>'Please enter your Shipment Details'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    let $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'        toolbarGroup = toolbarData.toolbarFind("actions3"); // this is the group with the action=add row',
'        addrowAction = toolbarData.toolbarFind("selection-add-row"), //add row button',
'       ',
'    // add a new "delete" button',
'    toolbarGroup.controls.push({type: "BUTTON",',
'                                action: "selection-delete",',
'                                 hot: true',
'                               });',
' ',
'     ',
'    // manipulate the buttons',
'    addrowAction.icon = "icon-ig-add-row"; // alternative font awesome icon: "fa fa-plus";',
'    addrowAction.iconBeforeLabel = true;',
'    addrowAction.hot = true;',
' ',
' ',
'     ',
'    //store the config',
'    config.toolbarData = toolbarData;',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(23761126764377499)
,p_interactive_grid_id=>wwv_flow_api.id(23749064086287611)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(23761214745377499)
,p_report_id=>wwv_flow_api.id(23761126764377499)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23761753110377503)
,p_view_id=>wwv_flow_api.id(23761214745377499)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(23749120802287612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23762229582377508)
,p_view_id=>wwv_flow_api.id(23761214745377499)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(23749230846287613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23762767472377509)
,p_view_id=>wwv_flow_api.id(23761214745377499)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(23749329792287614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>289.55560302734375
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23763248435377511)
,p_view_id=>wwv_flow_api.id(23761214745377499)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(23749411321287615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.77780151367188
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23763734152377512)
,p_view_id=>wwv_flow_api.id(23761214745377499)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(23749588579287616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106.55557250976562
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23764208696377514)
,p_view_id=>wwv_flow_api.id(23761214745377499)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(23749630690287617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103.888916015625
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23750369235287624)
,p_plug_name=>'Button'
,p_parent_plug_id=>wwv_flow_api.id(23750742874287628)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--xlarge:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23751954586287640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23750369235287624)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Review & Send'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>':P40_SUCESS is null'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'btn btn-primary btn-lg btn-block rfq-send-btn'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23751834999287639)
,p_branch_name=>'Go To Page 40'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::P40_SUCESS,P40_RFQ_ID:1,&P40_RFQ_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748081256287601)
,p_name=>'P40_AIRPORT_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23580445907752537)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From'
,p_source=>'ORGCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'AIRPORT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ARP_CODE || ''-'' || ARP_NAME as d,',
'       ARP_CODE as r',
'  from CHR_AIRPORT_MST',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Please select The origin Airport --'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748142190287602)
,p_name=>'P40_AIRPORT_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23580445907752537)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To'
,p_source=>'DESCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'AIRPORT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ARP_CODE || ''-'' || ARP_NAME as d,',
'       ARP_CODE as r',
'  from CHR_AIRPORT_MST',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Please select The Destination Airport --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748290340287603)
,p_name=>'P40_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23580445907752537)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Date'
,p_source=>'RFQ_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748353845287604)
,p_name=>'P40_AIRCRAFT_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23580445907752537)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Aircraft Type'
,p_source=>'AIRCRAFT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'AIRCRAFT_TYPE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''AIRCRAFT''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Please select the Aircraft Type --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_icon_css_classes=>'fa-plane'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748505106287606)
,p_name=>'P40_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23748418682287605)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748691673287607)
,p_name=>'P40_CUSTOMER_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23748418682287605)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Email'
,p_source=>'CUSTOMER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_icon_css_classes=>'fa-contacts'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748755123287608)
,p_name=>'P40_CUSTOMER_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23748418682287605)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Phone'
,p_source=>'CUSTOMER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_icon_css_classes=>'fa-office-phone'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23748827825287609)
,p_name=>'P40_CUSTOMER_CONTACT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23748418682287605)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Name'
,p_source=>'CUSTOMER_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93122056034489130)
,p_item_icon_css_classes=>'fa-user-man'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23750650676287627)
,p_name=>'P40_SUCESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23748995951287610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23751070812287631)
,p_name=>'P40_RFQ_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23748995951287610)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23751427872287635)
,p_name=>'P40_RFQ_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23580445907752537)
,p_use_cache_before_default=>'NO'
,p_source=>'RFQ_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23751516616287636)
,p_computation_sequence=>10
,p_computation_item=>'P40_RFQ_STATUS'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'  Description : return the initial stage',
'',
'*/',
'declare ',
' l_status_id number ;',
'begin',
' ',
'     begin',
'          select STATUS_SEQ',
'           into l_status_id',
'           from chr_wrkflw_sts',
'          where WRKFLW_SEQ = (select id  from CHR_SYSTEM_FLW  where upper(key_value) = ''PRE-CHARTER'' )',
'            and initial_flg =''Y''',
'            ;',
'            exception',
'              when  no_data_found then ',
'                 null;',
'       end;',
'      ',
'      return l_status_id;',
'',
'end;'))
,p_compute_when=>':REQUEST = ''SAVE'''
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23750824907287629)
,p_tabular_form_region_id=>wwv_flow_api.id(23748995951287610)
,p_validation_name=>'Validate Shipment details'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :ITEM_DESCRIPTION is null then ',
'   return ''Please enter a shipment Detail Information'';',
'',
'end if ;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24999572562499907)
,p_name=>'set IG Editable '
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'button[data-action="selection-add-row"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24999611619499908)
,p_event_id=>wwv_flow_api.id(24999572562499907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'  apex.region("shippement_IG").widget().interactiveGrid("getActions").set("edit", true);'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23751617978287637)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Proces -CHR_CONTRACT_RFQ'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       insert ',
'       into chr_contract_rfq (RFQ_DATE,',
'                            ORGCOD,',
'                            DESCOD,',
'                            AIRCRAFT_TYPE,',
'                            CUSTOMER_NAME,',
'                            CUSTOMER_EMAIL,',
'                            CUSTOMER_CONTACT,',
'                            CUSTOMER_PHONE,',
'                            RFQ_STATUS)',
'       values (:P40_RFQ_DATE,',
'                :P40_AIRPORT_FROM,',
'                :P40_AIRPORT_TO,',
'                :P40_AIRCRAFT_TYPE,',
'                :P40_CUSTOMER_NAME,',
'                :P40_CUSTOMER_EMAIL,',
'                :P40_CUSTOMER_CONTACT,',
'                :P40_CUSTOMER_PHONE,',
'                :P40_RFQ_STATUS)',
'       returning id into :P40_RFQ_ID',
'                ;',
'     '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23751954586287640)
,p_process_when=>':REQUEST = ''SAVE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23751720043287638)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(23748995951287610)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RFQ_ID '
,p_process_sql_clob=>'   :RFQ_ID := :P40_RFQ_ID;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23751954586287640)
,p_process_when=>':REQUEST = ''SAVE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23749967548287620)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(23748995951287610)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Shipment Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23751954586287640)
,p_process_when=>':REQUEST = ''SAVE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23752003175287641)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email Cargojet Admin Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
' l_address_from varchar2(255);',
'   l_address_to varchar2(1000);',
'      l_subject varchar2(255);',
'   l_message    varchar2(1000);',
'   l_url        varchar2(255);',
'   l_host       varchar2(255);',
'   ',
'begin',
' l_host         := owa_util.get_cgi_env(''HTTP_HOST'');',
' l_address_from := ''no-reply@cargojet.com'';',
' l_address_to   := ''skemayou@cargojet.com'';',
' l_subject      := ''New Request for Quote - '' || :P40_RFQ_ID ;',
' l_url          :=  apex_page.get_url (',
'                       p_page        => 31,',
'                       p_clear_cache => 31,',
'                       p_items       => ''P31_ID'',',
'                       p_values      => :P40_RFQ_ID',
'                     );',
' l_message      :=  ''Customer : <b>'' || :P40_CUSTOMER_NAME || '' </b> has requested for a new Quote. <br> <a href="''||l_host ||''/apex/''||l_url||''"> Click Here </a> For more informations. '';',
' pkg_sendemail.sendemail( l_address_from,',
'                         l_address_to,',
'                         l_subject,',
'                         l_message ,',
'                         null, --attachment1',
'                         null, --attachment2',
'                         null,',
'                         null',
'                         );',
'',
'',
'',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23751954586287640)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23752121490287642)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Email The Customer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
' l_address_from varchar2(255);',
'   l_address_to varchar2(1000);',
'      l_subject varchar2(255);',
'   l_message    varchar2(1000);',
'   l_url        varchar2(255);',
'    l_host       varchar2(255);',
'begin',
' l_host         := owa_util.get_cgi_env(''HTTP_HOST'');',
' l_address_from := ''no-reply@cargojet.com'';',
' l_address_to   := :P40_CUSTOMER_EMAIL;',
' l_subject      := ''Request for Quote With CargoJet AirWays - '' || :P40_RFQ_ID ;',
' l_url          :=  apex_page.get_url (',
'                       p_page        => 40,',
'                       p_clear_cache => 40,',
'                       p_items       => ''P40_RFQ_ID,P40_SUCESS'',',
'                       p_values      => :P40_RFQ_ID ||'',1''',
'                     );',
' l_message      :=  ''Thank you for Your request for a new Quote at cargojet Airways. Your Quote number is : <b>''||:P40_RFQ_ID ||''</b>. <br> <a href="''||l_host ||''/apex/''||l_url||''"> Click Here </a> to see the details. '';',
' pkg_sendemail.sendemail( l_address_from,',
'                         l_address_to,',
'                         l_subject,',
'                         l_message ,',
'                         null, --attachment1',
'                         null, --attachment2',
'                         null,',
'                         null',
'                         );',
'',
'',
'',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23751954586287640)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23752221337287643)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'fetch  row CHR_CONTRACT_RFQ'
,p_attribute_02=>'CHR_CONTRACT_RFQ'
,p_attribute_03=>'P40_RFQ_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

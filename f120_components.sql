prompt --application/set_environment/93080832080489071
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
--   Date and Time:   15:07 Wednesday December 12, 2018
--   Exported By:     SUZY
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     LIST: Desktop Navigation Menu
--     PAGE: 104. Charter Contract Report
--     PAGE: 105. Charter Contract Form
--     PAGE: 31. Request For Quote
--     PAGE: 21. Request for Quote
--     PAGE: 24. Role
--     PAGE: 20. Charter in Progress
--     PAGE: 32. Calculator
--   Manifest End
--   Version:         18.1.0.00.45
--   Instance ID:     61930891962732
--

-- C O M P O N E N T    E X P O R T
begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(93080832080489071)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22209696849487934)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Quotes'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21,31'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93134461057489179)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93371585996852290)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Contracts'
,p_list_item_link_target=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-breadcrumb'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'104,107,105,20,39,32'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93145530698022269)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Document Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-arrow-up'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,11,12,13,14,15,27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93521113082332745)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'General Declaration'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'111,110'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93363420439783896)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3,4,6,19,26,28,29,33,34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19013928003539402)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23093913085021477)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Actives Charters'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(19013928003539402)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23093453401018611)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Annual reports'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_api.id(19013928003539402)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23100095373228960)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'RFQ Vs Contract Vs Package / Aircraft'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(19013928003539402)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23143941141441233)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Annual Revenue/Aircraft'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(19013928003539402)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23246247991860283)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(19013928003539402)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
end;
/
prompt --application/pages/delete_00104
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>104);
end;
/
prompt --application/pages/page_00104
begin
wwv_flow_api.create_page(
 p_id=>104
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Charter Contract Report'
,p_step_title=>'Charter Contract Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Footer {',
'visibility:hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181212145724'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37008905899918935)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93165153852132593)
,p_plug_name=>'Charter Contracts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    CONTRACT_SEQ,',
'          CONTRACT_NUM,',
'          CONTRACT_TYPE,',
'          CUSTOMER_NAME,',
'          AIRCRAFT_TYPE,',
'          grand_total,',
'          CONTRACT_DATE,',
'          EXPIRY_DATE,',
'          CREATED,',
'          CUSTOMER_CONTACT,',
'          CUSTOMER_PHONE,',
'          STATUS_ID,',
'          case when exists(select status_seq',
'                           from chr_wrkflw_sts a,',
'                                chr_system_flw b',
'                          where a.wrkflw_seq = b.id',
'                            and b.key_value  = ''PRE-CHARTER''',
'                            and exists (',
'                                      select 1',
'                                      from dual ',
'                                      where  WIZARD_STATUS || '':''  like ''%:''||  status_seq  || '':%''',
'                                      )) then ',
'                    ''<a href =''||APEX_PAGE.GET_URL (',
'                          p_page   => 20,',
'                          p_items  => ''APP_CHARTER,P105_CONTRACT_SEQ,APP20_LAST_PAGE,APP_SYS_WRK_SEQ,APP20_BREADCRUM_TITLE,APP_PREVIEW_TITLE'',',
'                          p_clear_cache => 20,',
'                          p_values => ''''||CONTRACT_SEQ||'',''||CONTRACT_SEQ||'',104,''|| pkg_workflow.get_sys_workflow_seq(''CHARTER-PKG'') ||'',Charter Package,Preview The package''',
'                                )|| ''> View package</a>''',
'',
'                   else null ',
'                   end package_url,',
'                       ''<a href =''||APEX_PAGE.GET_URL (',
'                          p_page   => 39,',
'                          p_items  => ''APP_CHARTER,P105_CONTRACT_SEQ,APP20_LAST_PAGE,APP_SYS_WRK_SEQ,APP20_BREADCRUM_TITLE,APP_PREVIEW_TITLE'',',
'                          p_clear_cache => 39,',
'                          p_values => ''''||CONTRACT_SEQ||'',''||CONTRACT_SEQ||'',104,''|| pkg_workflow.get_sys_workflow_seq(''CHARTER-PKG'') ||'',Charter Package,Preview The package''',
'                                )|| ''> ''|| (select invnum from  ifj.bill_inv_oth@ifj40 where refnum = to_char(CONTRACT_SEQ))||''</a>''',
'               invoice',
'                  ',
'FROM CHR_CONTRACT_MST '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93165540732132594)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>93165540732132594
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93165605151132606)
,p_db_column_name=>'CONTRACT_SEQ'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Contract No'
,p_column_link=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:RP,105:P105_CONTRACT_SEQ:#CONTRACT_SEQ#'
,p_column_linktext=>'#CONTRACT_SEQ#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93165967812132631)
,p_db_column_name=>'CONTRACT_NUM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Contract Num'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93166339146132631)
,p_db_column_name=>'CONTRACT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Contract Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93167180387132632)
,p_db_column_name=>'CONTRACT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Contract Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93167591631132632)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93168374161132632)
,p_db_column_name=>'AIRCRAFT_TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Aircraft Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93168743993132633)
,p_db_column_name=>'GRAND_TOTAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Grand Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93169168573132633)
,p_db_column_name=>'EXPIRY_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93169500263132633)
,p_db_column_name=>'CREATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93172365985132635)
,p_db_column_name=>'CUSTOMER_CONTACT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Customer Contact'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93172780207132636)
,p_db_column_name=>'CUSTOMER_PHONE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Customer Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18905822243237423)
,p_db_column_name=>'PACKAGE_URL'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24014434163161004)
,p_db_column_name=>'INVOICE'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Invoice'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25001676913499928)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(22655118084111255)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93180833879135807)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'931809'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PACKAGE_URL:CONTRACT_SEQ:CONTRACT_TYPE:GRAND_TOTAL:CONTRACT_DATE:AIRCRAFT_TYPE:EXPIRY_DATE:CUSTOMER_NAME:CUSTOMER_CONTACT:CUSTOMER_PHONE:CREATED::INVOICE:STATUS_ID'
,p_sort_column_1=>'CONTRACT_SEQ'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93175909929132638)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93165153852132593)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Contract'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:105:APP_CHARTER:'
,p_icon_css_classes=>'fa-plus'
);
end;
/
prompt --application/pages/delete_00105
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>105);
end;
/
prompt --application/pages/page_00105
begin
wwv_flow_api.create_page(
 p_id=>105
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Charter Contract Form'
,p_step_title=>'Charter Contract Form'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(93085417326489108)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181211162905'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22244760735764034)
,p_plug_name=>'Flights Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P105_CONTRACT_SEQ is not null'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87127845716633919)
,p_plug_name=>'Routing '
,p_region_name=>'routing'
,p_parent_plug_id=>wwv_flow_api.id(22244760735764034)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONTRACT_SEQ,',
'  FLIGHT_SEQ,',
'  FLIGHT_DATE,',
'  FLIGHT_NUM,',
'  FLIGHT_ORG,',
'  STD,',
'  FLIGHT_DST,',
'  STA,',
'  FLIGHT_WGT,',
'  FLIGHT_TYP,',
'  STD_ZULU,',
'  STA_ZULU,',
'  flight_regnum,',
'  block_hour',
'FROM CHR_CONTRACT_FLT where contract_seq = :P105_CONTRACT_SEQ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P105_CONTRACT_SEQ'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22477777402914944)
,p_name=>'BLOCK_HOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BLOCK_HOUR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'PLUGIN_IR.SAEEDHASSANPOUR.MODALLOVIG'
,p_heading=>'Block Hour'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_01=>'CUR_APP_PAGE'
,p_attribute_02=>'9003'
,p_attribute_04=>'UNRESTRICTED'
,p_attribute_05=>'P9003_ORIGIN,P9003_DESTINATION'
,p_attribute_06=>'#FLIGHT_ORG#,#FLIGHT_DST#'
,p_attribute_08=>'A'
,p_attribute_09=>'A'
,p_attribute_11=>'NOT_ENTERABLE'
,p_is_required=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128023211633921)
,p_name=>'CONTRACT_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTRACT_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128108206633922)
,p_name=>'FLIGHT_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128232552633923)
,p_name=>'FLIGHT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Flight Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128325885633924)
,p_name=>'FLIGHT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_NUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Flight No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128431143633925)
,p_name=>'FLIGHT_ORG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_ORG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Origin'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_is_required=>true
,p_max_length=>3
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(93309451160218795)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128597357633926)
,p_name=>'STD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'STD(L)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128609473633927)
,p_name=>'FLIGHT_DST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_DST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Destination'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_is_required=>true
,p_max_length=>3
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(93309451160218795)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128757389633928)
,p_name=>'STA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STA'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'STA(L)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128842828633929)
,p_name=>'FLIGHT_WGT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_WGT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87128926395633930)
,p_name=>'FLIGHT_TYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_TYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Flight Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'PLSQL_FUNCTION_BODY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''FLIGHT-TYPE''',
'  );',
'END;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87129076883633931)
,p_name=>'STD_ZULU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD_ZULU'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'STD(Z)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87129154976633932)
,p_name=>'STA_ZULU'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STA_ZULU'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'STA(Z)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87129232853633933)
,p_name=>'FLIGHT_REGNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLIGHT_REGNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tail #'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'PLSQL_FUNCTION_BODY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''TAIL''',
'  );',
'END;'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_default_type=>'PLSQL_EXPRESSION'
,p_default_expression=>':P105_AIRCRAFT_TAIL'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87129371718633934)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(87129452361633935)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(87127985916633920)
,p_internal_uid=>87127985916633920
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_add_button_label=>'Add Flight Leg'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(93289946651181545)
,p_interactive_grid_id=>wwv_flow_api.id(87127985916633920)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(93290012367181545)
,p_report_id=>wwv_flow_api.id(93289946651181545)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22545032924057840)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(22477777402914944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93290599644181547)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(87128023211633921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93291070593181549)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(87128108206633922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93291549912181551)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(87128232552633923)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.2727279663086
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93292098071181552)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(87128325885633924)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.09090423583984
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93292595668181554)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(87128431143633925)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63.818180084228516
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93293028043181555)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(87128597357633926)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.63636016845703
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93293554921181557)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(87128609473633927)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85.09090423583984
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93294020531181558)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(87128757389633928)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.36363220214844
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93294510951181560)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(87128842828633929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93295010675181561)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(87128926395633930)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93295580756181562)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(87129076883633931)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.7272720336914
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93296035796181564)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(87129154976633932)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132.63636016845703
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93296503878181565)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(87129232853633933)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(93302408938202457)
,p_view_id=>wwv_flow_api.id(93290012367181545)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(87129371718633934)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36528574624196835)
,p_plug_name=>'Dynamic Buttons'
,p_region_name=>'status-btn-reg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  htp.p(''<div style="margin-top:20px;float:left;">'');',
'  for c in',
'  (SELECT',
'    a.REQUEST,',
'    s.STATUS_LBL,',
'    case when s.target_page is null then null ',
'         else APEX_PAGE.GET_URL ( p_page         => target_page,',
'                                  p_clear_cache  => target_page,',
'                                  p_items        => ''APP_SYS_WRK_SEQ'',',
'                                  p_values       => pkg_workflow.get_sys_workflow_seq (''CHARTER-PKG'')',
'                                )',
'         end url ,',
'    s.order_seq,',
'    s.status_des,',
'    a.next_status,',
'   a.email_seq',
'  ',
'   from CHR_WRKFLW_STS s,',
'        CHR_WRKFLW_MST_WIZ_PRO a,',
'        chr_contract_mst b',
'   where  a.next_status       = s.status_seq',
'     and upper(nvl(s.STATUS,''INACTIVE'')) = ''ACTIVE''  ',
'     and s.WRKFLW_SEQ = :P105_WRKFLW_SEQ',
'      and (a.current_status   = :P105_STATUS_ID',
'            or ( b.wizard_status|| '':''  like ''%:''||   a.current_status  || '':%'' and',
'                 pkg_workflow.has_next_status( a.next_status,''CHARTER'') = 0 ',
'                 ',
'                ) ',
'           )',
'      and b.contract_seq= :P105_CONTRACT_SEQ',
'   order by 4 ',
'   ',
'  )',
'  LOOP',
'    if  pkg_workflow.allow_button_display(:app_user,c.next_status,''CHARTER'')=1 THEN',
'      htp.p(''<button onclick="javascript:charter.changeTaskStatus(''''''|| c.REQUEST || '''''',''''''||c.url|| '''''',''''''||c.email_seq || '''''')"  title=''''''||c.status_des||'''''' class="t-Button t-Button--hot t-Button--small dynamic-progress-btn" role="button" type="'
||'button" ><span>''||c.STATUS_LBL||''</span></button>'');',
'    END IF;',
'    ',
'  END LOOP;',
' ',
'  htp.p(''</div>'');',
'   ',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37009638732931051)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87127736712633918)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089818728489112)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93182696438144039)
,p_plug_name=>'Charter Contract Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87127596512633916)
,p_plug_name=>'Customer Details'
,p_parent_plug_id=>wwv_flow_api.id(93182696438144039)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87127645281633917)
,p_plug_name=>'Pricing'
,p_parent_plug_id=>wwv_flow_api.id(93182696438144039)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93183380487144039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&P105_PARENT_PAGE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93183037670144039)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P105_CONTRACT_SEQ'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22244894236764035)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'Calculator'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Calculator'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P105_CONTRACT_SEQ is not null'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_icon_css_classes=>'fa-calculator'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23580583591752538)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'EMAIL_SEFT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Email Seft'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>':P105_CONTRACT_SEQ is not null'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>' u-color-23-bg'
,p_icon_css_classes=>'fa-envelope-arrow-down'
,p_button_cattributes=>'title=''Email me this Contract'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23580604618752539)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'EMAIL_CUSTOMER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_image_alt=>'Email  to Customer'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>':P105_CONTRACT_SEQ is not null'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'u-color-22-bg'
,p_icon_css_classes=>'fa-envelope-arrow-up'
,p_button_cattributes=>'title=''Email this contract to the customer'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93183269161144039)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>':P105_CONTRACT_SEQ is not null and 1=0'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22816051802840923)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'Copy'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_image_alt=>'Copy a contract'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'f?p=&APP_ID.:9004:&SESSION.::&DEBUG.:RP,9004:P9004_DESCOD,P9004_ORGCOD,P9004_CONTRACT_SEQ_TO:&P105_DESCOD.,&P105_ORGCOD.,&P105_CONTRACT_SEQ.'
,p_button_condition=>':P105_CONTRACT_SEQ is not null'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_button_css_classes=>'u-color-17-bg'
,p_icon_css_classes=>'fa-copy'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93183169211144039)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P105_CONTRACT_SEQ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-35-bg'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87129774273633938)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'SHIPMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_image_alt=>'Shipment'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.:RP,106:P106_CHARTER_SEQ:&P105_CONTRACT_SEQ.'
,p_button_condition=>'P105_CONTRACT_SEQ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-8-bg'
,p_icon_css_classes=>'fa-truck'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87127736712633918)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(93122348948489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Contract'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,5::'
,p_button_condition=>'P105_CONTRACT_SEQ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-13-bg'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93586135385646503)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'CHARGES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Charges'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:RP,107:P107_CONTRACT_SEQ:&P105_CONTRACT_SEQ.'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11432872645255701)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(87127736712633918)
,p_button_name=>'ADDINFOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Addition Informations'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22815609206840919)
,p_branch_action=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>':REQUEST = ''DELETE'''
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(93184962929144040)
,p_branch_name=>'Go To Page 105'
,p_branch_action=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>':REQUEST != ''CHANGE_CHARTER_STATUS'''
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18606261576067302)
,p_name=>'P105_WRKFLW_SEQ'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18606387762067303)
,p_name=>'P105_STATUS_IDS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18606691699067306)
,p_name=>'P105_CHARTER_PROCESS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18606717972067307)
,p_name=>'P105_URL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19204622179349519)
,p_name=>'P105_STATUS_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_source=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19318383418336932)
,p_name=>'P105_PRE_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(87127736712633918)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21898647522249501)
,p_name=>'P105_ORGCOD'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Origin'
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
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21898797707249502)
,p_name=>'P105_DESCOD'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Destination'
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
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22016845813071842)
,p_name=>'P105_WIZARD_STATUS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_source=>'WIZARD_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23049827389660315)
,p_name=>'P105_PARENT_PAGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_item_default=>'nvl(:P105_PARENT_PAGE,104)'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(87127845716633919)
,p_name=>'P105_CUSTOM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Customer'
,p_source=>'CUSTOMER_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1000
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93185350424144040)
,p_name=>'P105_CONTRACT_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTRACT_SEQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93185707880144040)
,p_name=>'P105_CONTRACT_NUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTRACT_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93186184271144041)
,p_name=>'P105_CONTRACT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'CONTRACT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''CHARTER-TYPE''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93186536206144041)
,p_name=>'P105_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'CONTRACT_STATUS_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_des, status_seq  ',
'from chr_wrkflw_sts',
'order by 1'))
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93186927979144042)
,p_name=>'P105_CONTRACT_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_source=>'CONTRACT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93187337026144042)
,p_name=>'P105_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select cusname d, cusname v  from IFJ.CUST_M@CGO where cuscod = billcode'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_css_classes=>'customer_name'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93187783016144042)
,p_name=>'P105_CUSTOMER_ADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Address'
,p_source=>'CUSTOMER_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_colspan=>3
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93188106731144042)
,p_name=>'P105_AIRCRAFT_TYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Aircraft Type'
,p_source=>'AIRCRAFT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''AIRCRAFT''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93188575806144042)
,p_name=>'P105_GRAND_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(87127645281633917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grand Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GRAND_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93188971857144043)
,p_name=>'P105_EXPIRY_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expiry Date'
,p_source=>'EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93189360415144043)
,p_name=>'P105_CREATED'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93189734647144043)
,p_name=>'P105_USER_TITLE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_source=>'USER_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93190142620144045)
,p_name=>'P105_CREATED_ON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created On'
,p_source=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93190554946144045)
,p_name=>'P105_CUSTOMER_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'CUSTOMER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93190935190144046)
,p_name=>'P105_AMOUNT_WORDS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(87127645281633917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Words'
,p_source=>'AMOUNT_WORDS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93191384822144046)
,p_name=>'P105_PRICE_CACLULATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(87127645281633917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Caclulation'
,p_source=>'PRICE_CACLULATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''PRICE-CALCULATION''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93191770785144046)
,p_name=>'P105_CURRENCY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(87127645281633917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency'
,p_source=>'CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''CURRENCY''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93192108054144046)
,p_name=>'P105_CUSTOMER_CONTACT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact'
,p_source=>'CUSTOMER_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93192593970144046)
,p_name=>'P105_CUSTOMER_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone'
,p_source=>'CUSTOMER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93192948917144047)
,p_name=>'P105_CUSTOMER_CITY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CUSTOMER_CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93193384305144047)
,p_name=>'P105_CUSTOMER_POSTAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postal'
,p_source=>'CUSTOMER_POSTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93193732102144047)
,p_name=>'P105_CUSTOMER_COUNTRY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'CUSTOMER_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93194191309144047)
,p_name=>'P105_NOTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(87127645281633917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>3
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93194519644144048)
,p_name=>'P105_CUSTOMER_PROVINCE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(87127596512633916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Province'
,p_source=>'CUSTOMER_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93194990104144048)
,p_name=>'P105_AIRCRAFT_TAIL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(93182696438144039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tail'
,p_source=>'AIRCRAFT_TAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''TAIL''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93195374356144048)
,p_name=>'P105_APPLY_TAX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(87127645281633917)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apply Tax'
,p_source=>'APPLY_TAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''YES-NO''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18606581951067305)
,p_computation_sequence=>20
,p_computation_item=>'P105_STATUS_ID'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'  Description : return the initial stage status',
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
'          where WRKFLW_SEQ = :APP_SYS_WRK_SEQ',
'            and status_des =''New Contract''',
'            ;',
'            exception',
'              when  no_data_found then ',
'                 null;',
'       end;',
'      ',
'      return l_status_id;',
'',
'end;'))
,p_compute_when=>':REQUEST in (''CREATE'')'
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18606444286067304)
,p_computation_sequence=>10
,p_computation_item=>'APP_SYS_WRK_SEQ'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id ',
'  from chr_system_flw',
' where upper(key_value) =''PRE-CHARTER''',
' '))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19315357897336902)
,p_computation_sequence=>40
,p_computation_item=>'P105_WRKFLW_SEQ'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_SYS_WRK_SEQ'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22123571116110642)
,p_computation_sequence=>50
,p_computation_item=>'P105_CONTRACT_SEQ'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_CHARTER'
,p_compute_when=>':P105_CONTRACT_SEQ is null'
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23050553066660322)
,p_validation_name=>'end and start date validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:P105_CONTRACT_DATE) > to_date(:P105_EXPIRY_DATE) then ',
'   return ''The contract date must be anterior to the Expiry date'' ;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>':REQUEST in (''SAVE'',''CREATE'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(93186927979144042)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23139207022343441)
,p_validation_name=>'Email validation'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  is_valid boolean  ;',
'begin',
'  is_valid:= regexp_like (:P105_CUSTOMER_EMAIL, ''^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'');',
'  if not is_valid then  ',
'    return ''Please enter a valid email address.'';',
'  end if;',
'end ;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>':REQUEST in (''SAVE'',''CREATE'',''EMAIL_CUSTOMER'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(93190554946144045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22668344115368728)
,p_name=>'calculate'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22244894236764035)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22668426218368729)
,p_event_id=>wwv_flow_api.id(22668344115368728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' app.server_process(''VALIDATE_CALCULATION'');',
' '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22668592981368730)
,p_name=>'Caluclate Block Hours'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.ig-lov-open'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22668639982368731)
,p_event_id=>wwv_flow_api.id(22668592981368730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $pElement = $(this.triggeringElement);',
'',
' app.$rowId = $pElement.closest(''tr'').data(''id'');',
' var ig$ = apex.region("routing").widget();',
'//Fetch the model for the interactive grid',
'  model = ig$.interactiveGrid("getViews","grid").model;',
'//Fetch the record for the particular rowId',
'  record    = model.getRecord(app.$rowId);',
'  v_origin  = model.getValue(record,"FLIGHT_ORG");',
'  v_dest    = model.getValue(record,"FLIGHT_DST");',
'  values = [9003,''P9003_ORIGIN,P9003_DESTINATION'',v_origin+'',''+v_dest,''routing''];',
'  app.server_process(''prepare_url'',values);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22668798181368732)
,p_name=>'dialog close'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#routing'
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22668888305368733)
,p_event_id=>wwv_flow_api.id(22668798181368732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var ig$ = apex.region("routing").widget();',
'//Fetch the model for the interactive grid',
'var  model = ig$.interactiveGrid("getViews","grid").model;',
'//Fetch the record for the particular rowId',
'var record = model.getRecord(app.$rowId);',
'',
'model.setValue(record,"BLOCK_HOUR",(this.data.P9003_BLOCK_HOUR).replace('','',''''));',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22989959214819703)
,p_name=>'getCustomerInformation'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P105_CUSTOMER_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22990010467819704)
,p_event_id=>wwv_flow_api.id(22989959214819703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var customer = $(this.triggeringElement).val();',
'console.log(customer);',
'app.server_process(''GetCustomerInformation'',[customer]);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93196126690144048)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CHR_CONTRACT_MST'
,p_attribute_02=>'CHR_CONTRACT_MST'
,p_attribute_03=>'P105_CONTRACT_SEQ'
,p_attribute_04=>'CONTRACT_SEQ'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18635647013917415)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changeStatus'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'   Description : use to change the task status',
'     date      : 2018-09-12',
'     Author    : Suzy Stephanie',
'',
'*/',
'',
'declare ',
'',
'  l_process varchar2(100) := :P0_CHARTER_PROCESS ;',
'  ',
'begin',
'   ',
'     pkg_workflow.change_status( :P105_CONTRACT_SEQ,',
'                                 l_process,',
'                                 null,',
'                                :P105_STATUS_ID,',
'                                ''CHARTER'',',
'                                :P0_URL,',
'                                :P0_EMAIL_SEQ,',
'                                null)',
'                                 ;',
'  ',
'end ;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CHANGE_CHARTER_STATUS'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Status changed!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22815572901840918)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete Contract'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pkg_charter_contract.delete_contract(:P105_CONTRACT_SEQ);',
'     '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''DELETE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93196974492144049)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CHR_CONTRACT_MST'
,p_attribute_02=>'CHR_CONTRACT_MST'
,p_attribute_03=>'P105_CONTRACT_SEQ'
,p_attribute_04=>'CONTRACT_SEQ'
,p_attribute_09=>'P105_CONTRACT_SEQ'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST in (''SAVE'',''CREATE'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19315564139336904)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete contract information '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'   description : delete all child data for a given contract no',
'         date  : 2018/09/21',
'        Author : suzy stephanie kemayou',
'',
'*/',
'',
'begin',
'',
'   delete ',
'   from chr_package_infos',
'   where contract_seq = :P105_CONTRACT_SEQ',
'   ;',
'   ',
'   delete ',
'    from chr_wrkflw_task_notes',
'   where contract_seq = :P105_CONTRACT_SEQ',
'   ;',
'   ',
'  delete ',
'    from chr_wrkflw_task_history',
'   where contract_seq = :P105_CONTRACT_SEQ',
'   ;',
'   ',
'    delete ',
'    from chr_wrkflw_task_document',
'   where contract_seq = :P105_CONTRACT_SEQ',
'   ;',
'   ',
'  ',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''DELETE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(87129534018633936)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(87127845716633919)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Routing  - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'     case :APEX$ROW_STATUS  ',
'     when ''C'' then  ',
'         INSERT',
'        INTO CHR_CONTRACT_FLT',
'          (',
'            CONTRACT_SEQ,',
'            FLIGHT_SEQ,',
'            FLIGHT_DATE,',
'            FLIGHT_NUM,',
'            FLIGHT_ORG,',
'            STD,',
'            FLIGHT_DST,',
'            STA,',
'            FLIGHT_TYP,',
'            FLIGHT_REGNUM,',
'            BLOCK_HOUR',
'          )',
'          VALUES',
'          (',
'            :P105_CONTRACT_SEQ,',
'            CHARTERFLT_SEQ.NEXTVAL,',
'            :flight_date,',
'            :flight_num,',
'            :flight_org,',
'            to_date(:STD,''DD-MON-YYYY HH24:MI''), ',
'            :flight_dst,',
'            to_date(:STA,''DD-MON-YYYY HH24:MI''),',
'            :flight_typ,',
'            :flight_regnum,',
'            :BLOCK_HOUR',
'          )',
'         returning FLIGHT_SEQ into :FLIGHT_SEQ;  ',
'     when ''U'' then  ',
'         update CHR_CONTRACT_FLT  ',
'            set FLIGHT_DATE = :FLIGHT_DATE,',
'            FLIGHT_NUM = :FLIGHT_NUM,',
'            FLIGHT_ORG = :FLIGHT_ORG,',
'            STD = to_date(:STD,''DD-MON-YYYY HH24:MI''),',
'            FLIGHT_DST = :FLIGHT_DST,',
'            STA = to_date(:STA,''DD-MON-YYYY HH24:MI''),',
'            FLIGHT_TYP = :FLIGHT_TYP,',
'            FLIGHT_REGNUM = :FLIGHT_REGNUM,',
'            BLOCK_HOUR    = :BLOCK_HOUR',
'          where FLIGHT_SEQ  = :FLIGHT_SEQ;  ',
'     when ''D'' then  ',
'         delete CHR_CONTRACT_FLT  ',
'         where FLIGHT_SEQ = :FLIGHT_SEQ;  ',
'     end case;  ',
'end;  '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23580747883752540)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EMAIL_SEFT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_url           varchar2(1000);',
'  l_address_to    varchar2(255);',
'  l_address_from  varchar2(255);',
'  l_subject       varchar2(255);',
'  l_message       varchar2(255);',
'  ',
'begin',
'       PKG_CR.spr_charter_contract(168634,:P105_CONTRACT_SEQ,null,true,:SESSION,''no'');',
'       --  pkg_reports.charter_contract_pdf(168634,:P105_CONTRACT_SEQ  ,null ,true , 1 );',
'      ',
'      l_address_to :=:P105_CUSTOMER_EMAIL;',
'      l_address_from :=''no-reply@cargojet.com'';',
'      l_subject := ''Charter Contract -'' || :P105_CONTRACT_SEQ;',
'      l_message := ''Please see attach to this mail the charter contract'' ;',
'       pkg_sendemail.sendemail(  l_address_from,',
'                                 l_address_to,',
'                                 l_subject,',
'                                 l_message ,',
'                                     :SESSION, --attachment1',
'                                     null, --attachment2',
'                                     null,',
'                                     null',
'                                     );',
'      ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST =''EMAIL_SEFT'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Email has been sent to you.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23580854506752541)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EMAIL_CUSTOMER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_url           varchar2(1000);',
'  l_address_to    varchar2(255);',
'  l_address_from  varchar2(255);',
'  l_subject       varchar2(255);',
'  l_message       varchar2(255);',
'  ',
'begin',
'       PKG_CR.spr_charter_contract(168634,:P105_CONTRACT_SEQ,null,true,:SESSION,''no'');',
'       --  pkg_reports.charter_contract_pdf(168634,:P105_CONTRACT_SEQ  ,null ,true , 1 );',
'       ',
'       if :P105_CUSTOMER_EMAIL is null then ',
'          --raise_application_error(-20001,''Please enter a customer email address'');',
'           apex_error.add_error(  p_message => ''Please enter a customer email address.''',
'                                , p_display_location => apex_error.c_inline_with_field',
'                                , p_page_item_name => ''P105_CUSTOMER_EMAIL''',
'                               );',
'      else ',
'       ',
'          l_address_to :=:P105_CUSTOMER_EMAIL;',
'          l_address_from :=''no-reply@cargojet.com'';',
'          l_subject := ''Charter Contract -'' || :P105_CONTRACT_SEQ;',
'          l_message := ''Please see attach to this mail the charter contract'' ;',
'           pkg_sendemail.sendemail(  l_address_from,',
'                                     l_address_to,',
'                                     l_subject,',
'                                     l_message ,',
'                                         :SESSION, --attachment1',
'                                         null, --attachment2',
'                                         null,',
'                                         null',
'                                         );',
'      end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST =''EMAIL_CUSTOMER'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Email has been sent to the customer.'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93197304673144049)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(93183269161144039)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22668293502368727)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDATE_CALCULATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    l_vc_airports   apex_application_global.vc_arr2 ;  ',
'    l_result   varchar2(255);',
'    l_sucess boolean :=true;',
'begin',
'',
'    l_vc_airports := pkg_contract_mgt.get_airports (:P105_CONTRACT_SEQ);',
'    if l_vc_airports.count = 0 then ',
'              l_result := ''Please set up the routing flight before performing this action.'' ;',
'              l_sucess := false;',
'    else ',
'             l_result := APEX_PAGE.GET_URL ( p_page         => 32,',
'                                  p_clear_cache  => 32,',
'                                  p_items        => ''P32_CONTRACT_SEQ'',',
'                                  p_values       => :P105_CONTRACT_SEQ',
'                                );',
'    end if;',
'  ',
'    apex_json.open_object;        ',
'     apex_json.write(''success'', l_sucess);    ',
'     apex_json.write(''result'', l_result); ',
'     apex_json.close_object; ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/delete_00031
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>31);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Request For Quote'
,p_step_title=>'Request For Quote'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($(''.is-aggregate'').find(''td:first'')[1] != undefined )',
'    $(''.is-aggregate'').find(''td:first'')[1].append(''Total'');'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Button+.t-Button {',
'    margin-left: 0px!important;',
'}'))
,p_step_template=>wwv_flow_api.id(93085417326489108)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181211153411'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22120402377110611)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089818728489112)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22122169053110628)
,p_plug_name=>'RFQ Document'
,p_region_name=>'wrk_attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P9002_FILE'',id)||''">''||apex_escape.html(doc_name)||''</a>'' doc_name,',
'   ',
'    apex_util.filesize_mask(dbms_lob.getlength(document)) f_len,',
'    case when instr(upper(doc_name),''.PPT'') > 0or instr(upper(doc_name),''.PPTX'') > 0 then',
'        ''fa fa fa-file-powerpoint-o''',
'    when instr(upper(doc_name),''.XLS'') > 0 or instr(upper(doc_name),''.XLSX'') > 0 then',
'        ''fa fa fa-file-excel-o''',
'    when instr(upper(doc_name),''.DOC'') > 0 or instr(upper(doc_name),''.DOCX'') > 0 then',
'        ''fa fa fa-file-word-o''',
'    when instr(upper(doc_name),''.PDF'') > 0 then',
'        ''fa fa fa-file-pdf-o''',
'    when instr(upper(doc_name),''.GIF'') > 0 or',
'         instr(upper(doc_name),''.PNG'') > 0 or',
'         instr(upper(doc_name),''.TIFF'') > 0 or',
'         instr(upper(doc_name),''.JPG'') > 0 then',
'        ''fa fa fa-file-image-o''',
'    else',
'        ''fa fa fa-file-o''',
'    end file_type,',
'    case when instr(upper(doc_name),''.PPT'') > 0or instr(upper(doc_name),''.PPTX'') > 0 then',
'        ''MS Powerpoint File''',
'    when instr(upper(doc_name),''.XLS'') > 0 or instr(upper(doc_name),''.XLSX'') > 0 then',
'        ''MS Excel File''',
'    when instr(upper(doc_name),''.DOC'') > 0 or instr(upper(doc_name),''.DOCX'') > 0 then',
'        ''MS Word File''',
'    when instr(upper(doc_name),''.PDF'') > 0 then',
'        ''Adobe PDF File''',
'    when instr(upper(doc_name),''.GIF'') > 0 or',
'         instr(upper(doc_name),''.PNG'') > 0 or',
'         instr(upper(doc_name),''.TIFF'') > 0 or',
'         instr(upper(doc_name),''.JPG'') > 0 then',
'        ''Image File''',
'    else',
'        ''Text File''',
'    end file_type_title,',
'    created,',
'	doc_comment,',
'    lower(created_by) created_by',
'from chr_wrkflw_task_document f',
'where rfq_id  = :P31_ID',
'order by created desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23866994935920307)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Document Found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>23866994935920307
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867007160920308)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867124783920309)
,p_db_column_name=>'DOC_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doc Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867259952920310)
,p_db_column_name=>'F_LEN'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'F Len'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867390185920311)
,p_db_column_name=>'FILE_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'File Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867477940920312)
,p_db_column_name=>'FILE_TYPE_TITLE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'File Type Title'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867518000920313)
,p_db_column_name=>'CREATED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867675699920314)
,p_db_column_name=>'DOC_COMMENT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Doc Comment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23867702716920315)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23909404334596942)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239095'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOC_NAME:CREATED:CREATED_BY:DOC_COMMENT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22123021303110637)
,p_plug_name=>'Shipment Details '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22120590172110612)
,p_plug_name=>'Shipment Details '
,p_parent_plug_id=>wwv_flow_api.id(22123021303110637)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'        rfq_id,',
'       item_description,',
'       nbr_pallets,',
'       weight,',
'       volume',
'from chr_shipment_detail',
'where rfq_id = :P31_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22120797089110614)
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
 p_id=>wwv_flow_api.id(22120813671110615)
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
,p_default_type=>'PLSQL_EXPRESSION'
,p_default_expression=>':P31_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22120983984110616)
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
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22121007442110617)
,p_name=>'NBR_PALLETS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NBR_PALLETS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No. of Pallets'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(22121167982110618)
,p_name=>'WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WEIGHT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Weight(Kg)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(22121213538110619)
,p_name=>'VOLUME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOLUME'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Volume(M3)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(22121751486110624)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22121817284110625)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(22120680023110613)
,p_internal_uid=>22120680023110613
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(22170246160221471)
,p_interactive_grid_id=>wwv_flow_api.id(22120680023110613)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(22170373328221471)
,p_report_id=>wwv_flow_api.id(22170246160221471)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22170864019221472)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(22120797089110614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22171385171221474)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(22120813671110615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22171893829221475)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22120983984110616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22172325008221477)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(22121007442110617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22172839302221478)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(22121167982110618)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22173328950221480)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(22121213538110619)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22176555519224937)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(22121751486110624)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(90669000000)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(22121007442110617)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(161142007276)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(22121167982110618)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(237922013457)
,p_view_id=>wwv_flow_api.id(22170373328221471)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(22121213538110619)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22133849381159720)
,p_plug_name=>'Quote Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22149071084159747)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23300242281549141)
,p_plug_name=>'Quotes status'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ',
'       i.arpcod Airport,',
'       t.group_name originator,',
'       t.dep_id Actionned_by ,',
'       pkg_workflow.get_status_item_value(null,:P31_ID,t.group_id,i.arpcod) status,',
'       i.created,',
'       i.created_by,',
'       ( select LISTAGG(notes || '' - '' || created, ''<br> '')',
'         WITHIN GROUP (ORDER BY created) ',
'       from chr_wrkflw_task_notes ',
'       where rfq_id = :P31_ID',
'        and group_id = t.group_id ',
'        and arpcod   = i.arpcod',
'       ) notes',
'       ,',
'       case when pkg_workflow.is_task_completed (null,i.rfq_id,t.group_id,i.arpcod)=1 then ',
'                                           '' <span class="fa fa-check completed">'' ',
'                                           end quote_status',
'from ',
'      chr_package_infos i,',
'      chr_task_itm itm,',
'      chr_task_grp t',
'where i.rfq_id      = :P31_ID',
'  and i.item_id     = itm.item_id',
'  and itm.group_id  = t.group_id ',
'  order by  i.created'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23301129062549150)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Status Found.'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>23301129062549150
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23576848275752501)
,p_db_column_name=>'AIRPORT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Airport'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23576930385752502)
,p_db_column_name=>'ORIGINATOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Originator'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23577012137752503)
,p_db_column_name=>'ACTIONNED_BY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Actionned By'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(93437197970965069)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23577172122752504)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(17806067001966803)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23577282144752505)
,p_db_column_name=>'CREATED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23577340769752506)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23577432707752507)
,p_db_column_name=>'NOTES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25001511944499927)
,p_db_column_name=>'QUOTE_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Complete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23585127057752734)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'235852'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AIRPORT:ORIGINATOR:ACTIONNED_BY:STATUS:CREATED:CREATED_BY:NOTES:QUOTE_STATUS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58733014241848277)
,p_plug_name=>'Dynamic Buttons'
,p_region_name=>'status-btn-reg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   htp.p(''<div style="margin-top:20px;float:left;">'');',
'  -- button to view the contract once generated',
'   for i in (select contract_seq, ',
'             apex_page.get_url (',
'                   p_page        => 105,',
'                   p_clear_cache => 105,',
'                   p_items       => ''P105_CONTRACT_SEQ,P105_PARENT_PAGE'',',
'                   p_values      =>  contract_seq||'',''||31',
'                ) url',
'             from chr_contract_mst c where c.rfq_id = :P31_ID) loop',
'      htp.p(''<button onclick="javascript:apex.navigation.redirect(''''''||i.url||'''''')" class="t-Button t-Button--hot t-Button--small dynamic-progress-btn" role="button" type="button" ><span> View contract - ''||i.contract_seq||''</span></button>'');',
'   end loop;',
'  ',
'  ',
'  -- charter button status',
' ',
'  for c in',
'  (SELECT',
'    a.REQUEST,',
'    s.STATUS_LBL,',
'    case when s.target_page is null then null ',
'         else APEX_PAGE.GET_URL ( p_page         => target_page,',
'                                  p_clear_cache  => target_page,',
'                                  p_items        => ''APP_SYS_WRK_SEQ'',',
'                                  p_values       => pkg_workflow.get_sys_workflow_seq (''PRE-CHARTER'')',
'                                )',
'         end url ,',
'    s.order_seq,',
'    s.status_des,',
'    a.next_status,',
'   a.email_seq',
'  ',
'   from CHR_WRKFLW_STS s,',
'        CHR_WRKFLW_MST_WIZ_PRO a,',
'        chr_contract_rfq b',
'   where  a.next_status       = s.status_seq',
'     and upper(nvl(s.STATUS,''INACTIVE'')) = ''ACTIVE''  ',
'     and s.WRKFLW_SEQ = :APP_SYS_WRK_SEQ',
'      and ((a.current_status    = :P31_RFQ_STATUS and not exists (select 1 from chr_contract_mst c where c.rfq_id = :P31_ID) ) -- Display  all next status ',
'            or  ( b.wizard_status|| '':''  like ''%:''||   a.current_status  || '':%'' and --status already used',
'                  pkg_workflow.has_next_status( a.next_status,''CHARTER'') = 0 -- display next status with no next status',
'                 and  exists (select 1 from chr_contract_mst c where c.rfq_id = b.id) ) -- or Display all wizard status (button moving between wizard ',
'              ',
'         )',
'    and b.id = :P31_ID',
'   order by 4 ',
'   ',
'  )',
'  LOOP',
'    if  pkg_workflow.allow_button_display(:app_user,c.next_status,''CHARTER'')=1 THEN',
'      htp.p(''<button onclick="javascript:charter.changeTaskStatus(''''''|| c.REQUEST || '''''',''''''||c.url|| '''''',''''''||c.email_seq || '''''')"  title=''''''||c.status_des||'''''' class="t-Button t-Button--hot t-Button--small dynamic-progress-btn" role="button" type="'
||'button" ><span>''||c.STATUS_LBL||''</span></button>'');',
'    END IF;',
'    ',
'  END LOOP;',
' htp.p(''</div>'');',
'   ',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P31_ID is not null'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22134394572159720)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22120402377110611)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save RFQ'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22134588626159720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22120402377110611)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22134207951159720)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22120402377110611)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create RFQ'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22122037706110627)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(22120402377110611)
,p_button_name=>'Upload_DOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Upload Document'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9002:&SESSION.::&DEBUG.:RP:P9002_RFQ_ID:&P31_ID.'
,p_button_condition=>':P31_ID is not null'
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22134413028159720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22120402377110611)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Delete RFQ'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22136170090159726)
,p_branch_name=>'Go To Page 31'
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::P31_ID:&P31_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22136501019159726)
,p_name=>'P31_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22136939356159731)
,p_name=>'P31_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22137311378159733)
,p_name=>'P31_RFQ_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'RFQ Date'
,p_source=>'RFQ_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22137706527159733)
,p_name=>'P31_CARGO_READY_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cargo Ready Date'
,p_source=>'CARGO_READY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22138162348159733)
,p_name=>'P31_ORIGIN'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Origin'
,p_source=>'ORGCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'AIRPORT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ARP_CODE || ''-'' || ARP_NAME as d,',
'       ARP_CODE as r',
'  from CHR_AIRPORT_MST',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22138561442159733)
,p_name=>'P31_DESTINATION'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Destination'
,p_source=>'DESCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'AIRPORT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ARP_CODE || ''-'' || ARP_NAME as d,',
'       ARP_CODE as r',
'  from CHR_AIRPORT_MST',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22138947253159733)
,p_name=>'P31_AIRCRAFT_TYPE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Aircraft Type'
,p_source=>'AIRCRAFT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''AIRCRAFT''',
'  );',
'END;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22139326468159734)
,p_name=>'P31_CUSTOMER_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Name'
,p_source=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select cusname d, cusname v from IFJ.CUST_M@CGO where cuscod = billcode'
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>255
,p_tag_css_classes=>'customer_name'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121933916489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22139772197159734)
,p_name=>'P31_CUSTOMER_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Email'
,p_source=>'CUSTOMER_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22140148638159734)
,p_name=>'P31_CUSTOMER_CONTACT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Contact'
,p_source=>'CUSTOMER_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22140564390159739)
,p_name=>'P31_CUSTOMER_PHONE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Phone'
,p_source=>'CUSTOMER_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22140901202159739)
,p_name=>'P31_RFQ_STATUS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_use_cache_before_default=>'NO'
,p_prompt=>'RFQ Status'
,p_source=>'RFQ_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_des,status_seq',
'from chr_wrkflw_sts'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22990207111819706)
,p_name=>'P31_CUSTOMER_ADDRESS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22990348155819707)
,p_name=>'P31_CUSTOMER_PROVINCE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22990409998819708)
,p_name=>'P31_CUSTOMER_POSTAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22990577527819709)
,p_name=>'P31_CUSTOMER_CITY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22990627860819710)
,p_name=>'P31_CUSTOMER_COUNTRY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(22133849381159720)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22205072484657093)
,p_computation_sequence=>50
,p_computation_item=>'P31_RFQ_STATUS'
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
'          where WRKFLW_SEQ = :APP_SYS_WRK_SEQ',
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
,p_compute_when=>':P31_RFQ_STATUS is null'
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22204795920654384)
,p_computation_sequence=>50
,p_computation_item=>'APP_SYS_WRK_SEQ'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id ',
'  from chr_system_flw',
' where upper(key_value) =''PRE-CHARTER''',
' '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22147870815159745)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CHR_CONTRACT_RFQ'
,p_attribute_02=>'CHR_CONTRACT_RFQ'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22148286056159745)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CHR_CONTRACT_RFQ'
,p_attribute_02=>'CHR_CONTRACT_RFQ'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P31_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22121962199110626)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22120590172110612)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Shipment Details  - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22123432141110641)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'change RFQ status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  pkg_workflow.change_status (null ,--contract_seq  ',
'                              :P0_CHARTER_PROCESS ,',
'                              null ,--task_group_id ',
'                              :P31_RFQ_STATUS ,',
'                              ''RFQ'',',
'                              :P0_URL  ,',
'                              :P0_EMAIL_SEQ ,',
'                               null, --arpcod ',
'                              :P31_ID',
'                              );',
'',
'',
'',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''CHANGE_CHARTER_STATUS'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22148607735159747)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22134413028159720)
);
end;
/
prompt --application/pages/delete_00021
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>21);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Request for Quote'
,p_step_title=>'Request for Quote'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.in-progress-frq{',
'    background: #b9ac37;',
' ',
'}',
'.approved-rfq{',
'    background: #559a55; ',
'}',
'.rejected-rfq {',
'    background: #ef554a;',
'}',
'.rfq-status {',
'     padding: 6px;',
'    color: white;',
'    border-radius: 5px;',
'    height: 2px;',
'    font-size: 10px;',
'    font-weight: bold;',
'    white-space: nowrap;',
'    height: 25px;',
'    text-align: center;',
'',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181211151216'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22016960310071843)
,p_plug_name=>'Rfq'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       RFQ_DATE,',
'       CARGO_READY_DATE,',
'       a.ORGCOD,',
'       a.DESCOD,',
'       a.AIRCRAFT_TYPE,',
'       a.CUSTOMER_NAME,',
'       a.CUSTOMER_EMAIL,',
'       a.CUSTOMER_CONTACT,',
'       a.CUSTOMER_PHONE,',
'       RFQ_STATUS,',
'       (select contract_seq from chr_contract_mst where rfq_id = a.id)contract_seq ,',
'       case ',
'        when (select contract_seq from chr_contract_mst where rfq_id = a.id) is not null then ',
'          ''<div class="rfq-status approved-rfq">Approved</div>''',
'        when RFQ_DATE +7 < sysdate then ',
'           ''<div class="rfq-status rejected-rfq">Rejected</div>'' ',
'        else',
'          ''<div class="rfq-status in-progress-frq">In Progress</div>'' ',
'          end status,',
'           case ',
'        when (select contract_seq from chr_contract_mst where rfq_id = a.id) is not null then ',
'          ''Approved''',
'        when RFQ_DATE +7 < sysdate then ',
'           ''Rejected'' ',
'        else',
'          ''In Progress'' ',
'          end status_dsp',
'  from CHR_CONTRACT_RFQ a,',
'       chr_contract_mst b',
' where a.id = b.rfq_id(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22017031225071844)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SUZY'
,p_internal_uid=>22017031225071844
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22017173487071845)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Quote No.'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP:P31_ID:#ID#'
,p_column_linktext=>'#ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22017342889071847)
,p_db_column_name=>'CARGO_READY_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cargo Ready Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22017698618071850)
,p_db_column_name=>'AIRCRAFT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Aircraft Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22119495379110601)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22119584729110602)
,p_db_column_name=>'CUSTOMER_EMAIL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Customer Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22119639366110603)
,p_db_column_name=>'CUSTOMER_CONTACT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Customer Contact'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22119864280110605)
,p_db_column_name=>'RFQ_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'RFQ Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(22655118084111255)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22123316292110640)
,p_db_column_name=>'RFQ_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'RFQ Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22123787819110644)
,p_db_column_name=>'CONTRACT_SEQ'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Contract No.'
,p_column_link=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:RP,105:P105_CONTRACT_SEQ,P105_PARENT_PAGE:#CONTRACT_SEQ#,21'
,p_column_linktext=>'#CONTRACT_SEQ#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22123995623110646)
,p_db_column_name=>'ORGCOD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Origin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22124090613110647)
,p_db_column_name=>'DESCOD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23871231238920350)
,p_db_column_name=>'CUSTOMER_PHONE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Customer Phone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24014105591161001)
,p_db_column_name=>'STATUS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24014214209161002)
,p_db_column_name=>'STATUS_DSP'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Status'
,p_column_html_expression=>'#STATUS#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22129439471112591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CONTRACT_SEQ:RFQ_DATE:CARGO_READY_DATE:AIRCRAFT_TYPE:CUSTOMER_NAME:CUSTOMER_EMAIL:CUSTOMER_CONTACT:ORGCOD:DESCOD:STATUS_DSP:'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22118704489544969)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22120313778110610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22118704489544969)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Quote'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,31::'
);
end;
/
prompt --application/pages/delete_00024
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>24);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Role'
,p_step_title=>'Role'
,p_step_sub_title=>'User Role'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181210201111'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18535114746478682)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18535739676478683)
,p_plug_name=>'Role'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from chr_wrkflw_rol'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18460730688013634)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18460837138013635)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18536947710478687)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18537555120478688)
,p_name=>'ROLE_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18538148428478688)
,p_name=>'ROLE_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Role Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(18536208999478684)
,p_internal_uid=>18536208999478684
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(18536634711478687)
,p_interactive_grid_id=>wwv_flow_api.id(18536208999478684)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(18536701983478687)
,p_report_id=>wwv_flow_api.id(18536634711478687)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18537377206478688)
,p_view_id=>wwv_flow_api.id(18536701983478687)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(18536947710478687)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18537929948478688)
,p_view_id=>wwv_flow_api.id(18536701983478687)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(18537555120478688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18538512899478688)
,p_view_id=>wwv_flow_api.id(18536701983478687)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(18538148428478688)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>1029.2726821899414
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18548830833736018)
,p_view_id=>wwv_flow_api.id(18536701983478687)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(18460730688013634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18461014301013637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18535114746478682)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18460949515013636)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(18535739676478683)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'User Role - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/delete_00020
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>20);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Charter in Progress'
,p_step_title=>'Charter in Progress'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'task.init();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uncompleted-border {',
'   border :1px solid red;',
'}',
'',
'@media only screen and (min-width: 641px) {',
'    .t-Body-side {',
'        width: 270px!important;',
'    }',
'}',
'',
'',
'@media only screen and (min-width: 993px){',
'    :not(.u-RTL) .apex-side-nav.js-navExpanded.t-PageBody--showLeft .t-Body-content {',
'        margin-left: 470px!important;',
'    }',
'}',
'.t-Button+.t-Button {',
'    margin-left: 0px!important;',
'}',
'',
'.a-IRR-table td {',
'    padding: 4px 8px;',
'    color: #404040;',
'    transition: background-color .1s;',
'     border-left: 0px !important; ',
'      border-top: 0px !important; ',
'}',
'',
'.a-IRR {',
'    border-radius: 2px;',
'    overflow: hidden;',
'    font-size: 1.4rem!important; ',
'    line-height: 1.5rem;',
'}',
'',
'',
'',
'',
'',
'',
'.flex-wrapper {',
'  display: flex;',
'  flex-flow: row nowrap;',
'}',
'',
'.single-chart {',
'  width: 33%;',
'  justify-content: space-around ;',
'}',
'',
'.circular-chart {',
'  display: block;',
'  margin: 10px auto;',
'  max-width: 80%;',
'  max-height: 250px;',
'}',
'',
'.circle-bg {',
'  fill: none;',
'  stroke: #eee;',
'  stroke-width: 3.8;',
'}',
'',
'.circle {',
'  fill: none;',
'  stroke-width: 2.8;',
'  stroke-linecap: round;',
'  animation: progress 1s ease-out forwards;',
'}',
'',
'@keyframes progress {',
'  0% {',
'    stroke-dasharray: 0 100;',
'  }',
'}',
'',
'.circular-chart.orange .circle {',
'  stroke: #ff9f00;',
'}',
'',
'.circular-chart.green .circle {',
'  stroke: #4CC790;',
'}',
'',
'.circular-chart.blue .circle {',
'  stroke: #3c9ee5;',
'}',
'',
'.percentage {',
'  fill: #666;',
'  font-family: sans-serif;',
'  font-size: 0.5em;',
'  text-anchor: middle;',
'}',
'',
'.single-chart {',
'    width: 100%!important;',
'    justify-content: space-around;',
'}',
'',
'.circular-chart.orange .circle {',
'    stroke: #4CAF50!important;',
'}'))
,p_step_template=>wwv_flow_api.id(93081856664489104)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181210200704'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433178228255704)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP20_LAST_PAGE != 31'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11474202394552363)
,p_plug_name=>'main region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433200883255705)
,p_plug_name=>'Department'
,p_parent_plug_id=>wwv_flow_api.id(11474202394552363)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(93102660179489119)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<br><br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433339324255706)
,p_plug_name=>'Airport Operations'
,p_parent_plug_id=>wwv_flow_api.id(11433200883255705)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433783417255710)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(11433339324255706)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_id,',
'       dep_id,',
'        group_name,',
'        group_condition,',
'        status,',
'        wrkflw_status,',
'       ''y'' complete',
'from chr_task_grp',
'where dep_id = 1',
'and wrkflw_status =''PRE_CHARTER'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11433968111255712)
,p_name=>'GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GROUP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Group Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(11434066379255713)
,p_name=>'DEP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>' '
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,9000:P23_GROUP_ID,P23_TASK_NAME:&GROUP_ID.,&GROUP_NAME.'
,p_link_text=>'Edit'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11434143894255714)
,p_name=>'GROUP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GROUP_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Task Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11434276345255715)
,p_name=>'GROUP_CONDITION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GROUP_CONDITION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Group Condition'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11434307989255716)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11434424330255717)
,p_name=>'WRKFLW_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WRKFLW_STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Wrkflw Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11435694876255729)
,p_name=>'COMPLETE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLETE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_CHECKBOX'
,p_heading=>'Complete'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'1'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:;y'
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(11433844460255711)
,p_internal_uid=>11433844460255711
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(11491746461675752)
,p_interactive_grid_id=>wwv_flow_api.id(11433844460255711)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(11491840396675752)
,p_report_id=>wwv_flow_api.id(11491746461675752)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11492390881675755)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(11433968111255712)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11492815851675759)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(11434066379255713)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11493345734675762)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(11434143894255714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11493866622675763)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(11434276345255715)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11494359054675771)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(11434307989255716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11494853260675772)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(11434424330255717)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11511443011167164)
,p_view_id=>wwv_flow_api.id(11491840396675752)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(11435694876255729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433482968255707)
,p_plug_name=>'CMC'
,p_parent_plug_id=>wwv_flow_api.id(11433200883255705)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433528226255708)
,p_plug_name=>'Crew Management'
,p_parent_plug_id=>wwv_flow_api.id(11433200883255705)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11433656496255709)
,p_plug_name=>'Despatch'
,p_parent_plug_id=>wwv_flow_api.id(11433200883255705)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18904730953237412)
,p_plug_name=>'Task Description'
,p_region_name=>'task_frm_infos'
,p_parent_plug_id=>wwv_flow_api.id(11474202394552363)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P20_TASK_GROUP_ID is not null'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30470534469612118)
,p_plug_name=>'Editing Task'
,p_region_name=>'items_ir_data'
,p_parent_plug_id=>wwv_flow_api.id(11474202394552363)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089401129489112)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  item_name || '' '' ||  apex_item.hidden (1, (case when b.id is null then ''INSERT'' else ''UPDATE'' end),''class="chr_package_infos_act" '')   item_name,',
'        a.item_id,',
'        case',
'            when   upper(a.item_name) =''STATUS'' then ',
'               apex_item.SELECT_LIST_FROM_QUERY(8,',
'                                               (case when b.id is null  then (select id  from chr_wrkflw_task_status where task_group_id = :P20_TASK_GROUP_ID and order_seq= 1) else to_number(b.item_value) end),',
'                                               ''select status_name, id  ',
'                                                from chr_wrkflw_task_status ',
'                                                where '''':''''||task_group_id||'''':'''' like ''''%:''||:P20_TASK_GROUP_ID||'':%''''',
'                                              ',
'                                               '' ,',
'                                                ''class=" item_status_id task-item-select"  disabled  item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type,',
'                                                ''YES'',',
'                                                 null,',
'                                                ''-- Choose --''',
'                                               ) ',
'            when  upper(a.item_type) in (''STRING'',''VARCHAR'')   then ',
'              apex_item.text(2,b.item_value,15,15,''class="updatable-tk" item_id="''||a.item_id || ''"  item_value_require=''||a.item_condition || ''  item_type=''||a.item_type)',
'            when  upper(a.item_type) in (''NUMBER'') then ',
'              apex_item.text(2,b.item_value,15,15,''class="updatable-tk number" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type)',
'            when upper(a.item_type) = ''DATE'' then ',
'                apex_item.DATE_POPUP2(1,nvl(b.item_value,upper(sysdate)),''DD-MON-YYYY'',12,12,''class="updatable-tk task-item-date" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type)',
'             when  upper(a.item_type) = ''TEXTAREA'' then ',
'                apex_item.textarea(6,b.item_value,10,100,''class="updatable-tk" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type)',
'             when  upper(a.item_type) = ''CHECKBOX'' then ',
'               (select ',
'                 LISTAGG ( ONETIME_DESC ||'' '' || apex_item.checkbox2(7,',
'                                      onetime_value,',
'                                     ''class="item-type-ck" item_value ="''|| onetime_value || ''" '' ||',
'                                       ( case when '':''||b.item_value || '':''  like ''%:'' || onetime_value|| '':%'' then  ''checked'' end )',
'                                    ',
'                                    ), ''<br>'') WITHIN GROUP (ORDER BY 1)',
'                from chr_onetime_mst ',
'                  where upper(ONETIME_TYPE)= upper(master_type)',
'                ) || '' '' || apex_item.hidden(7,null,''class="updatable-tk" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type)',
'             when  upper(a.item_type) = ''RADIO'' then ',
'               (select ',
'                 LISTAGG ( ONETIME_DESC ||'' '' || apex_item.radiogroup(8,',
'                                      onetime_value,',
'                                     null,',
'                                    null,',
'                                    ''class="item-type-rdg" item_value =''|| onetime_value || '' '' || ( case when '':''||b.item_value || '':''  like ''%:'' || onetime_value|| '':%'' then  ''checked'' end  ) ',
'                                    ), ''<br>'') WITHIN GROUP (ORDER BY 1)',
'                from chr_onetime_mst ',
'                  where upper(ONETIME_TYPE)= upper(master_type)',
'                ) || '' '' || apex_item.hidden(7,null,''class="updatable-tk" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type)',
'             ',
'             when  upper(item_type) = ''LOV''  then ',
'                 apex_item.SELECT_LIST_FROM_QUERY(9,',
'                                                b.item_value,',
'                                                pkg_utils.get_lov(a.master_type) ,',
'                                                ''class="updatable-tk task-item-select" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type,',
'                                                ''YES'',',
'                                                  null,',
'                                                 ''-- Choose --''',
'                                                 )',
'            ',
'            when  upper(item_type) = ''POPUP_LOV''  then ',
'                 apex_item.POPUP_FROM_QUERY(9,',
'                                                b.item_value,',
'                                                pkg_utils.get_lov(a.master_type) ,NULL,NULL,NULL,NULL,NULL,',
'                                                ''class="updatable-tk task-item-select" item_id="''||a.item_id  || ''" item_value_require=''||a.item_condition || ''  item_type=''||a.item_type',
'                                                ',
'                                                 )',
'         end value  ,',
'         SEQUENCE,',
'         item_condition',
'        ',
'from chr_task_itm a,',
'     chr_package_infos b',
'where a.group_id        = :P20_TASK_GROUP_ID',
'  and (b.CONTRACT_SEQ   = :APP_CHARTER or b.rfq_id = :P20_RFQ_ID)',
'  and b.item_id(+)      = a.item_id',
'  and b.arpcod          = :P20_ARPCOD',
'order by a.sequence ASC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(30470655380612118)
,p_name=>'Editing Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'&P20_MSG.'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>30470655380612118
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18952191988593510)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Item Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
,p_static_id=>'ITEM_NAME '
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18952576668593511)
,p_db_column_name=>'ITEM_ID'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Item Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18952988283593512)
,p_db_column_name=>'VALUE'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Value'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
,p_static_id=>'VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18908382788237448)
,p_db_column_name=>'SEQUENCE'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19319573073336944)
,p_db_column_name=>'ITEM_CONDITION'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Item Condition'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30471857064612582)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'189533'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEM_NAME:ITEM_ID:VALUE:SEQUENCE:ITEM_CONDITION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19317113332336920)
,p_plug_name=>'chart task completion'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(19317293324336921)
,p_region_id=>wwv_flow_api.id(19317113332336920)
,p_chart_type=>'pie'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(19317321899336922)
,p_chart_id=>wwv_flow_api.id(19317293324336921)
,p_seq=>10
,p_name=>'chart task completion'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with total as ',
'      ( select count(*) total ',
'        from (',
'               select count(*) as total, ',
'               b.group_id,',
'               a.arpcod ',
'        from chr_package_infos a,',
'              chr_task_grp b,',
'              chr_task_itm c',
'        where ( a.contract_seq    = :APP_CHARTER or a.rfq_id = :P20_RFQ_ID)',
'        and a.item_id = c.item_id ',
'        and c.group_id = b.group_id',
'        and b.sys_wrkflw_seq = :P20_WRKFLW_SEQ',
'        group by b.group_id,a.arpcod',
'           )',
'        ',
' ),',
' complete as',
'   (   select count(*) completed',
'     from (  select count(*) completed,b.group_id,a.arpcod ',
'               from chr_package_infos a, ',
'                    chr_task_grp b,',
'                    chr_task_itm c',
'              where ( a.contract_seq    = :APP_CHARTER or a.rfq_id = :P20_RFQ_ID)',
'                and a.item_id = c.item_id ',
'                and c.group_id = b.group_id',
'                and b.sys_wrkflw_seq = :P20_WRKFLW_SEQ',
'                and pkg_workflow.is_task_completed (:APP_CHARTER,:P20_RFQ_ID,b.group_id,a.arpcod)=1',
'           group by b.group_id,a.arpcod',
'          )',
' )',
'select round((complete.completed/decode(total.total,0,1,total.total))*100,2) as value,',
'       ''Completed'' lable,',
'       ''#3AC75F'' completion_color',
'from total, complete',
'union  all',
'select round(100 -(complete.completed/decode(total.total,0,1,total.total))*100,2) as value,',
'       ''Running'' lable,',
'       ''red'' completion_color',
'from total, complete'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABLE'
,p_items_short_desc_column_name=>'VALUE'
,p_color=>'&COMPLETION_COLOR.'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_items_label_css_classes=>'color:white;'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22124102233110648)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(22229311050109578)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP20_LAST_PAGE = 31'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23870978248920347)
,p_plug_name=>'Pourcentage of completion - DOTNUT'
,p_region_name=>'dotnut-reg'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style='' margin-left: 5%; margin-top:20px;'''
,p_plug_template=>wwv_flow_api.id(93089401129489112)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="flex-wrapper">',
'  <div class="single-chart">',
'    <svg viewBox="0 0 46 46" class="circular-chart orange">',
'      <path class="circle-bg"',
'        d="M18 2.0845',
'          a 15.9155 15.9155 0 0 1 0 31.831',
'          a 15.9155 15.9155 0 0 1 0 -31.831"',
'      />',
'      <path class="circle"',
'        stroke-dasharray="&P20_COMPLETE_PERCENTAGE., 100"',
'        d="M18 2.0845',
'          a 15.9155 15.9155 0 0 1 0 31.831',
'          a 15.9155 15.9155 0 0 1 0 -31.831"',
'      />',
'      <text x="18" y="20.35" class="percentage">&P20_COMPLETE_PERCENTAGE.%</text>',
'    </svg>',
'  </div>',
' ',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24014312166161003)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089401129489112)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style=''padding:40px;''><span style=''font-size:10px'' class="fa fa-check completed" > Task Completed. </span><br>',
'<span class="fa fa-check uncompleted"  style=''font-size:10px''> Task Uncompleted. </span>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30431750894702163)
,p_name=>'Attachments'
,p_region_name=>'wrk_attachment'
,p_template=>wwv_flow_api.id(93099404070489118)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P9002_FILE'',id)||''">''||apex_escape.html(doc_name)||''</a>'' doc_name,',
'   ',
'    apex_util.filesize_mask(dbms_lob.getlength(document)) f_len,',
'    case when instr(upper(doc_name),''.PPT'') > 0or instr(upper(doc_name),''.PPTX'') > 0 then',
'        ''fa fa fa-file-powerpoint-o''',
'    when instr(upper(doc_name),''.XLS'') > 0 or instr(upper(doc_name),''.XLSX'') > 0 then',
'        ''fa fa fa-file-excel-o''',
'    when instr(upper(doc_name),''.DOC'') > 0 or instr(upper(doc_name),''.DOCX'') > 0 then',
'        ''fa fa fa-file-word-o''',
'    when instr(upper(doc_name),''.PDF'') > 0 then',
'        ''fa fa fa-file-pdf-o''',
'    when instr(upper(doc_name),''.GIF'') > 0 or',
'         instr(upper(doc_name),''.PNG'') > 0 or',
'         instr(upper(doc_name),''.TIFF'') > 0 or',
'         instr(upper(doc_name),''.JPG'') > 0 then',
'        ''fa fa fa-file-image-o''',
'    else',
'        ''fa fa fa-file-o''',
'    end file_type,',
'    case when instr(upper(doc_name),''.PPT'') > 0or instr(upper(doc_name),''.PPTX'') > 0 then',
'        ''MS Powerpoint File''',
'    when instr(upper(doc_name),''.XLS'') > 0 or instr(upper(doc_name),''.XLSX'') > 0 then',
'        ''MS Excel File''',
'    when instr(upper(doc_name),''.DOC'') > 0 or instr(upper(doc_name),''.DOCX'') > 0 then',
'        ''MS Word File''',
'    when instr(upper(doc_name),''.PDF'') > 0 then',
'        ''Adobe PDF File''',
'    when instr(upper(doc_name),''.GIF'') > 0 or',
'         instr(upper(doc_name),''.PNG'') > 0 or',
'         instr(upper(doc_name),''.TIFF'') > 0 or',
'         instr(upper(doc_name),''.JPG'') > 0 then',
'        ''Image File''',
'    else',
'        ''Text File''',
'    end file_type_title,',
'    created,',
'	doc_comment,',
'    lower(created_by) created_by',
'from chr_wrkflw_task_document f',
'where  task_group_id = :P20_TASK_GROUP_ID',
'  and  ( contract_seq    = :APP_CHARTER or rfq_id = :P20_RFQ_ID)',
'  and arpcod =:P20_ARPCOD',
'order by created desc;'))
,p_display_when_condition=>':P20_TASK_GROUP_ID is not null'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(93109417444489123)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No attachment found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18995325786446425)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18997776603446427)
,p_query_column_id=>2
,p_column_alias=>'DOC_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Document Name'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18995778281446426)
,p_query_column_id=>3
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>3
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18996102731446426)
,p_query_column_id=>4
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="#FILE_TYPE#" title="#FILE_TYPE_TITLE#"></span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18996521904446426)
,p_query_column_id=>5
,p_column_alias=>'FILE_TYPE_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18996949398446426)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18998123446446427)
,p_query_column_id=>7
,p_column_alias=>'DOC_COMMENT'
,p_column_display_sequence=>8
,p_column_heading=>'Comment'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18997395154446426)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37574691569758133)
,p_plug_name=>'Pogress Task Actions'
,p_region_name=>'status-btn-reg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'      htp.p(''<div style="margin-top:20px;float:left;">'');',
'      for c in',
'       (',
'           SELECT   a.status_req,',
'                    s.status_name,',
'                    s.order_seq,',
'                    s.description,',
'                    a.next_status_seq,',
'                    a.email_seq',
'',
'             from  chr_wrkflw_task_status s,',
'                   chr_wrkflw_pro a',
'            where  a.next_status_seq           = s.id',
'              and  a.current_status_seq        = :P20_STATUS_ID',
'              and  upper(nvl(s.IS_ACTIVE,''N'')) = ''Y'' ',
'              order by 3',
'        )',
'      loop',
'           if pkg_workflow.allow_button_display(:app_user,c.next_status_seq,''TASK'')=1  THEN',
'               htp.p(''<button onclick="task.changeTaskStatus(''''''|| c.status_req || '''''',''''''||c.email_seq|| '''''');" title = ''''''|| c.description ||'''''' class="t-Button t-Button--hot t-Button--small dynamic-progress-btn" ><span>''||c.status_name||''</span></'
||'button>'');',
'           end if;',
'',
'      end loop;',
'',
'      htp.p(''</div>'');',
'   ',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select 1',
'   from chr_wrkflw_task_status s,',
'        chr_wrkflw_pro a',
'   where   a.next_status_seq       = s.id',
'     and  a.current_status_seq     = :P20_STATUS_ID',
'     and  :P20_SHOW_PROGRESS       = 1'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(55177196617706785)
,p_plug_name=>'<d title=''Action on the Whole packgae'' > Package Actions </d>'
,p_region_name=>'status-btn-reg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'  htp.p(''<div style="margin-top:20px;float:left;">'');',
'  for c in',
'  (SELECT',
'    a.REQUEST,',
'    s.STATUS_LBL,',
'    case when s.target_page is null then null ',
'         else  APEX_PAGE.GET_URL ( p_page         => target_page,',
'                                --  p_clear_cache  => page_id,',
'                                  p_items        => ''APP_SYS_WRK_SEQ'',',
'                                  p_values       =>  (select id',
'                                                        from chr_system_flw b',
'                                                       where b.key_value  = ''POST-CHARTER''',
'                                                      )',
'                                )',
'         end url,',
'    s.order_seq,',
'    s.status_des,',
'    a.next_status,',
'    a.email_seq',
'   ',
'  from CHR_WRKFLW_STS s,',
'       CHR_WRKFLW_MST_WIZ_PRO a,',
'        chr_contract_mst b',
'  where a.next_status        = s.status_seq',
'   -- and s.page_id           = :APP_PAGE_ID ',
'    and s.WRKFLW_SEQ = :P20_WRKFLW_SEQ',
'    and (a.current_status    = :P20_CHARTER_STATUS_ID  -- Display  all next status ',
'            or  ( b.wizard_status|| '':''  like ''%:''||   a.current_status  || '':%'' and --status already used',
'                  pkg_workflow.has_next_status( a.next_status,''CHARTER'') = 0 -- display next status with no next status',
'                  ) -- or Display all wizard status (button moving between wizard ',
'              ',
'         )',
'    and b.contract_seq= :app_charter',
'    and nvl(:P20_IS_MST_WRKFLW_MOVE,1) =1',
'   order by 4 ',
'     ',
'  )',
'  loop',
'  ',
'    if pkg_workflow.allow_button_display(:app_user,c.next_status,''CHARTER'') =1 THEN',
'       htp.p(''<button onclick="charter.changeTaskStatus(''''''|| c.REQUEST || '''''',''''''||c.url|| '''''',''''''||c.email_seq||'''''');" title = ''''''|| c.status_des ||'''''' class="t-Button t-Button--hot t-Button--small dynamic-progress-btn" role="button" type="button" '
||'><span>''||c.STATUS_LBL||''</span></button>'');',
'    end if;',
'    ',
'  end loop;',
' ',
'  htp.p(''</div>'');',
'   ',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from CHR_WRKFLW_STS s,',
'       CHR_WRKFLW_MST_WIZ_PRO a,',
'        chr_contract_mst b',
'  where (s.WRKFLW_SEQ          = :P20_WRKFLW_SEQ ',
'         and nvl(:P20_IS_MST_WRKFLW_MOVE,1) =1)',
'     and  a.next_status       = s.status_seq',
'      and (a.current_status   = :P20_CHARTER_STATUS_ID',
'            or ( b.wizard_status|| '':''  like ''%:''||   a.current_status  || '':%'' and',
'                  pkg_workflow.has_next_status( a.next_status,''CHARTER'') = 0',
'                )',
'           )',
'      and b.contract_seq= :app_charter'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106070763834029808)
,p_plug_name=>'Task List '
,p_region_name=>'DocTree'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with d as (',
'  --Task',
'  select distinct ''G''||t.group_id || p.arpcod  id, ',
'          t.group_name  item, ',
'         ''D''||t.dep_id || p.arpcod  parent, ',
'          null parent_name,',
'         -- ''javascript:task.setTaskGroup(''''''|| g.group_id||'''''',''''G'''')'' as url,',
'          apex_util.prepare_url(''f?p=''||:app_id||'':20:''||:app_session||'':T:::P20_TASK_GROUP_ID,P20_SELECTED_NODE,P20_ARPCOD:''|| t.group_id||'',''|| ''G''||t.group_id || p.arpcod ||'',''|| p.arpcod, p_triggering_element => ''apex.jQuery("#DocTree")'') url, ',
'         case when pkg_workflow.is_task_completed (:app_charter,:P20_RFQ_ID,t.group_id,p.arpcod)=1 then ''fa fa-check completed'' else ''fa fa-check uncompleted'' end  as icon',
'    from  chr_document_dep d,',
'         chr_package_infos p,',
'         chr_task_grp t,',
'         chr_task_itm i,',
'         ( select distinct flight_org arpcod from chr_contract_flt where contract_seq = :APP_CHARTER and :APP_IS_MST_WRKFLW_MOVE is null',
'            union ',
'          select distinct flight_dst arpcod from chr_contract_flt where contract_seq = :APP_CHARTER and :APP_IS_MST_WRKFLW_MOVE is null',
'          union',
'          select ORGCOD from chr_contract_rfq where id = :P20_RFQ_ID and :APP_IS_MST_WRKFLW_MOVE = 0',
'         ',
'         ) c',
'  where   d.dep_id = t.dep_id ',
'    and   t.sys_wrkflw_seq  = :P20_WRKFLW_SEQ -- task for this system workflow',
'    and   p.arpcod          = c.arpcod  ',
'    and   i.item_id         = p.item_id',
'    and   i.group_id        = t.group_id',
'    and  ( p.contract_seq    = :APP_CHARTER or p.rfq_id = :P20_RFQ_ID)',
'    and   exists (select 1',
'                   from chr_wrkflw_task_status st',
'                  where pkg_workflow.allow_button_display(:APP_USER,st.id,''TASK'')=1',
'                   and st.task_group_id = t.group_id',
'                  ) -- display task for which user has authorization',
'   ',
'   --Department',
'  union',
' select distinct ''D''||d.dep_id || p.arpcod   id, ',
'          d.dep_name  , ',
'         ''A'' || p.arpcod    parent ,',
'     --||m.document_seq parent,',
'          null  parent_name,',
'          null url, ',
'          null as icon',
'   from  chr_document_dep d,',
'         chr_package_infos p,',
'         chr_task_grp t,',
'         chr_task_itm i,',
'          ( select distinct flight_org arpcod from chr_contract_flt where contract_seq = :APP_CHARTER and :APP_IS_MST_WRKFLW_MOVE is null',
'            union ',
'            select distinct flight_dst arpcod from chr_contract_flt where contract_seq = :APP_CHARTER and :APP_IS_MST_WRKFLW_MOVE is null',
'            union',
'            select ORGCOD from chr_contract_rfq where id = :P20_RFQ_ID and :APP_IS_MST_WRKFLW_MOVE = 0',
'         ) c',
'  where   d.dep_id = t.dep_id ',
'    and   t.sys_wrkflw_seq  = :P20_WRKFLW_SEQ',
'    and   p.arpcod          = c.arpcod  ',
'    and   i.item_id         = p.item_id',
'    and   i.group_id        = t.group_id',
'    and  ( p.contract_seq    = :APP_CHARTER or p.rfq_id = :P20_RFQ_ID)',
'  union',
'   ',
'   --Airport',
'    select ''A'' || arpcod  id,',
'           arpcod item,',
'           ''R1'' parent ,',
'            null ,',
'           null,',
'           null',
'    from  ( select distinct flight_org arpcod from chr_contract_flt where contract_seq = :APP_CHARTER and :APP_IS_MST_WRKFLW_MOVE is null',
'            union ',
'          select distinct flight_dst arpcod from chr_contract_flt where contract_seq = :APP_CHARTER and :APP_IS_MST_WRKFLW_MOVE is null',
'          union',
'             select ORGCOD from chr_contract_rfq where id = :P20_RFQ_ID and :APP_IS_MST_WRKFLW_MOVE = 0',
'         )',
'     ',
'   union',
'  select ''R1'' id,',
'      --||m.document_seq id,',
'         m.document_name item, ',
'         ''0'' parent, ',
'         '''' parent_name, ',
'         null url,',
'         null as icon',
'  from chr_document_mst m  ',
'  where :APP_IS_MST_WRKFLW_MOVE is null ',
'   union all',
'   select ''R1'' id,',
'        ''Quote Status'' item, ',
'         ''0'' parent, ',
'         '''' parent_name, ',
'         null url,',
'         null as icon',
'  from dual ',
'    where :APP_IS_MST_WRKFLW_MOVE = 0',
')',
'select case when connect_by_isleaf = 1 then 0 when level = 1 then 1 else -1 end as status, ',
'level, ',
'd.item title, ',
'icon, ',
'd.id value, ',
''''' tooltip, ',
'url link',
'from',
'd ',
'start with parent = ''0''',
'connect by nocycle prior id = parent',
'order siblings by item'))
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_03=>'P20_SELECTED_NODE'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117615570951365005)
,p_plug_name=>'Action Buttons'
,p_region_name=>'status-btn-reg'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(17795148131435840)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(93116952798489127)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22924364766541254985)
,p_name=>'Updates'
,p_region_name=>'wrk_update_status'
,p_template=>wwv_flow_api.id(93099404070489118)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(apex_escape.html(dbms_lob.substr(notes,1000,1)),chr(10),''<br />'') comment_text,',
'        '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(created_by) user_name,',
'        substr(created_by,0,2) user_icon,',
'        ''u-color-''||(ora_hash(created_by,44) + 1) icon_modifier,',
'        to_char(created,''YYYY-MON-DD HH24:MI:SS'') comment_date,',
'        '' '' actions,',
'        created',
'from    chr_wrkflw_task_notes',
'where   group_id = :P20_TASK_GROUP_ID',
'  and  (contract_seq    = :APP_CHARTER or rfq_id = :P20_RFQ_ID)',
'  and arpcod = :P20_ARPCOD',
'union ',
'select ''grayComment'' class, --use grayComment for gray look',
'    ''Automatic Update'' note_type,',
'    initcap(replace(replace(''Status'',''_ID'',null),''_'','' '')) note_text,',
'    '' changed from <strong>''||apex_escape.html(substr(nvl(f.old_value,''null''),1,1000))||''</strong>'' attribute_1,',
'    '' to <strong>''||apex_escape.html(substr(f.new_value,1,1000))||''</strong>'' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.updated_by) created_by,',
'    substr(f.updated_by,0,2) user_icon,',
'    ''u-color-''||(ora_hash(f.updated_by,44) + 1) icon_modifier,',
'    to_char( f.updated,''YYYY-MON-DD HH24:MI:SS'') created_on,',
'    '' '' actions,',
'    f.updated',
'from chr_wrkflw_task_history f,',
'     chr_task_itm a',
'where  a.item_id = f.item_id',
'  and a.group_id =:P20_TASK_GROUP_ID',
'  and  ( contract_seq    = :APP_CHARTER or rfq_id = :P20_RFQ_ID)',
'  and arpcod = :P20_ARPCOD',
'order by 11 DESC'))
,p_display_when_condition=>':P20_TASK_GROUP_ID is not null'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(93108917132489122)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No updates found.'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18993054261444465)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18993476253444465)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18993854850444466)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18989110372444463)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18989489345444463)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18989821645444464)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18990209715444464)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18990610277444464)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18991036210444464)
,p_query_column_id=>9
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>10
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18991469900444464)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>11
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18991836919444465)
,p_query_column_id=>11
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18992240321444465)
,p_query_column_id=>12
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>12
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18992616857444465)
,p_query_column_id=>13
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18994650905444466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22924364766541254985)
,p_button_name=>'AddNotes'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(93122121640489131)
,p_button_image_alt=>'Add Note'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9001:&SESSION.::&DEBUG.:RP,9001:P9001_GROUP_ID,P9001_ARPCOD,P9001_RFQ_ID:&P20_TASK_GROUP_ID.,&P20_ARPCOD.,&P20_RFQ_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18998528456446427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30431750894702163)
,p_button_name=>'ButtonAttachment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(93122121640489131)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9002:&SESSION.::&DEBUG.:RP,9002:P9002_GROUP_ID,P9002_ARPCOD,P9002_RFQ_ID:&P20_TASK_GROUP_ID.,&P20_ARPCOD.,&P20_RFQ_ID.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18994255251444466)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22924364766541254985)
,p_button_name=>'EditNotes'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(93122121640489131)
,p_button_image_alt=>'Edit Notes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,9002:P16_GROUP_ID,P16_ARPCOD,P16_RFQ_ID:&P20_TASK_GROUP_ID.,&P20_ARPCOD.,&P20_RFQ_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22244586165764032)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18607651123067316)
,p_name=>'P20_CHARTER_STATUS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18607718526067317)
,p_name=>'P20_WRKFLW_SEQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18904515135237410)
,p_name=>'P20_TASK_GROUP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_use_cache_before_default=>'NO'
,p_source=>'GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18904854339237413)
,p_name=>'P20_DEP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18904730953237412)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department'
,p_source=>'DEP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEP_NAME as d,',
'       DEP_ID as r',
'  from CHR_DOCUMENT_DEP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18904952287237414)
,p_name=>'P20_TASK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18904730953237412)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Name'
,p_source=>'GROUP_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18905019973237415)
,p_name=>'P20_CONDITION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18904730953237412)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Condition'
,p_source=>'GROUP_CONDITION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18905183610237416)
,p_name=>'P20_TASK_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18904730953237412)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18905955551237424)
,p_name=>'P20_LAST_PAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_item_default=>'105'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18906679885237431)
,p_name=>'P20_IS_MST_WRKFLW_MOVE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'if we are moving from pre <--> paakage <--> post <--> tc..'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18906887048237433)
,p_name=>'P20_BREADCRUM_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18940557295395863)
,p_name=>'P20_SELECTED_NODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(106070763834029808)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18953716656593514)
,p_name=>'P20_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18954136094593514)
,p_name=>'P20_TASK_NAME_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18954527831593514)
,p_name=>'P20_CHARTER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18954960409593515)
,p_name=>'P20_STATUS_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18955301338593515)
,p_name=>'P20_STATUS_CODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18955709075593515)
,p_name=>'P20_TASK_PROCESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18956181708593515)
,p_name=>'P20_IS_FINAL_STATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'whether or not it is the final stage'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18957314648593517)
,p_name=>'P20_EMAIL_SEQ'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(30470534469612118)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19204833773349521)
,p_name=>'P20_ARPCOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19317889932336927)
,p_name=>'P20_MSG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19319015299336939)
,p_name=>'P20_SHOW_PROGRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22123880580110645)
,p_name=>'P20_RFQ_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23871097802920348)
,p_name=>'P20_COMPLETE_PERCENTAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(11474202394552363)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23296863397549107)
,p_computation_sequence=>10
,p_computation_item=>'APP_SYS_WRK_SEQ'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from CHR_SYSTEM_FLW',
'where upper(key_value) = upper(''CHARTER-PKG'')'))
,p_compute_when=>':APP_IS_MST_WRKFLW_MOVE is null'
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18905550293237420)
,p_computation_sequence=>20
,p_computation_item=>'P20_STATUS_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
' Description : Task Status ',
'               is Display only on form',
'',
'*/',
'select  b.item_value     ',
'from chr_task_itm a,',
'     chr_package_infos b',
'where a.group_id         = :P20_TASK_GROUP_ID',
'  and (b.CONTRACT_SEQ  = :APP_CHARTER or rfq_id = :P20_RFQ_ID)',
'  and b.item_id          = a.item_id',
'  and upper(a.item_name) =''STATUS''',
'  and b.arpcod           = :P20_ARPCOD',
' ',
'',
''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18607846500067318)
,p_computation_sequence=>30
,p_computation_item=>'P20_WRKFLW_SEQ'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_SYS_WRK_SEQ'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18607946011067319)
,p_computation_sequence=>40
,p_computation_item=>'P20_CHARTER_STATUS_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' l_status_id number ;',
'begin',
' ',
'     begin',
'          select STATUS_id',
'           into l_status_id',
'           from chr_contract_mst',
'          where contract_seq = :APP_CHARTER',
'           ;',
'            exception',
'              when  no_data_found then ',
'                 null;',
'       end;',
'      ',
'      return l_status_id;',
'',
'end;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18905301591237418)
,p_computation_sequence=>50
,p_computation_item=>'P20_CHARTER_STATUS_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' l_status_id number ;',
'begin',
' ',
'     begin',
'          select STATUS_id',
'           into l_status_id',
'           from chr_contract_mst',
'          where contract_seq = :APP_CHARTER',
'           ;',
'            exception',
'              when  no_data_found then ',
'                 null;',
'       end;',
'      ',
'      return l_status_id;',
'',
'end;'))
);
end;
/
begin
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18905657751237421)
,p_computation_sequence=>60
,p_computation_item=>'P20_STATUS_CODE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_code ',
'from   chr_wrkflw_task_status',
'where id = :P20_STATUS_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18905714267237422)
,p_computation_sequence=>70
,p_computation_item=>'P20_IS_FINAL_STATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>'  return pkg_workflow.is_final_state(:P20_STATUS_ID)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18906749691237432)
,p_computation_sequence=>80
,p_computation_item=>'P20_BREADCRUM_TITLE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'nvl(:P20_BREADCRUM_TITLE,''Charter Package'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19317929933336928)
,p_computation_sequence=>90
,p_computation_item=>'P20_MSG'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P20_TASK_GROUP_ID is null then ',
'   return ''No data task item found. Please select a Task.'';',
'else',
'  return ''No data task item found.'';',
'end if;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19319129684336940)
,p_computation_sequence=>100
,p_computation_item=>'P20_SHOW_PROGRESS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'  To check if user has already save task informations',
'*/',
'',
'declare',
'',
'  l_exists number ;',
' ',
'begin',
'  ',
'   begin',
'       select  1',
'         into  l_exists',
'        from  chr_task_itm a,',
'              chr_package_infos b',
'        where a.group_id         = :P20_TASK_GROUP_ID',
'          and (b.CONTRACT_SEQ  = :APP_CHARTER or rfq_id = :P20_RFQ_ID)',
'          and b.item_id          = a.item_id',
'          and b.arpcod           = :P20_ARPCOD',
'          and a.item_condition   = ''MANDATORY''',
'          and b.item_value   is    null',
'          and rownum             = 1 ',
'          ;',
'          return 0;',
'        exception',
'         when no_data_found then ',
'              return 1;',
'     end ;',
' end;',
' ',
' '))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22124282829110649)
,p_computation_sequence=>110
,p_computation_item=>'P20_RFQ_ID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'APP_RFQ_ID'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23871123235920349)
,p_computation_sequence=>120
,p_computation_item=>'P20_COMPLETE_PERCENTAGE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with total as ',
'      ( select count(*) total ',
'        from (',
'               select count(*) as total, ',
'               b.group_id,',
'               a.arpcod ',
'        from chr_package_infos a,',
'              chr_task_grp b,',
'              chr_task_itm c',
'        where ( a.contract_seq    = :APP_CHARTER or a.rfq_id = :P20_RFQ_ID)',
'        and a.item_id = c.item_id ',
'        and c.group_id = b.group_id',
'        and b.sys_wrkflw_seq = :P20_WRKFLW_SEQ',
'        group by b.group_id,a.arpcod',
'           )',
'        ',
' ),',
' complete as',
'   (   select count(*) completed',
'     from (  select count(*) completed,b.group_id,a.arpcod ',
'               from chr_package_infos a, ',
'                    chr_task_grp b,',
'                    chr_task_itm c',
'              where ( a.contract_seq    = :APP_CHARTER or a.rfq_id = :P20_RFQ_ID)',
'                and a.item_id = c.item_id ',
'                and c.group_id = b.group_id',
'                and b.sys_wrkflw_seq = :P20_WRKFLW_SEQ',
'                and pkg_workflow.is_task_completed (:APP_CHARTER,:P20_RFQ_ID,b.group_id,a.arpcod)=1',
'           group by b.group_id,a.arpcod',
'          )',
' )',
'select round((complete.completed/decode(total.total,0,1,total.total))*100,2) as value',
'     ',
'from total, complete'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18962630827651523)
,p_name=>'getIRcheckboxItemsType Infomation'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.item-type-ck'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18963025264651524)
,p_event_id=>wwv_flow_api.id(18962630827651523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'task.getItemInfos(this.triggeringElement,''C'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18963493732652543)
,p_name=>'getIRRadioItemsType Infomation'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.item-type-rdg'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18963880435652544)
,p_event_id=>wwv_flow_api.id(18963493732652543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'task.getItemInfos(this.triggeringElement,''R'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18904637631237411)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CHR_TASK_GRP'
,p_attribute_02=>'CHR_TASK_GRP'
,p_attribute_03=>'P20_TASK_GROUP_ID'
,p_attribute_04=>'GROUP_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18961561034647623)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changeCharterStatus'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'   Description : use to change the charter status',
'     date      : 2018-09-12',
'     Author    : Suzy Stephanie',
'',
'*/',
'',
'declare ',
'',
'  l_process varchar2(100) := :P0_CHARTER_PROCESS ;',
'  ',
'begin',
'   ',
'     pkg_workflow.change_status( :APP_CHARTER,',
'                                 l_process,',
'                                 null,',
'                                :P20_CHARTER_STATUS_ID,',
'                                ''CHARTER'',',
'                                :P0_URL,',
'                                :P0_EMAIL_SEQ,',
'                                :P20_ARPCOD,',
'                                :P20_RFQ_ID',
'                              )',
'                              ;',
'  ',
'end ;'))
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CHANGE_CHARTER_STATUS'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Status changed!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18961891724648883)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changeTaskStatus'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'   Description : use to change the task status',
'     date      : 2018-09-11',
'     Author    : Suzy Stephanie Kemayou',
'',
'*/',
'',
'declare ',
'',
'  l_process varchar2(100) := :P20_TASK_PROCESS ;',
'  ',
'begin',
'   ',
'     pkg_workflow.change_status( :APP_CHARTER,',
'                                 l_process,',
'                                :P20_TASK_GROUP_ID,',
'                                :P20_STATUS_ID, --cureent status',
'                                ''TASK'', -- we want to change task status',
'                                null,  -- page branch if need',
'                                :P20_EMAIL_SEQ, -- email notification',
'                                :P20_ARPCOD,',
'                                :P20_RFQ_ID',
'                                )',
'                                 ;',
'',
'',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CHANGE_STATUS'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Status changed!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18962174968649741)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_ITEMS_VALUES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'  vAction               varchar2(10) ;',
'  itemValues            apex_t_varchar2;',
'  item                  varchar2 (2000);',
'  v_item_status_id      number ;',
'  v_item_status_value   number ;',
'  l_errors  varchar2 (255);',
'  ',
'begin',
'',
'    vAction    := apex_application.g_x01 ;',
'    if vAction =''INSERT'' then  -- insertion then ',
'           ',
'            v_item_status_id := pkg_workflow.get_status_item_id(:P20_TASK_GROUP_ID);',
'            begin  ',
'                select id  ',
'                  into v_item_status_value',
'                  from chr_wrkflw_task_status ',
'                 where task_group_id   = :P20_TASK_GROUP_ID ',
'                   and initial_flg     = ''Y''',
'                   ;',
'                exception ',
'                     when no_data_found then',
'                           l_errors :=''This task would have initial status. Please verify with your Admin.'';',
'            end ;',
'            ',
'           vAction := ''UPDATE'';',
'         if (l_errors is null) then ',
'               for i in 1..apex_application.g_f01.count loop',
'                 item := apex_application.g_f01(i);',
'                 itemValues := apex_string.split(p_str => item, p_sep => '';'');',
'                 insert ',
'                   into chr_package_infos (contract_seq,',
'                                                 item_id,',
'                                                 item_value,',
'                                                 arpcod,',
'                                                 rfq_id)',
'                   values (:app_charter,',
'                            itemValues(1),',
'                            itemValues(2),',
'                            :P20_ARPCOD,',
'                            :P20_RFQ_ID',
'                          ) ',
'                  ; ',
'                end loop; ',
'',
'                -- insert initial status',
'                if v_item_status_id is not null then ',
'                     insert ',
'                       into chr_package_infos (contract_seq,',
'                                                     item_id,',
'                                                     item_value,',
'                                                     arpcod,',
'                                                     rfq_id)',
'                       values (:app_charter,',
'                                v_item_status_id,',
'                               v_item_status_value,',
'                               :P20_ARPCOD,',
'                               :P20_RFQ_ID',
'                              ) ',
'                      ; ',
'                     pkg_workflow.log_task_status_history  ( :app_charter , ',
'                                                              :P20_RFQ_ID,',
'                                                            v_item_status_id ,',
'                                                            v_item_status_value ,',
'                                                            null,',
'                                                            :P20_ARPCOD) ;',
'                end if;',
'         end if;     ',
'     else -- update ',
'           for i in 1..apex_application.g_f01.count loop',
'             item := apex_application.g_f01(i);',
'             itemValues := apex_string.split(p_str => item, p_sep => '';'');',
'              update chr_package_infos ',
'                 set item_value    =  itemValues(2) ',
'               where (contract_seq = :app_charter or rfq_id = :P20_RFQ_ID)',
'                 and item_id      = itemValues(1)',
'                 and arpcod       = :P20_ARPCOD',
'                ;',
'            end loop ;',
'     end if;',
'	 ',
'	  if (l_errors is null) then ',
'         htp.p (''{"sucess":true,"action":"''||vAction||''"}'');',
'	  else ',
'	     htp.p (''{"sucess":false,"message":"''||l_errors||''"}'');',
'      end if;',
'   ',
'',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/delete_00032
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>32);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Calculator'
,p_step_title=>'Calculator'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#rate_summary_control_panel'').hide();',
'$(''#P32_HR_CONTAINER'').append(''<hr>'');',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#RATES TH#ACMI ,',
'#RATES TH#ALL_IN,',
'#RATES TH#FUEL,',
'#RATES TH#NAV,',
'#RATES TH#LANDING{max-width:150px!important;min-width:20px;}',
'#RATES TD[headers="ALL_IN"],',
'#RATES TD[headers="ACMI"],',
'#RATES TD[headers="FUEL"],',
'#RATES TD[headers="NAV"],',
'#RATES TD[headers="LANDING"]{max-width:150px!important;min-width:20px;}',
'',
'#RATES input{',
'    max-width:82px;',
'    ',
'}',
'',
'#P32_HR_CONTAINER {',
'   margin-top:-12px;',
'    width: 120px;',
'    margin-left: 35%;',
'}',
'',
'#P32_TOTAL_CONTAINER {',
'    margin-top:-32px;',
'}',
'',
'#P32_TOTAL_DISPLAY {',
'    margin-top:0px!important;',
'}'))
,p_step_template=>wwv_flow_api.id(93085417326489108)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#RATES TH#ACMI ,',
'#RATES TH#ALL_IN,',
'#RATES TH#FUEL,',
'#RATES TH#NAV,',
'#RATES TH#LANDING{max-width:100px!important;}',
'#RATES TD[headers="ALL_IN"],',
'#RATES TD[headers="ACMI"],',
'#RATES TD[headers="FUEL"],',
'#RATES TD[headers="NAV"],',
'#RATES TD[headers="LANDING"]{max-width:100px!important}'))
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181210190616'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22287144693102118)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93103840577489119)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(93122709309489132)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22292202076191324)
,p_plug_name=>'flight charge rate'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22474990507914916)
,p_plug_name=>'Cronract information'
,p_parent_plug_id=>wwv_flow_api.id(22292202076191324)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22669108836368736)
,p_plug_name=>'Task Cost'
,p_parent_plug_id=>wwv_flow_api.id(22292202076191324)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>21
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select  c.group_name,',
'            nvl(sum(a.item_value),0) cost,',
'             listagg( a.arpcod || case when pkg_workflow.is_task_completed (:P32_CONTRACT_SEQ,null,b.group_id,a.arpcod)=1 then ',
'                                           ''&nbsp;&nbsp; <span  class="fa fa-check completed"></span>'' ',
'                                           else ''&nbsp;&nbsp; <span  class="fa fa-check uncompleted"></span>''',
'                                           end ',
'              ',
'              ,''<br>'' ) within group (order by 1) arpcod',
'      from  chr_package_infos a,',
'            chr_task_itm b,',
'            chr_task_grp c',
'     where  a.contract_seq        = :P32_CONTRACT_SEQ',
'       and  a.item_id             = b.item_id',
'       and  upper(b.item_name)    = ''COST''',
'       and  b.group_id            = c.group_id',
'  group by  c.group_name',
' ',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22669272564368737)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>22669272564368737
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22669301824368738)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Task'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22669671351368741)
,p_db_column_name=>'ARPCOD'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Airport'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22669744075368742)
,p_db_column_name=>'COST'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Cost'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22776439766297854)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'227765'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GROUP_NAME:ARPCOD:COST'
,p_sum_columns_on_break=>'COST'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23138238364343431)
,p_plug_name=>'Revenue'
,p_parent_plug_id=>wwv_flow_api.id(22292202076191324)
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>31
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23138749834343436)
,p_plug_name=>'Services Cost'
,p_parent_plug_id=>wwv_flow_api.id(22292202076191324)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22355286561955227)
,p_plug_name=>'Rates'
,p_region_name=>'RATES'
,p_parent_plug_id=>wwv_flow_api.id(23138749834343436)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style=''overflow:hidden'''
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_plug_source=>'return pkg_charter_rates.get_rate_report (:P32_CONTRACT_SEQ)'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22550596560089109)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>22550596560089109
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22554581329089149)
,p_db_column_name=>'FLIGHT_SEQ'
,p_display_order=>10
,p_column_identifier=>'AC'
,p_column_label=>'Flight Seq'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22554654047089150)
,p_db_column_name=>'SORT_DATE'
,p_display_order=>20
,p_column_identifier=>'AD'
,p_column_label=>'Sort Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22665619899368701)
,p_db_column_name=>'FLIGHT_DATE'
,p_display_order=>30
,p_column_identifier=>'AE'
,p_column_label=>'Flight Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22665787269368702)
,p_db_column_name=>'FLIGHT_NUM'
,p_display_order=>40
,p_column_identifier=>'AF'
,p_column_label=>'Flight No.'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22665898451368703)
,p_db_column_name=>'FLIGHT_ORG'
,p_display_order=>50
,p_column_identifier=>'AG'
,p_column_label=>'Origin'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(22588334781401651)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22665980609368704)
,p_db_column_name=>'STD'
,p_display_order=>60
,p_column_identifier=>'AH'
,p_column_label=>'STD'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666073375368705)
,p_db_column_name=>'STA'
,p_display_order=>70
,p_column_identifier=>'AI'
,p_column_label=>'STA'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666160536368706)
,p_db_column_name=>'FLIGHT_DST'
,p_display_order=>80
,p_column_identifier=>'AJ'
,p_column_label=>'Destination'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(22588334781401651)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666299426368707)
,p_db_column_name=>'BLOCK_HOUR'
,p_display_order=>90
,p_column_identifier=>'AK'
,p_column_label=>'Block Hour'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666369037368708)
,p_db_column_name=>'ALL_IN'
,p_display_order=>100
,p_column_identifier=>'AL'
,p_column_label=>'All In Charter'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666494337368709)
,p_db_column_name=>'FUEL'
,p_display_order=>110
,p_column_identifier=>'AM'
,p_column_label=>'Fuel Burn'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666545430368710)
,p_db_column_name=>'NAV'
,p_display_order=>120
,p_column_identifier=>'AN'
,p_column_label=>'Navigation Fee'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666694951368711)
,p_db_column_name=>'LANDING'
,p_display_order=>130
,p_column_identifier=>'AO'
,p_column_label=>'Landing Fee'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666784117368712)
,p_db_column_name=>'ACMI'
,p_display_order=>140
,p_column_identifier=>'AP'
,p_column_label=>'ACMI'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22572010449491065)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'225721'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FLIGHT_DATE:FLIGHT_NUM:FLIGHT_ORG:STD:STA:FLIGHT_DST:BLOCK_HOUR:ALL_IN:FUEL:NAV:LANDING:ACMI:'
,p_sort_column_1=>'SORT_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22477539831914942)
,p_plug_name=>'Summary'
,p_parent_plug_id=>wwv_flow_api.id(23138749834343436)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22403123717620715)
,p_plug_name=>'Charge Summary'
,p_region_name=>'rate_summary'
,p_parent_plug_id=>wwv_flow_api.id(22477539831914942)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select charge_head,',
'       sum(value)value,',
'       rate_amount rate_amount,',
'       sum(amount)amount,',
'       sum(amount_usd)amount_usd,',
'       Billing,',
'       sequence',
'       ',
'from ( ',
'      ',
'    select ',
'           case ',
'           when a.charge_head in (''LANDING'',''NAV'') then ',
'              c.onetime_desc ||''-'' || (select FLIGHT_DST from CHR_CONTRACT_FLT f where f.FLIGHT_SEQ   =  a.FLIGHT_SEQ)',
'              else  c.onetime_desc',
'          end charge_head,',
'    ',
'          pkg_charter_rates.get_charge_unit_value(:P32_CONTRACT_SEQ,a.flight_seq, a.charge_head)  value,',
'    ',
'          case ',
'          when pkg_charter_rates.is_charge_unit(a.charge_head)=0 then ',
'                a.rate_amount',
'          else  pkg_charter_rates.get_rate(:P32_CONTRACT_SEQ,a.flight_seq, a.charge_head)',
'          end rate_amount,',
'    ',
'         a.rate_amount amount,',
'         c.sequence,',
'         case ',
'         when a.charge_head = ''ALL_IN'' then ''All In Charter'' ',
'         else ''Others'' ',
'          end Billing,',
'    ',
'          a.rate_amount*:P32_USD_RATE amount_usd',
'',
'',
'    from chr_contract_rate a,',
'         chr_onetime_mst c',
'    where c.onetime_type  = ''CHARGE_HEAD''',
'      and c.onetime_value = a.charge_head',
'      and a.contract_seq  = :P32_CONTRACT_SEQ',
'    ',
')',
'',
'group by  charge_head,',
'          sequence,',
'          rate_amount,',
'          Billing',
'order by sequence'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22403294703620716)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>22403294703620716
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22403392745620717)
,p_db_column_name=>'CHARGE_HEAD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Type'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22403539178620719)
,p_db_column_name=>'RATE_AMOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Rate Amount($CAD)'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22403676136620720)
,p_db_column_name=>'AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount ($CAD)'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22474347238914910)
,p_db_column_name=>'VALUE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Value'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22666940567368714)
,p_db_column_name=>'BILLING'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Billing'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22667084046368715)
,p_db_column_name=>'SEQUENCE'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22815716734840920)
,p_db_column_name=>'AMOUNT_USD'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Amount($USD)'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22429653738026557)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'224297'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BILLING:CHARGE_HEAD:VALUE:RATE_AMOUNT:AMOUNT::AMOUNT_USD'
,p_sort_column_1=>'SEQUENCE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'BILLING:0:0:0:0:0'
,p_break_enabled_on=>'BILLING:0:0:0:0:0'
,p_sum_columns_on_break=>'AMOUNT:AMOUNT_USD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25001445757499926)
,p_plug_name=>'Uncompleted Task Alert'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading:margin-bottom-sm'
,p_plug_template=>wwv_flow_api.id(93087646763489109)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>'There are some uncompleted tasks. '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  1',
'      from  chr_package_infos a,',
'            chr_task_itm b,',
'            chr_task_grp c',
'     where  a.contract_seq        = :P32_CONTRACT_SEQ',
'       and  a.item_id             = b.item_id',
'       and  upper(b.item_name)    = ''COST''',
'       and  b.group_id            = c.group_id',
'       and  pkg_workflow.is_task_completed (:P32_CONTRACT_SEQ,null,b.group_id,a.arpcod)!=1',
'  group by  c.group_name,  a.arpcod'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109470260993162147)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089818728489112)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22552227400089126)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(109470260993162147)
,p_button_name=>'CAL_NAV'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Calculate Navigation'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:window.open(''http://www1.navcanada.ca/OnlineForms/FeeCalculator/FeeCalculator.asp?lang=en'')'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22344483189528234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109470260993162147)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22345600194528235)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(109470260993162147)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P32_CONTRACT_SEQ'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23138810821343437)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(109470260993162147)
,p_button_name=>'Regenerate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Recalculate the charges'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22292380890191325)
,p_name=>'P32_CONTRACT_SEQ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22346496526528236)
,p_name=>'P32_PRE_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(109470260993162147)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22474493311914911)
,p_name=>'P32_ORGCOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Origin :'
,p_source=>'ORGCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'AIRPORT_ICAO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ICAO_CODE d,',
'       ARP_CODE as r',
'  from CHR_AIRPORT_MST',
' order by 1'))
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22474629921914913)
,p_name=>'P32_DESCOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Destination ;'
,p_source=>'DESCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22474732344914914)
,p_name=>'P32_AIRCRAFT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Aircraft Type :'
,p_source=>'AIRCRAFT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'AIRCRAFT_TYPE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'return PKG_UTILS.GET_LOV(',
'    P_TYPE => ''AIRCRAFT''',
'  );',
'END;'))
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22474837527914915)
,p_name=>'P32_SPEED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22815878845840921)
,p_name=>'P32_CONTRACT_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTRACT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23051457778660331)
,p_name=>'P32_ESTIMATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Estimation : </b> '
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GRAND_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23051543270660332)
,p_name=>'P32_EXPENSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Expense :</b>'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'to_char(pkg_workflow.get_expense(:P32_CONTRACT_SEQ),''FML999G999G999G999G990D00'')'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''color:red;font-size:19px'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23051627477660333)
,p_name=>'P32_EARN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_prompt=>'<b>Earn :</b>'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23051841752660335)
,p_name=>'P32_REVENUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_prompt=>'<b>Profit ($CAD) : </b>'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''color:green;font-size:19px'''
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23138441028343433)
,p_name=>'P32_REVENUE_USD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_prompt=>'<b>Profit ($USD) : </b>'
,p_source=>'to_char(pkg_workflow.get_revenue(:P32_CONTRACT_SEQ)* :P32_USD_RATE,''FML999G999G999G999G990D00'')'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''color:green;font-size:19px'''
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23138540257343434)
,p_name=>'P32_USD_RATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23578553945752518)
,p_name=>'P32_CURRENCY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency :'
,p_source=>'CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23578600059752519)
,p_name=>'P32_TAXABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22474990507914916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Taxable'
,p_source=>'APPLY_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_post_computation=>'case when :P32_TAXABLE = ''Y'' then ''Yes'' else ''No'' end'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23578768568752520)
,p_name=>'P32_TAX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_prompt=>'<b>Tax : </b>'
,p_source=>'to_char(0,''FML999G999G999G999G990D00'')'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23578839950752521)
,p_name=>'P32_HR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_prompt=>'<hr>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''width:10px;'''
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23578917257752522)
,p_name=>'P32_TOTAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23138238364343431)
,p_prompt=>'<b>Total Profit + Tax ($CAD) :</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style=''color:green;font-size:19px'''
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23051954449660336)
,p_computation_sequence=>10
,p_computation_item=>'P32_EARN'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(pkg_workflow.get_earn(:P32_CONTRACT_SEQ),''FML999G999G999G999G990D00'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23052138082660338)
,p_computation_sequence=>30
,p_computation_item=>'P32_REVENUE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(pkg_workflow.get_revenue(:P32_CONTRACT_SEQ),''FML999G999G999G999G990D00'')'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23138628255343435)
,p_computation_sequence=>40
,p_computation_item=>'P32_USD_RATE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'pkg_contract_mgt.get_exchange_rate(''USD'', to_date(:P32_CONTRACT_DATE,''dd-mon-yyyy''))'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(23579021815752523)
,p_computation_sequence=>50
,p_computation_item=>'P32_TOTAL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation=>'to_char(pkg_workflow.get_revenue(:P32_CONTRACT_SEQ) + nvl(0,0),''FML999G999G999G999G990D00'')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22402946254620713)
,p_name=>'get total amount'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.updatable'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22403005976620714)
,p_event_id=>wwv_flow_api.id(22402946254620713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pThis = this.triggeringElement;',
'rate.getAmountTotal(pThis);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22474149410914908)
,p_name=>'save'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22345600194528235)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22474281344914909)
,p_event_id=>wwv_flow_api.id(22474149410914908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'rate.saveRate()'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22551976571089123)
,p_name=>'Get Total Block Hours'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.total-bh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22552092486089124)
,p_event_id=>wwv_flow_api.id(22551976571089123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pThis = this.triggeringElement;',
'rate.getBHTotal(pThis);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22865309977193913)
,p_name=>'hide summary'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(22403123717620715)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22865704689193914)
,p_event_id=>wwv_flow_api.id(22865309977193913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' $(''#rate_summary_control_panel'').hide();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23138950088343438)
,p_name=>'recalculate '
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23138810821343437)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23139024021343439)
,p_event_id=>wwv_flow_api.id(23138950088343438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'app.dialog_confirm (''Performing this action will clear all the current amount. Are you sure you want to continue this action?'', ''Yes'', ''No'' , function (okpressed){',
'         if (okpressed)',
'               apex.submit(''RECALCULATE'');',
'});',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22294790903191349)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Sava Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' l_flight_seq number ;',
' l_charge_head varchar2(100);',
' l_rate_amount  number ;',
' l_charge_unit   number ;',
' l_airport       varchar2(10);',
'begin',
'',
'',
'    for i in 1..apex_application.g_f01.count  loop',
'        l_flight_seq     := apex_application.g_f01(1);',
'        l_charge_head    := apex_application.g_f01(2);',
'        l_rate_amount    := apex_application.g_f01(3);',
'        l_charge_unit    := apex_application.g_f01(4);',
'        l_airport        := apex_application.g_f01(1);',
'        ',
'        insert ',
'          into chr_contract_rate(contract_seq, ',
'                                   flight_seq,',
'                                  charge_head,',
'                                  rate_amount,',
'                                   charge_unit)',
'         values (:P32_CONTRACT_SEQ,',
'                 l_flight_seq,',
'                 l_charge_head,',
'                 l_rate_amount,',
'                 l_charge_unit',
'                 );',
'      end loop;',
'    ',
'   ',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22345600194528235)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23139145008343440)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Recalculate the initial amount'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'pkg_charter_rates.re_generate_rate(:P32_CONTRACT_SEQ);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''RECALCULATE'''
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22294890514191350)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate Rates'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'pkg_charter_rates.generate_rate(:P32_CONTRACT_SEQ);',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22474510715914912)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'fecth Contract '
,p_attribute_02=>'CHR_CONTRACT_MST'
,p_attribute_03=>'P32_CONTRACT_SEQ'
,p_attribute_04=>'CONTRACT_SEQ'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22488408257063193)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_RATES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' rateValues            apex_t_varchar2;',
'begin',
'',
'      for i in 1..apex_application.g_f01.count loop',
'',
'         rateValues := apex_string.split(p_str => apex_application.g_f01(i), p_sep => '';'');',
'         pkg_charter_rates.save_rate (:P32_CONTRACT_SEQ,',
'                  rateValues(1) ,',
'                  rateValues(2),',
'                  rateValues(3) ',
'                  );',
'      end loop;',
'',
'      htp.p (''{"sucess":true}'');',
'	 ',
'   ',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

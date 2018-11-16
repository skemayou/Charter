prompt --application/set_environment/23987131759713567
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
--   Date and Time:   19:56 Friday November 16, 2018
--   Exported By:     SUZY
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     APP ITEM: APP_LAST_DAY_YEAR_DATE
--     APP ITEM: APP_FIRST_DAY_YEAR_DATE
--     APP PROCESS: init
--     PAGE: 20. Charter in Progress
--     PAGE: 104. Charter Contract Report
--     PAGE: 21. Request for Quote
--     PAGE: 33. Charter Rate Master
--     PAGE: 38. Dashboard
--   Manifest End
--   Version:         18.1.0.00.45
--   Instance ID:     61930891962732
--

-- C O M P O N E N T    E X P O R T
begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/logic/application_items/23987131759713567
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(23987131759713567)
,p_name=>'APP_LAST_DAY_YEAR_DATE'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_items/23986979661707647
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(23986979661707647)
,p_name=>'APP_FIRST_DAY_YEAR_DATE'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_processes/17832241056107865
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(17832241056107865)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'init'
,p_process_sql_clob=>'pkg_charter_contract.init;'
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
,p_last_upd_yyyymmddhh24miss=>'20181112215849'
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
,p_plug_name=>'New'
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
,p_plug_name=>'New'
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
,p_plug_name=>'Department Tree List'
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
,p_last_upd_yyyymmddhh24miss=>'20181112212358'
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
'          STATUS,',
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
 p_id=>wwv_flow_api.id(93166790093132631)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
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
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93180833879135807)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'931809'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PACKAGE_URL:CONTRACT_SEQ:CONTRACT_TYPE:GRAND_TOTAL:CONTRACT_DATE:AIRCRAFT_TYPE:EXPIRY_DATE:CUSTOMER_NAME:CUSTOMER_CONTACT:CUSTOMER_PHONE:CREATED:STATUS::INVOICE'
,p_sort_column_1=>'CONTRACT_SEQ'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93175909929132638)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93165153852132593)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Contract'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:105::'
,p_button_condition_type=>'NEVER'
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
,p_last_upd_yyyymmddhh24miss=>'20181112204415'
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
'        when RFQ_DATE +7 > sysdate then ',
'           ''<div class="rfq-status rejected-rfq">Rejected</div>'' ',
'        else',
'          ''<div class="rfq-status in-progress-frq">In Progress</div>'' ',
'          end status,',
'           case ',
'        when (select contract_seq from chr_contract_mst where rfq_id = a.id) is not null then ',
'          ''Approved''',
'        when RFQ_DATE +7 > sysdate then ',
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
,p_report_columns=>'ID:CONTRACT_SEQ:CARGO_READY_DATE:AIRCRAFT_TYPE:CUSTOMER_NAME:CUSTOMER_EMAIL:CUSTOMER_CONTACT:RFQ_RFQ_DATE::ORGCOD:DESCOD:STATUS:STATUS_DSP'
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
prompt --application/pages/delete_00033
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>33);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Charter Rate Master'
,p_step_title=>'Charter Rate Master'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181112174946'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22244927722764036)
,p_plug_name=>'RATES'
,p_region_name=>'rates'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from chr_rate_mst'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22290390634191305)
,p_name=>'RATE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE_ID'
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
 p_id=>wwv_flow_api.id(22290438400191306)
,p_name=>'CHARGE_HEAD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHARGE_HEAD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Charge Head'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'PLSQL_FUNCTION_BODY'
,p_lov_source=>'return  pkg_utils.get_lov(''CHARGE_HEAD'')'
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_api.id(22290599985191307)
,p_name=>'AIRCRAFT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AIRCRAFT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Aircraft Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(22325064498251234)
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
 p_id=>wwv_flow_api.id(22290687561191308)
,p_name=>'CHARGE_UNIT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHARGE_UNIT_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Charge Unit Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(22325897631266505)
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
 p_id=>wwv_flow_api.id(22290728870191309)
,p_name=>'RATE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate Amount'
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
 p_id=>wwv_flow_api.id(22290830908191310)
,p_name=>'CURRENCY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENCY_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22290981172191311)
,p_name=>'EFFECTIVE_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_FROM'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective From'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(22291081501191312)
,p_name=>'EFFECTIVE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECTIVE_TO'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Effective To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(22291113032191313)
,p_name=>'AIRPORT_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AIRPORT_FROM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Airport From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(93309451160218795)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22291261610191314)
,p_name=>'AIRPORT_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AIRPORT_TO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Airport To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(93309451160218795)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22291341068191315)
,p_name=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vendor Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_api.id(22291406433191316)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(22329500031318870)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_api.id(22291983125191321)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(22292042849191322)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23866863412920306)
,p_name=>'dummy_col'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(22290242718191304)
,p_internal_uid=>22290242718191304
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'   ',
'    config.initActions = function( actions ) {',
'        // can modify state of existing actions or add your own',
'        // can also pass in an array of actions to add',
'        saveButton =  actions.lookup("save");',
'        saveButton.action= function (){',
'        ',
'            apex.page.submit(''save'');',
'        }',
'      ',
'    }',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(22302375077205297)
,p_interactive_grid_id=>wwv_flow_api.id(22290242718191304)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(22302434635205297)
,p_report_id=>wwv_flow_api.id(22302375077205297)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22302997038205298)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(22290390634191305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22303482047205300)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(22290438400191306)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.36363220214844
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22303934892205301)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(22290599985191307)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.18180847167969
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22304422614205302)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(22290687561191308)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.6363525390625
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22304916350205304)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(22290728870191309)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103.45454406738281
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22305440502205305)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(22290830908191310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22305917051205306)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(22290981172191311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.5454559326172
,p_sort_order=>3
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22306497608205308)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(22291081501191312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108.81817626953125
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22306963712205309)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(22291113032191313)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142.72726440429688
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22307429175205310)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(22291261610191314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.9090805053711
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22307866667205312)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(22291341068191315)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77.99999618530273
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22308358247205313)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(22291406433191316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61.09090805053711
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(22318108247208577)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(22291983125191321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23888384100237803)
,p_view_id=>wwv_flow_api.id(22302434635205297)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(23866863412920306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22289360412184351)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22553761027089141)
,p_name=>'P33_COLLECTION_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22244927722764036)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22553864188089142)
,p_computation_sequence=>10
,p_computation_item=>'P33_COLLECTION_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'RATES_COL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(22815047443840913)
,p_tabular_form_region_id=>wwv_flow_api.id(22244927722764036)
,p_validation_name=>'Date From must be anterior to date To'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:EFFECTIVE_FROM) > to_date(:EFFECTIVE_TO) Then ',
'    return ''Effective Date From must be anterior to Effctive Date To'';',
'end if ;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(22554334607089147)
,p_tabular_form_region_id=>wwv_flow_api.id(22244927722764036)
,p_validation_name=>'validate Rates infromations'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'  Description : This validation make sure that will have one valid rate on a giving period',
'     date      : 2018/10/10',
'     Autor     : suzy Stephanie Kemayou',
'',
'',
'*/',
'',
'declare ',
'  l_count number:=0 ;',
' ',
'begin',
'',
'   ',
'   select count(*)',
'     into l_count',
'    from (     ',
'                select  rate_id,',
'                           charge_head,',
'                           effective_from,',
'                           effective_to,',
'                           charge_unit_type,',
'                           aircraft_type,',
'                           airport_from,',
'                           airport_to',
'                   from chr_rate_mst ',
'                   where rate_id not in ( select nvl(N001,seq_id)',
'                                            from apex_collections ',
'                                           where collection_name = :P33_COLLECTION_NAME',
'                                           )',
'                    and status= ''ACTIVE''',
'                    union all',
'                   select nvl(N001,seq_id),',
'                          C003,',
'                          D001,',
'                          D002,',
'                          C005,',
'                          C004,',
'                          C006,',
'                          C007',
'                     from apex_collections ',
'                    where collection_name = :P33_COLLECTION_NAME',
'                      and C002 != ''D''',
'                      and C008 = ''ACTIVE''',
'                  ',
'              ) a,',
'              (  select nvl(N001,seq_id) rate_id ,',
'                          C003 charge_head,',
'                          D001 effective_from,',
'                          D002 effective_to,',
'                          C005 charge_unit_type,',
'                          C004 aircraft_type,',
'                          C006 airport_from,',
'                          C007 airport_to',
'                     from apex_collections ',
'                    where collection_name = :P33_COLLECTION_NAME',
'                      and C002 != ''D''',
'                      and C008 = ''ACTIVE'') b',
' where a.charge_head      = b.charge_head',
'     and nvl(b.CHARGE_UNIT_TYPE,nvl(a.charge_unit_type,''-1''))   = nvl(a.charge_unit_type,''-1'')',
'     and nvl(b.AIRCRAFT_TYPE,nvl(a.aircraft_type,''-1''))         = nvl(a.aircraft_type,''-1'')',
'     and nvl(b.AIRPORT_FROM,nvl(a.airport_from,''-1''))           = nvl(a.airport_from,''-1'')',
'     and nvl(b.AIRPORT_TO,nvl(a.airport_to,''-1'') )              = nvl(a.airport_to,''-1'') ',
'     and ( nvl(b.effective_to,sysdate+1000000) between a.EFFECTIVE_FROM and nvl(a.effective_to ,sysdate+1000000)',
'         or  nvl(a.effective_to,sysdate+1000000) between b.EFFECTIVE_FROM and nvl(b.effective_to ,sysdate+1000000)',
'         ',
'         )',
'     and a.rate_id         !=b.RATE_ID   ',
'     --and a.STATUS         =''ACTIVE'' ',
'     ;',
'',
'  ',
'       if l_count >=1 then ',
'            return ''You must have one active rate for each charge head for a giving period'';',
'      end if; ',
'     ',
'     ',
'end ;'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'nvl(apex_application.g_inline_validation_error_cnt,0) = 0'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22292167476191323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22244927722764036)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Rates - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Changes Saved!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22554188055089145)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(22244927722764036)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if APEX_COLLECTION.COLLECTION_EXISTS (:P33_COLLECTION_NAME)  then ',
'    APEX_COLLECTION.DELETE_COLLECTION ( :P33_COLLECTION_NAME);',
'end if;',
' APEX_COLLECTION.CREATE_COLLECTION( :P33_COLLECTION_NAME);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22554222632089146)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(22244927722764036)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'    APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => :P33_COLLECTION_NAME,',
'        p_n001 => :RATE_ID,',
'        p_c002 => :APEX$ROW_STATUS ,',
'        p_c003 => :CHARGE_HEAD,',
'        p_c004 => :AIRCRAFT_TYPE,',
'        p_c005 => :CHARGE_UNIT_TYPE,',
'        p_d001 => :EFFECTIVE_FROM,',
'        p_d002 => :EFFECTIVE_TO,',
'        p_c006 => :airport_FROM,',
'        p_c007 => :AIRPORT_TO,',
'        p_c008 => :STATUS',
'      );',
'End;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/delete_00038
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>38);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Dashboard'
,p_step_title=>'Dashboard'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.a-IRR-headerLink'').hide();',
'$(''.a-IRR-controlsContainer'').hide();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#last5_aircarft td {',
'  line-height:3;',
'}',
'',
'.total-row{',
'    font-size:12px;',
'    font-weight:bold;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181112160020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23246781879860284)
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
 p_id=>wwv_flow_api.id(23296260255549101)
,p_plug_name=>'Last  5 Years Revenue'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(23296357472549102)
,p_region_id=>wwv_flow_api.id(23296260255549101)
,p_chart_type=>'line'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(23296453747549103)
,p_chart_id=>wwv_flow_api.id(23296357472549102)
,p_seq=>10
,p_name=>'Revenue'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  with a as (select to_char(a.contract_date,''YYYY'') year ,',
'               contract_seq ',
'      from chr_contract_mst a',
'      ) ,',
'     b as (SELECT TO_CHAR(SYSDATE,''YYYY'')-LEVEL+1  year',
'            FROM DUAL',
'            CONNECT BY LEVEL <= 5',
'        ) ',
' select b.year,',
'          sum( pkg_workflow.get_revenue(a.contract_seq)) revenue,',
'          ''Revenue'' serie,',
'          ''green'' color',
' from a, b',
' where  a.year(+) = b.year',
' group by  b.year  ',
' order by year',
'     '))
,p_series_name_column_name=>'SERIE'
,p_items_value_column_name=>'REVENUE'
,p_items_label_column_name=>'YEAR'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(23296712610549106)
,p_chart_id=>wwv_flow_api.id(23296357472549102)
,p_seq=>20
,p_name=>'Lost'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  with a as (select to_char(a.contract_date,''YYYY'') year ,',
'               contract_seq ',
'      from chr_contract_mst a',
'      ) ,',
'     b as (SELECT TO_CHAR(SYSDATE,''YYYY'')-LEVEL+1  year',
'            FROM DUAL',
'            CONNECT BY LEVEL <= 5',
'        ) ',
' select b.year,',
'          sum( pkg_workflow.get_expense(a.contract_seq)) revenue,',
'          ''Expense'' serie,',
'          ''red'' color',
' from a, b',
' where  a.year(+) = b.year',
' group by  b.year  ',
' order by year',
'     '))
,p_series_name_column_name=>'SERIE'
,p_items_value_column_name=>'REVENUE'
,p_items_label_column_name=>'YEAR'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(23296558100549104)
,p_chart_id=>wwv_flow_api.id(23296357472549102)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(23296662333549105)
,p_chart_id=>wwv_flow_api.id(23296357472549102)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23870184587920339)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   ''Charter Contract''   as label,',
'       to_char(count(*),''9G990'') as value',
'       ',
'  from chr_contract_mst ',
' where contract_date between :APP_FIRST_DAY_YEAR_DATE and :APP_LAST_DAY_YEAR_DATE',
'',
' union all',
'select   ''Charter Package''   as label,',
'         to_char(count(*),''9G990'') value ',
'   from (',
'       select distinct b.contract_seq ',
'       from chr_package_infos a ,',
'            chr_contract_mst b',
'       where a.contract_seq = b.contract_seq',
'         and contract_date between :APP_FIRST_DAY_YEAR_DATE and :APP_LAST_DAY_YEAR_DATE',
'        )',
' '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'2'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'Y'
,p_attribute_09=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46315046147039198)
,p_plug_name=>'Last 5 years Aircrafts Report'
,p_region_name=>'last5_aircarft'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with ',
'contract as (',
'select  ',
'       to_char(contract_date,''YYYY'')contract_date ,',
'      nvl(aircraft_type,'' '')aircraft_type',
' from chr_contract_mst',
'    )',
'   ,',
'dates as',
'    (SELECT TO_CHAR(SYSDATE,''YYYY'')-LEVEL+1  year',
'     FROM DUAL',
'     CONNECT BY LEVEL <= 5',
'     )',
' ',
' select nvl(count(contract_date),0) nbre,  ',
'        dates.year,',
'         nvl(aircraft_type,'' '')aircraft_type',
' from contract ,',
'       dates    ',
' where contract_date(+) = dates.year',
'   --and aircraft_type is not null                                        ',
' group by aircraft_type,',
'          dates.year',
' order by 1',
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
 p_id=>wwv_flow_api.id(46315159512039199)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'0'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>46315159512039199
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23264412785378875)
,p_db_column_name=>'NBRE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nbre'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23264830473378877)
,p_db_column_name=>'YEAR'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23265297733378877)
,p_db_column_name=>'AIRCRAFT_TYPE'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Aircraft Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(46372507486746521)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'232656'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'NBRE_TYPE:YEAR:AIRCRAFT_TYPE'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(23269601951412277)
,p_report_id=>wwv_flow_api.id(46372507486746521)
,p_pivot_columns=>'YEAR'
,p_row_columns=>'AIRCRAFT_TYPE'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(23270056010412278)
,p_pivot_id=>wwv_flow_api.id(23269601951412277)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'NBRE'
,p_db_column_name=>'PFC1'
,p_column_label=>' '
,p_format_mask=>'999G999G999G999G990'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46343337204111457)
,p_plug_name=>'RFQ Vs Contract Vs Package / Aircraft'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(23290423838451109)
,p_region_id=>wwv_flow_api.id(46343337204111457)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(23292141915451110)
,p_chart_id=>wwv_flow_api.id(23290423838451109)
,p_seq=>10
,p_name=>'RFQ Vs Contract Vs Package / Aircraft'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' with data as ',
'  (select distinct',
'          b.aircraft_type, ',
'          a.rfq_id nbr,',
'          ''Contract'' name',
'         ',
'      from chr_contract_mst a,',
'           chr_contract_rfq b,',
'           chr_package_infos c',
'    where  b.id   = a.rfq_id(+)',
'      and c.contract_seq(+) = a.contract_seq',
'       ',
'      union all',
'      select distinct',
'          b.aircraft_type, ',
'          b.id nbr,',
'          ''RFQ'' name',
'      from chr_contract_mst a,',
'           chr_contract_rfq b,',
'           chr_package_infos c',
'    where  b.id   = a.rfq_id(+)',
'      and c.contract_seq(+) = a.contract_seq',
'   ',
'      union all',
'      select distinct',
'          b.aircraft_type, ',
'          c.contract_seq nbr,',
'          ''Package'' name',
'      from chr_contract_mst a,',
'           chr_contract_rfq b,',
'           chr_package_infos c',
'    where  b.id   = a.rfq_id(+)',
'      and c.contract_seq(+) = a.contract_seq',
')',
'',
'select b.aircraft_type,',
'       count(nbr)nbre  ,',
'        name',
' from data a,',
'      (select onetime_value aircraft_type',
'        from chr_onetime_mst',
'        where onetime_type = ''AIRCRAFT''',
'      )  b',
'where a.aircraft_type(+) = b.aircraft_type',
'group by b.aircraft_type,name'))
,p_series_name_column_name=>'NAME'
,p_items_value_column_name=>'NBRE'
,p_items_label_column_name=>'AIRCRAFT_TYPE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(23290970791451109)
,p_chart_id=>wwv_flow_api.id(23290423838451109)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(23291559869451110)
,p_chart_id=>wwv_flow_api.id(23290423838451109)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46386881013207209)
,p_plug_name=>'Most On demand Aircraft'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(23247697020863768)
,p_region_id=>wwv_flow_api.id(46386881013207209)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_value_format_scaling=>'auto'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(23248118397863769)
,p_chart_id=>wwv_flow_api.id(23247697020863768)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(a.aircraft_type),',
'        a.aircraft_type',
'  from chr_contract_mst a   ',
'-- where  and a.contract_seq in (select distinct contract_seq from chr_package_infos)',
' group by a.aircraft_type',
' ',
' '))
,p_items_value_column_name=>'COUNT(A.AIRCRAFT_TYPE)'
,p_items_label_column_name=>'AIRCRAFT_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'ALL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46691856452553076)
,p_plug_name=>'Revenue per Aircraft '
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(23554664837209653)
,p_region_id=>wwv_flow_api.id(46691856452553076)
,p_chart_type=>'line'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_time_axis_type=>'mixedFrequency'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(23556381019209654)
,p_chart_id=>wwv_flow_api.id(23554664837209653)
,p_seq=>10
,p_name=>'Revenue per Aircraft - Line'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'       to_date( b.months ,''Month'') mon,',
'        sum(profit) profit ,',
'        nvl(upper(aircraft_type),''B767-200ER'') aircraft_type',
'       ',
'from (',
'    select  to_char(contract_date,''Month'') mon, ',
'           aircraft_type,',
'          pkg_workflow.get_revenue(contract_seq)profit',
'      from chr_contract_mst a ',
'      -- where nvl(expiry_date,sysdate) >=sysdate',
'     -- where  a.contract_date between :P38_FROM and :P38_TO',
'       ), (SELECT to_char(add_months(SYSDATE, (LEVEL-1 )),''Month'') as months ',
'              FROM dual ',
'            CONNECT BY LEVEL <= 12) b',
' where ( b.months = mon(+) )',
'group by   b.months,',
'           nvl(upper(aircraft_type),''B767-200ER'')',
'   order by to_date( b.months,''Month'')',
''))
,p_ajax_items_to_submit=>'P38_FROM,P38_TO'
,p_series_name_column_name=>'AIRCRAFT_TYPE'
,p_items_value_column_name=>'PROFIT'
,p_items_label_column_name=>'MON'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(23555153104209654)
,p_chart_id=>wwv_flow_api.id(23554664837209653)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_numeric_pattern=>'MMMM'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(23555708797209654)
,p_chart_id=>wwv_flow_api.id(23554664837209653)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23691332218722324)
,p_name=>'P38_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46315046147039198)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' TRUNC(TO_DATE(sysdate),''YEAR'') ',
''))
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23691648426723899)
,p_name=>'P38_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46315046147039198)
,p_item_default=>' ADD_MONTHS(TRUNC (SYSDATE ,''YEAR''),12)-1'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23139903734343448)
,p_name=>'aftrer refresh'
,p_event_sequence=>10
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23140009267343449)
,p_event_id=>wwv_flow_api.id(23139903734343448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''tbody'').append(''<tr><th class="a-IRR-header a-IRR-header--pivotRow u-tL"><B>Total</b></th><td class="u-tR total-row"></td> <td class="u-tR total-row"></td><td class="u-tR total-row"></td> <td class="u-tR total-row"></td><td class="u-tR total-row">'
||'</td></tr>'');',
'for (i = 0 ; i <5 ; i++ ){',
'   l =  $(''tr'').find(''td:eq(''+i+'')'').length;',
'    arrayElement = $(''tr'').find(''td:eq(''+i+'')'') ;',
'    ',
'    lastElement  =  $(''tr'').find(''td:eq(''+i+'')'')[l-1] ;',
'    ',
'    var sum =0;',
'    for (j=0;j<l-1;j++) sum = sum +  Number(($(''tr'').find(''td:eq(''+i+'')'')[j]).innerText);',
'   ',
'     lastElement.innerText=sum;',
'}'))
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

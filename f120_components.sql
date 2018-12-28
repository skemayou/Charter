prompt --application/set_environment/30696104795118256
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
--   Date and Time:   16:03 Friday December 28, 2018
--   Exported By:     SUZY
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     APP PROCESS: display_photo
--     BREADCRUMB:  Breadcrumb
--     BREADCRUMB ENTRY:  Breadcrumb: Edit (41)
--     BREADCRUMB ENTRY:  Breadcrumb: Documentation (18)
--     LIST: Masters
--     LIST: Desktop Navigation Bar
--     LIST: Desktop Navigation Menu
--     PAGE: 18. Documentation
--     PAGE: 9005. Documentation 
--     PAGE: 41. Edit
--     PAGE: 20. Charter in Progress
--     PAGE: 43. help content image
--     PAGE: 9006. Display Image
--     PAGE: 0. Global Page - Desktop
--     PAGE: 21. Request for Quote
--   Manifest End
--   Version:         18.1.0.00.45
--   Instance ID:     61930891962732
--

-- C O M P O N E N T    E X P O R T
begin
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/logic/application_processes/30696104795118256
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(30696104795118256)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'display_photo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' l_photo  blob;',
'BEGIN',
'   -- Images sources',
'     ',
'       ',
'       ',
'     select blob_content ',
'       into l_photo',
'        from APP_HELP_CONTENT_IMAGES',
'        where id = 146501542275019936731731645799329176236',
'      ;',
'      ',
'    ',
'      ',
'   -- download prcess',
'      -- Set Header',
'      sys.owa_util.mime_header(',
'      ccontent_type => ''image/jpeg'',',
'        bclose_header => false',
'      );',
'',
'      sys.htp.p(''Content-length: '' || dbms_lob.getlength(l_photo));',
'',
'    --  sys.htp.p(''Content-Disposition: inline; filename="'' || l_photo.filename || ''"'');',
'',
'      sys.owa_util.http_header_close;',
'',
'      -- download the BLOB',
'      sys.wpg_docload.download_file(p_blob => l_photo);',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(93134360219489178)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11481948766561296)
,p_parent_id=>wwv_flow_api.id(18558703885971419)
,p_short_name=>'&APP20_BREADCRUM_TITLE. '
,p_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11518599847018609)
,p_parent_id=>wwv_flow_api.id(11481948766561296)
,p_short_name=>'Task - &P23_TASK_NAME.'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17939857018499746)
,p_parent_id=>wwv_flow_api.id(11481948766561296)
,p_short_name=>'User  Notes'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18451123179957613)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Charter Task Status'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18514705116223521)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Task Status'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19::'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18527478449396411)
,p_parent_id=>0
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18528538299417629)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Status progress'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18535512632478683)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Role'
,p_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18539495573490504)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Emails'
,p_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18558586720963657)
,p_parent_id=>0
,p_short_name=>'List contract'
,p_link=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:::'
,p_page_id=>104
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18558703885971419)
,p_parent_id=>wwv_flow_api.id(18558586720963657)
,p_short_name=>'Contract - &P105_CONTRACT_SEQ.'
,p_link=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:::'
,p_page_id=>105
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18582233097847632)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Status Progress'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19159706705936214)
,p_parent_id=>wwv_flow_api.id(22084748622362925)
,p_short_name=>'Contract & RFQ Statuses'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19199815058334982)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Contract Statuses Progress'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19353794213986317)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Airport Master'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19354749071994427)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>' Onetime Masters'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19355409940002100)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>' System Main Flow'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19356873968016057)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'List of Users'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19358567635038232)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'User Role '
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21961769076443926)
,p_parent_id=>wwv_flow_api.id(22084748622362925)
,p_short_name=>'Document Structure'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22005666474413501)
,p_parent_id=>wwv_flow_api.id(11481948766561296)
,p_short_name=>'&APP_PREVIEW_TITLE.'
,p_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22084748622362925)
,p_parent_id=>0
,p_short_name=>'Document Setup'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22119160404544972)
,p_parent_id=>0
,p_short_name=>'Request for Quote'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22149441702159747)
,p_parent_id=>wwv_flow_api.id(22119160404544972)
,p_short_name=>'Quote - &P31_ID.'
,p_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22287502560102118)
,p_parent_id=>wwv_flow_api.id(18558703885971419)
,p_short_name=>'Calculator'
,p_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22289747192184352)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Charter Rate Master'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22433047830473281)
,p_short_name=>'Charge Head Type'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23092668883015581)
,p_short_name=>'Annual report'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23100996069228961)
,p_parent_id=>0
,p_short_name=>'RFQ Vs Contract Vs Package per Aircraft'
,p_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23144831575441235)
,p_parent_id=>0
,p_short_name=>'Annual Revenue/Aircraft'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23247102366860284)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23308863745696510)
,p_parent_id=>wwv_flow_api.id(11481948766561296)
,p_short_name=>'Invoice & Billing'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(30714914555028171)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_short_name=>'Documentation'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(30725901711066679)
,p_parent_id=>wwv_flow_api.id(30714914555028171)
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(93134749003489180)
,p_parent_id=>0
,p_short_name=>'Actives Charters'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry/30725901711066679
begin
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(30725901711066679)
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_parent_id=>wwv_flow_api.id(30714914555028171)
,p_option_sequence=>10
,p_short_name=>'Edit'
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry/30714914555028171
begin
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(30714914555028171)
,p_menu_id=>wwv_flow_api.id(93134360219489178)
,p_parent_id=>wwv_flow_api.id(18527478449396411)
,p_option_sequence=>10
,p_short_name=>'Documentation'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
end;
/
prompt --application/shared_components/navigation/lists/masters
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(93146436618026313)
,p_name=>'Masters'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93146608983026314)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Airport Master'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:::'
,p_list_item_icon=>'fa-plane'
,p_list_text_01=>'Airport master. Maintain the Airport information and Timezones.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93203605115192984)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Onetime Master'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:::'
,p_list_item_icon=>'fa-cogs'
,p_list_text_01=>'Onetime master. Maintain all one time codes and values here.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93361729125645425)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'System Flow'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:::'
,p_list_item_icon=>'fa-tiles-3x3'
,p_list_text_01=>'System Flow Diagram. Content of this flow would display the structure of the system.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93600255099837931)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'User Master'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:::'
,p_list_item_icon=>'fa-tiles-3x3'
,p_list_text_01=>'System Flow Diagram. Content of this flow would display the structure of the system.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22288262702176712)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Charter Rate Master'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tiles-3x3'
,p_list_text_01=>'Manage System Rate'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30734813689180667)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Documentation'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:::'
,p_list_item_icon=>'fa-tiles-3x3'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(93132943870489149)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30662304981223574)
,p_list_item_display_sequence=>0
,p_list_item_link_text=>'&nbsp;'
,p_list_item_link_target=>'javascript:void(0)'
,p_list_item_icon=>'fa fa-question-circle'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from app_help_content ',
'where page_id = :APP_PAGE_ID'))
,p_list_text_02=>'charter-help-btn'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(93133195248489159)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'&LOGOUT_URL. '
,p_list_item_icon=>' fa-sign-out'
,p_list_item_current_type=>'TARGET_PAGE'
);
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
,p_list_item_current_for_pages=>'2,3,4,6,19,26,28,29,33,34,18,41'
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
prompt --application/pages/delete_00018
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>18);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Documentation'
,p_step_title=>'Documentation'
,p_step_sub_title=>'Documentation'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181227185916'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30714599259028171)
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
 p_id=>wwv_flow_api.id(30715102077028172)
,p_plug_name=>'Documentation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93098907647489117)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'APP_HELP_CONTENT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(30715237192028172)
,p_name=>'Documentation'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SUZY'
,p_internal_uid=>30715237192028172
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30715600146028174)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41:P41_ID,P41_PAGE_ID:#ID#,#PAGE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30716064695028174)
,p_db_column_name=>'CONTENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Content'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'PCT_GRAPH:::'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30716406642028179)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30716889024028180)
,p_db_column_name=>'TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30717240620028180)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30717908187028906)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'307180'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PAGE_ID:CONTENT:TYPE:ITEM_NAME:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30667615120251337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30714599259028171)
,p_button_name=>'create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Documentation'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RP,41::'
);
end;
/
prompt --application/pages/delete_09005
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>9005);
end;
/
prompt --application/pages/page_09005
begin
wwv_flow_api.create_page(
 p_id=>9005
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Documentation '
,p_page_mode=>'MODAL'
,p_step_title=>'Documentation '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img[alt=''animate''] {',
'    width: 100%;',
'    height: auto;',
'}',
'',
'.js-stickyWidget-placeholder{',
'display:none;',
'}',
'',
'#content {',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'900'
,p_dialog_width=>'1400'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181227184328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30666516326251326)
,p_plug_name=>'New'
,p_region_name=>'content_reg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089401129489112)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select replace(CONTENT,''APP_SESSION'',v(''SESSION'') )content',
'from APP_HELP_CONTENT',
'where page_id = :P9005_PAGE_ID;'))
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
 p_id=>wwv_flow_api.id(30666722952251328)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No documentation found.'
,p_show_nulls_as=>'-'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'SUZY'
,p_internal_uid=>30666722952251328
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30667416348251335)
,p_db_column_name=>'CONTENT'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'Content'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_static_id=>'content'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30703915376519488)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'307040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CONTENT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30664252663251303)
,p_name=>'P9005_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30666516326251326)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30667502179251336)
,p_name=>'P9005_IMAGE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30666516326251326)
,p_use_cache_before_default=>'NO'
,p_source=>'IMAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30667213198251333)
,p_name=>'zoom image'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_id'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30667325541251334)
,p_event_id=>wwv_flow_api.id(30667213198251333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pthis     = this.triggeringElement ;',
'image_id  = $(pthis).attr(''image_id'');',
'app.server_process(''prepare_url'',[9006,''P9006_ID'',image_id]);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30665906188251320)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'display_photo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' l_photo  blob;',
'BEGIN',
'   -- Images sources',
'     ',
'       ',
'       ',
'     select blob_content ',
'       into l_photo',
'        from APP_HELP_CONTENT_IMAGES',
'        where id = :P9005_IMAGE_ID',
'      ;',
'      ',
'    ',
'      ',
'   -- download prcess',
'      -- Set Header',
'      sys.owa_util.mime_header(',
'      ccontent_type => ''image/jpeg'',',
'        bclose_header => false',
'      );',
'',
'      sys.htp.p(''Content-length: '' || dbms_lob.getlength(l_photo));',
'',
'    --  sys.htp.p(''Content-Disposition: inline; filename="'' || l_photo.filename || ''"'');',
'',
'      sys.owa_util.http_header_close;',
'',
'      -- download the BLOB',
'      sys.wpg_docload.download_file(p_blob => l_photo);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/delete_00041
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>41);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Edit'
,p_step_title=>'Edit'
,p_step_sub_title=>'Edit'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    width: 1000px;',
'    height: 800px;',
'}',
'',
'.js-stickyWidget-placeholder{',
'display:none;',
'}',
'',
'#content {',
'    display:none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181227180243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30725527724066679)
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
 p_id=>wwv_flow_api.id(61383866302317948)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(93089401129489112)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_USER = ''SUZY'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30721139183066653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30725527724066679)
,p_button_name=>'upload'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload File'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_CONTENT_ID:&P41_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30720710844066652)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30725527724066679)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30721504165066656)
,p_name=>'P41_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_prompt=>'Page ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_id || '' - '' ||page_name, page_id',
'from APEX_APPLICATION_PAGES',
' where application_id = 120',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30721940935066657)
,p_name=>'P41_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Form;Form,Item;Item,Report;Report'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30722318821066657)
,p_name=>'P41_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_prompt=>'Content'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cSize=>120
,p_cMaxlength=>32767
,p_cHeight=>50
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_02=>'Full'
,p_attribute_03=>'Y'
,p_attribute_04=>'moonocolor'
,p_attribute_05=>'top'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30722731749066657)
,p_name=>'P41_PAGE_REGION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30723184867066664)
,p_name=>'P41_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30723543756066664)
,p_name=>'P41_IMAGE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30723912826066665)
,p_name=>'P41_IMAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(61383866302317948)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30727745899066681)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30721139183066653)
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30728242779066682)
,p_event_id=>wwv_flow_api.id(30727745899066681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_IMAGE_ID'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P43_ID'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30728707781066683)
,p_event_id=>wwv_flow_api.id(30727745899066681)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P41_IMAGE  := ''<img class="image_content" image_id ="''|| :P41_IMAGE_ID ||''" width =600 height=300  src="f?p='' || :APP_ID || '':'' || :APP_PAGE_ID || '':&SESSION.:APPLICATION_PROCESS=display_photo:::P41_IMAGE_ID:'' || :P41_IMAGE_ID|| ',
'                      ''"/>'';'))
,p_attribute_02=>'P41_IMAGE_ID'
,p_attribute_03=>'P41_IMAGE'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30729279764066684)
,p_event_id=>wwv_flow_api.id(30727745899066681)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'CKEDITOR.instances.P41_CONTENT.insertHtml($(''#P41_IMAGE'').val());'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30729648067066684)
,p_name=>'zoom image'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.image_id'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30730179253066691)
,p_event_id=>wwv_flow_api.id(30729648067066684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pthis     = this.triggeringElement ;',
'image_id  = $(pthis).attr(''image_id'');',
'app.server_process(''prepare_url'',[9006,''P9006_ID'',image_id]);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30726998879066680)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DML APP_HELP_CONTENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P41_CONTENT := replace (:P41_CONTENT,:SESSION,''APP_SESSION'');',
' ',
'  if :P41_ID is null then ',
'    insert into APP_HELP_CONTENT (page_id,content )',
'    values (:P41_PAGE_ID,:P41_CONTENT)',
'    return id ',
'    into :P41_ID',
'    ;',
'  else ',
'     update APP_HELP_CONTENT',
'     set content = :P41_CONTENT',
'     where id = :P41_ID',
'     ;',
'  end if;',
'end ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30726118523066680)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'fetch APP_HELP_CONTENT'
,p_attribute_02=>'APP_HELP_CONTENT'
,p_attribute_03=>'P41_PAGE_ID'
,p_attribute_04=>'PAGE_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30727387542066680)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select replace(CONTENT,''APP_SESSION'',:SESSION),page_id,id',
' into :P41_CONTENT,:P41_PAGE_ID,:P41_ID',
'from APP_HELP_CONTENT',
'where page_id = :P41_PAGE_ID;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P41_PAGE_ID is not null '
,p_process_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30726554235066680)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'display_photo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' l_photo  blob;',
'BEGIN',
'   -- Images sources',
'     ',
'       ',
'       ',
'     select blob_content ',
'       into l_photo',
'        from APP_HELP_CONTENT_IMAGES',
'        where id = :P41_IMAGE_ID',
'      ;',
'      ',
'    ',
'      ',
'   -- download prcess',
'      -- Set Header',
'      sys.owa_util.mime_header(',
'      ccontent_type => ''image/jpeg'',',
'        bclose_header => false',
'      );',
'',
'      sys.htp.p(''Content-length: '' || dbms_lob.getlength(l_photo));',
'',
'    --  sys.htp.p(''Content-Disposition: inline; filename="'' || l_photo.filename || ''"'');',
'',
'      sys.owa_util.http_header_close;',
'',
'      -- download the BLOB',
'      sys.wpg_docload.download_file(p_blob => l_photo);',
'END;'))
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
,p_last_upd_yyyymmddhh24miss=>'20181227163250'
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
end;
/
begin
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
'order by 13 DESC'))
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
prompt --application/pages/delete_00043
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>43);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'help content image'
,p_page_mode=>'MODAL'
,p_step_title=>'help content image'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181227144328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30679709434565789)
,p_plug_name=>'help content image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30680172079565790)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(30679709434565789)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(93122224425489132)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30682466081565792)
,p_name=>'P43_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30679709434565789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30682857643565797)
,p_name=>'P43_CONTENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30679709434565789)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30683229837565798)
,p_name=>'P43_BLOB_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30679709434565789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Blob Content'
,p_source=>'BLOB_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30684053323565800)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from APP_HELP_CONTENT_IMAGES'
,p_attribute_02=>'APP_HELP_CONTENT_IMAGES'
,p_attribute_03=>'P43_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30684491513565800)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of APP_HELP_CONTENT_IMAGES'
,p_attribute_02=>'APP_HELP_CONTENT_IMAGES'
,p_attribute_03=>'P43_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P43_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30665163264251312)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close the modal'
,p_attribute_01=>'P43_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/delete_09006
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>9006);
end;
/
prompt --application/pages/page_09006
begin
wwv_flow_api.create_page(
 p_id=>9006
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Display Image'
,p_page_mode=>'MODAL'
,p_step_title=>'Display Image'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181224160103'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30666933771251330)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30667079717251331)
,p_name=>'P9006_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30666933771251330)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(93121766229489130)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select blob_content',
'from app_help_content-images',
'where id= :P9006_ID'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30667194175251332)
,p_name=>'P9006_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30666933771251330)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/delete_00000
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>0);
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(93133081236489149)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'SUZY'
,p_last_upd_yyyymmddhh24miss=>'20181221202541'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48638109193296176)
,p_plug_name=>'System WorKflow'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(93099404070489118)
,p_plug_display_sequence=>0
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(11470415120518622)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(93121039199489129)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':APP_PAGE_ID in (105,20,23,31,39)'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18608163836067321)
,p_name=>'P0_CHARTER_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48638109193296176)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18608257323067322)
,p_name=>'P0_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48638109193296176)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18904336079237408)
,p_name=>'P0_EMAIL_SEQ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48638109193296176)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18906571263237430)
,p_name=>'P0_SYS_WRK_SEQ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48638109193296176)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17825652618052542)
,p_name=>'AutFadeSuccessMesage'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17825733609052543)
,p_event_id=>wwv_flow_api.id(17825652618052542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.setThemeHooks({',
'  beforeShow: function(pMsgType, pElement$){',
'    ',
'    setTimeout(function() {',
'      $(''.t-Alert'').fadeOut(''slow'');',
'    }, 5000);  ',
'  }',
'});',
'',
'$(''div#t_Alert_Success'').closest(''div.t-Body-alert'').delay(5000).fadeOut();',
'$(''div.t-Body-alert'').delay(5000).fadeOut();',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23005387343198759)
,p_name=>'getCustomerInformation'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.customer_name'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23005781582198760)
,p_event_id=>wwv_flow_api.id(23005387343198759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var customer = $(this.triggeringElement).val();',
'console.log(customer);',
'app.server_process(''GetCustomerInformation'',[customer]);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25033839968117079)
,p_name=>'Tooglle Tree on label click'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-TreeView-content'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25034272231117080)
,p_event_id=>wwv_flow_api.id(25033839968117079)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pthis= this.triggeringElement;',
'paction = $(pthis).closest(''li'').find(''span.a-TreeView-toggle:first'');',
'paction.click();',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25003833062499950)
,p_name=>'open help page'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.charter-help-btn'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30664004234251301)
,p_event_id=>wwv_flow_api.id(25003833062499950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'urlData =[9005,''P9005_PAGE_ID'',$v(''pFlowStepId''),''charter-help-btn''];',
'app.server_process(''prepare_url'',urlData);'))
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
'    background: #ecd60a;',
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
,p_last_upd_yyyymmddhh24miss=>'20181217200517'
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
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

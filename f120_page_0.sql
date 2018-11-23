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
--   Date and Time:   19:35 Friday November 23, 2018
--   Exported By:     SUZY
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         18.1.0.00.45
--   Instance ID:     61930891962732
--

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
,p_last_upd_yyyymmddhh24miss=>'20181123192943'
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
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done

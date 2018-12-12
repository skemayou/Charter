--REPORT 

 with data as
(
      select null parent ,
             'Maintenance Librairy' id,
             'Maintenance Librairy' value,
             'Maintenance Librairy' title,
             'fa-3x fa-folder-open  faa-shake animated-hover ' as icon,
               APEX_PAGE.GET_URL (
                            p_page   => :app_page_id,
                         p_clear_cache =>24,
                            p_items  => 'P13_PARENT_FOLDER,P13_ROOT_FOLDER',
                            p_values =>  'Maintenance Librairy,Maintenance Librairy' )  link,
              null card_subtitle,
              null updtim,
              1 sequence
      from dual --- root folder
      union all
      select distinct 
             partwo as parent ,
             parone as id,
             parone value,
             parone title,
             'fa-3x fa-folder-open  faa-shake animated-hover ' as icon,
               APEX_PAGE.GET_URL (
                            p_page   => :app_page_id,
                         p_clear_cache =>24,
                            p_items  => 'P13_PARENT_FOLDER',
                            p_values =>  parone )  link,
             null card_subtitle,
               null,
             2 sequence
      from  cl_docs
      where partwo is not null 
     union all
      select parone as parent, 
             filename as id,
             filename value,
             filename title,
               case when instr(upper(filename),'.PPT') > 0or instr(upper(filename),'.PPTX') > 0 then
                    ' fa fa fa-file-powerpoint fa-2x'
                when instr(upper(filename),'.XLS') > 0 or instr(upper(filename),'.XLSX') > 0 then
                    'fa fa fa-file-excel-o fa-2x'
                when instr(upper(filename),'.DOC') > 0 or instr(upper(filename),'.DOCX') > 0 then
                    'fa fa fa-file-word-o'
                when instr(upper(filename),'.PDF') > 0 then
                    'fa fa fa-file-pdf-o fa-2x'
                when instr(upper(filename),'.GIF') > 0 or
                     instr(upper(filename),'.PNG') > 0 or
                     instr(upper(filename),'.TIFF') > 0 or
                     instr(upper(filename),'.JPG') > 0 then
                    'fa fa fa-file-image-o fa-2x'
              else
                  'fa fa fa-file-o fa-2x' 
              end as icon,
               'javascript: window.open("'|| APEX_UTIL.GET_BLOB_FILE_SRC('P24_FILE_BLOB',id) ||'") ' link,
             updusr card_subtitle,
             updtim   ,
             3 sequence
       from  cl_docs  
       where parone is not null
                  
)
select case when connect_by_isleaf = 1 then 0 when level = 1 then 1 else -1 end as status,
        level,
        title as card_title,
        icon card_icon,
        value as value,
        null as tooltip,
        link,
        card_subtitle,
        null card_initials,
        link  card_link,
        updtim
   from data
  where nvl(parent,0) = nvl(:P13_PARENT_FOLDER,0)
  start with nvl(parent,0) = nvl(:P13_PARENT_FOLDER,0)
 connect by prior id = parent
 order siblings by sequence,title


 --- BREADCRUMB 
 
 
 declare 
  path apex_t_varchar2;
begin

     for i in (        select  gg

                        from (

                        with data as
                        (
                              select null parent ,
                                     'Maintenance Librairy' id,
                                     'Maintenance Librairy' value,
                                     'Maintenance Librairy' title
                              from dual 
                              union all
                              select distinct 
                                     partwo as parent ,
                                     parone as id,
                                     parone value,
                                     parone title
                              from  cl_docs
                              where partwo is not null 

                        )
                        select case when connect_by_isleaf = 1 then 0 when level = 1 then 1 else -1 end as status,
                                level,
                                SYS_CONNECT_BY_PATH(id, '/') gg
                           from data
                         -- where parent = 'Maintenance Librairy'
                        --start with  parent = 'Procedures Manuals'
                        connect by prior id = parent
                          order siblings by title
                          )
                          where status =0
                          and instr (gg,:P13_PARENT_FOLDER)>0
                           and instr (gg,:P13_ROOT_FOLDER)>0
                           and rownum =1
                           )
                          
                     loop
                          
                        path := apex_string.split(i.gg,'/') ;
                        
                        htp.p('<div>');
                        for j in 1..path.count loop 
                          
                            if path(j) = :P13_PARENT_FOLDER then 
                               htp.p(:P13_PARENT_FOLDER) ;
                               exit;
                            else
                            
                                htp.p('<a href="'|| APEX_PAGE.GET_URL (
                                                    p_page   => :app_page_id,
                                                    p_clear_cache =>24,
                                                    p_items  => 'P13_PARENT_FOLDER',
                                                    p_values =>  path(j) ) 
                                                 || '">' || nvl(path(j),'<span class="fa fa-home"/>') || '</a>'
                                     ) ;
                                 htp.p (' / ')   ; 
                           end if;
                   

         end loop;
    end loop;
      htp.p('</div>');
end;
 
 
 
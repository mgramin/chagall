select table_name
     , sum(raw_total_size) as total_size
  from (select case
                 when rank() over (order by raw_total_size desc) <= %s then table_name
                 else 'others'
               end as table_name
             , raw_total_size
          from (select table_name
                     , pg_total_relation_size(quote_ident(table_name)) as raw_total_size
                  from information_schema.tables
                 where table_schema = %s) s) s
 group by table_name
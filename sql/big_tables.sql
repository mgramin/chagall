select table_name
     , rank
     , sum(raw_total_size) as total_size
  from (select table_name
             , rank() over (order by raw_total_size desc) as rank
             , raw_total_size
          from (select table_name
                     , pg_total_relation_size(quote_ident(table_name)) as raw_total_size
                  from information_schema.tables
                 where table_schema = %(schema_name)s ) as base) as agg
 where rank <= %(max_table_count)s
 group by table_name, rank

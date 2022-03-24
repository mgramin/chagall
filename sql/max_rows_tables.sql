select table_name
     , sum(rows_count) as rows_count
     , rank as id
  from (select relname as table_name
             , rank() over (order by n_live_tup desc) as rank
             , n_live_tup as rows_count
          from pg_stat_all_tables
         where schemaname = %(schema_name)s) s
 where rank <= %(max_table_count)s
 group by table_name, rank
 order by 2 desc

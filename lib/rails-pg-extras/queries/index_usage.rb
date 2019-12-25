# frozen_string_literal: true

module RailsPGExtras
  def self.index_usage_description
    "Index hit rate (effective databases are at 99% and up)"
  end

  def self.index_usage_sql
    <<-EOS
SELECT relname,
   CASE idx_scan
     WHEN 0 THEN 'Insufficient data'
     ELSE (100 * idx_scan / (seq_scan + idx_scan))::text
   END percent_of_times_index_used,
   n_live_tup rows_in_table
 FROM
   pg_stat_user_tables
 ORDER BY
   n_live_tup DESC;
EOS
  end
end

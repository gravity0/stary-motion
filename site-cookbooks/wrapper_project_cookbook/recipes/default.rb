# /* for mysql
node.set['mysql_user']['root']['password'] = 'password'
# /etc/my.cnf
# [mysqld]
# --------------------------------------------------
# Base
# --------------------------------------------------
node.set['mysql']['user'] = 'mysql'
node.set['mysql']['port'] = '3306'
node.set['mysql']['datadir'] = '/var/lib/mysql'
node.set['mysql']['socket'] = '/var/lib/mysql/mysql.sock'
node.set['mysql']['pid-file'] = '/var/run/mysqld/mysqld.pid'
node.set['mysql']['symbolic-links'] = '0'
node.set['mysql']['sql_mode'] = 'NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES' # Default: ''
node.set['mysql']['default-storage-engine'] = 'InnoDB' # Default: MyISAM (<= 5.5.4)
node.set['mysql']['transaction-isolation'] = 'REPEATABLE-READ' # Default: REPEATABLE-READ
node.set['mysql']['character-set-server'] = 'utf8'
node.set['mysql']['collation-server'] = 'utf8_general_ci'
node.set['mysql']['skip-character-set-client-handshake']['flag'] = true # Default: false
 
# --------------------------------------------------
# Replication
# --------------------------------------------------
# not use Replication for now
node.set['mysql']['server-id'] = '1'
node.set['mysql']['log-bin'] = 'mysql-bin'
 
# --------------------------------------------------
# Network
# --------------------------------------------------
# Global
node.set['mysql']['skip-networking']['flag'] = true
node.set['mysql']['skip-name-resolve']['flag'] = true
node.set['mysql']['max_connections'] = '100' # Default: 151
node.set['mysql']['max_connect_errors'] = '999999999' # Default: 10 (999999999: OFF)
node.set['mysql']['connect_timeout'] = '10' # Default: 10 seconds
node.set['mysql']['max_allowed_packet'] = '16M' # Default: 1048576 (1MB)
# Global, Session
node.set['mysql']['max_user_connections'] = '0' # Default: 0 (no limit)
node.set['mysql']['wait_timeout'] = '600' # Default: 28800 seconds
node.set['mysql']['interactive_timeout'] = '600' # Default: 28800 seconds
 
# --------------------------------------------------
# Logging
# --------------------------------------------------
node.set['mysql']['log_output'] = 'FILE' # Default: FILE
node.set['mysql']['log_warnings'] = '1' # Default: 1 (enabled)
node.set['mysql']['general_log'] = '0' # Default: 0 (OFF)
node.set['mysql']['general_log_file'] = '/var/log/mysql/query.log'
node.set['mysql']['log-slow-admin-statements'] = '1'
node.set['mysql']['log-queries-not-using-indexes'] = '1' # Default: 0 (OFF)
node.set['mysql']['slow_query_log'] = '1' # Default: 0 (OFF)
node.set['mysql']['slow_query_log_file'] = '/var/log/mysql/slow.log'
node.set['mysql']['long_query_time'] = '0.5' # Default: 10
node.set['mysql']['expire_logs_days'] = '14' # Default: 0 (no automatic removal)
 
# --------------------------------------------------
# Cache & Memory
# --------------------------------------------------
# Global
node.set['mysql']['thread_cache_size'] = '30' # Default: 0 (1/3 of max_connections)
node.set['mysql']['table_open_cache'] = '400' # Default: 400
node.set['mysql']['query_cache_size'] = '16M' # Default: 0
node.set['mysql']['query_cache_limit'] = '1M' # Default: 1048576 (1MB)
# Global, Session
node.set['mysql']['max_heap_table_size'] = '16M' # Default: 16777216 (16MB)
node.set['mysql']['tmp_table_size'] = '16M' # Default: 16777216 (16MB)
node.set['mysql']['sort_buffer_size'] = '2M' # Default: 2097144 (2MB)
node.set['mysql']['read_buffer_size'] = '131072' # Default: 131072
node.set['mysql']['join_buffer_size'] = '131072' # Default: 131072
node.set['mysql']['read_rnd_buffer_size'] = '262144' # Default: 262144
 
# --------------------------------------------------
# MyISAM
# --------------------------------------------------
# Global
node.set['mysql']['skip-external-locking']['flag'] = true # Default: true (ON)
node.set['mysql']['key_buffer_size'] = '8M' # Default: 8388608 (8MB)
node.set['mysql']['myisam_max_sort_file_size'] = '2G' # Default: 2147483648 (2GB)
node.set['mysql']['myisam_recover_options'] = 'DEFAULT' # Default: DEFAULT (0: OFF)
# Global, Session
node.set['mysql']['bulk_insert_buffer_size'] = '8M' # Default: 8388608 (8MB)
node.set['mysql']['myisam_sort_buffer_size'] = '8M' # Default: 8388608 (8MB)
 
# --------------------------------------------------
# InnoDB behavior
# --------------------------------------------------
# Global
node.set['mysql']['innodb_file_format'] = 'Barracuda' # Default: Barracuda (<= 5.5.6)
node.set['mysql']['innodb_write_io_threads'] = '4' # Default: 4
node.set['mysql']['innodb_read_io_threads'] = '4' # Default: 4
node.set['mysql']['innodb_stats_on_metadata'] = '1' # Default: 1 (ON)
node.set['mysql']['innodb_max_dirty_pages_pct'] = '90' # Default: 75
node.set['mysql']['innodb_adaptive_hash_index'] = '1' # Default: 1 (ON)
node.set['mysql']['innodb_adaptive_flushing'] = '1' # Default: 1 (ON)
node.set['mysql']['innodb_strict_mode'] = '1' # Default: 0 (OFF)
node.set['mysql']['innodb_io_capacity'] = '200' # Default: 200
node.set['mysql']['innodb_autoinc_lock_mode'] = '1' # Default: 1 (consecutive)
node.set['mysql']['innodb_change_buffering'] = 'inserts' # Default: inserts (<= 5.5.3)
node.set['mysql']['innodb_old_blocks_time'] = '500' # Default: 0 seconds
 
# --------------------------------------------------
# InnoDB base
# --------------------------------------------------
# Global
node.set['mysql']['innodb_buffer_pool_size'] = '256M' # 134217728 (128MB)
node.set['mysql']['innodb_data_home_dir'] = '/var/lib/mysql'
node.set['mysql']['innodb_data_file_path'] = 'ibdata1:1000M:autoextend' # Default: ibdata1:10M:autoextend
node.set['mysql']['innodb_file_per_table'] = '1' # Default: 1 (ON) (<= 5.5.6)
node.set['mysql']['innodb_autoextend_increment'] = '64M' # Default: 64 MB
node.set['mysql']['innodb_log_group_home_dir'] = '/var/lib/mysql'
node.set['mysql']['innodb_fast_shutdown'] = '0' # Default: 1
node.set['mysql']['innodb_log_file_size'] = '64M' # Default: 5242880 (5MB)
node.set['mysql']['innodb_log_files_in_group'] = '2' # Default: 2
node.set['mysql']['innodb_log_buffer_size'] = '8M' # Default: 8388608 (8MB)
node.set['mysql']['innodb_additional_mem_pool_size'] = '8M' # Default: 8388608 (8MB)
node.set['mysql']['innodb_thread_concurrency'] = '8' # Default: 0 (上限なし)
node.set['mysql']['innodb_flush_log_at_trx_commit'] = '1' # Default: 1
node.set['mysql']['innodb_force_recovery'] = '0' # Default: 0
node.set['mysql']['innodb_doublewrite'] = '1' # Default: 1 (ON)
node.set['mysql']['innodb_sync_spin_loops'] = '20' # Default: 30
node.set['mysql']['innodb_thread_sleep_delay'] = '1000' # Default: 10000
node.set['mysql']['innodb_commit_concurrency'] = '0' # Default: 0
node.set['mysql']['innodb_concurrency_tickets'] = '500' # Default: 500
# Global, Session
node.set['mysql']['innodb_support_xa'] = 'FALSE' # Default: TRUE
node.set['mysql']['innodb_lock_wait_timeout'] = '50' # Default: 50
node.set['mysql']['innodb_table_locks'] = '1' # Default: 1 (TRUE)
 
# [mysqldump]
node.set['mysql']['default-character-set'] = 'utf8'
node.set['mysql']['quick']['flag'] = true
 
# [mysql]
node.set['mysql']['no-auto-rehash']['flag'] = true
node.set['mysql']['show-warnings']['flag'] = true
 
# [mysqld_safe]
node.set['mysql']['log-error'] = '/var/log/mysql/error.log'
# end of settings for mysql /etc/my.cnf */
 
# include mysql recipe
include_recipe 'app_mysql_cookbook::default'

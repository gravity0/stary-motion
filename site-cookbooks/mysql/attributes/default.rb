default['mysql']['user'] = 'vagrant'
default['mysql']['group'] = 'vagrant'
default['mysql']['server_root_password'] = ''


# my.cnf default values
default['mysql']['server_charset']                  = 'utf8'
default['mysql']['max_connections']                 = 128
default['mysql']['query_cache_size']                = 0
default['mysql']['table_cache_size']                = 1024
default['mysql']['thread_cache_size']               = 128
default['mysql']['join_buffer_size']                = '16M'
default['mysql']['sort_buffer_size']                = '2M'
default['mysql']['read_rnd_buffer_size']            = '2M'
default['mysql']['innodb_file_per_table']           = true
default['mysql']['innodb_data_file_path']           = 'ibdata1:1G:autoextend'
default['mysql']['innodb_autoextend_increment']     = 64
default['mysql']['innodb_buffer_pool_size']         = '256M'
default['mysql']['innodb_additional_mem_pool_size'] = '10M'
default['mysql']['innodb_write_io_threads']         = 4
default['mysql']['innodb_read_io_threads']          = 4
default['mysql']['innodb_log_buffer_size']          = 16
default['mysql']['innodb_log_file_size']            = '64M'
default['mysql']['innodb_flush_log_at_trx_commit']  = 1

# version 5.6
default['mysql']['version'] = '5.6'
default['mysql']['install_rpms'] = [
  {
    :rpm_file => 'MySQL-server-5.6.13-1.el6.x86_64.rpm',
    :package_name => 'MySQL-server'
  },
  {
    :rpm_file => 'MySQL-client-5.6.13-1.el6.x86_64.rpm',
    :package_name => 'MySQL-client'
  },
  {
    :rpm_file => 'MySQL-shared-5.6.13-1.el6.x86_64.rpm',
    :package_name => 'MySQL-shared'
  },
  #{
  #  :rpm_file => 'MySQL-shared-compat-5.6.13-1.el6.x86_64.rpm',
  #  :package_name => 'MySQL-shared-compat'
  #},
  #{
  #  :rpm_file => 'MySQL-devel-5.6.13-1.el6.x86_64.rpm',
  #  :package_name => 'MySQL-devel'
  #},
  #{
  #  :rpm_file => 'MySQL-embedded-5.6.13-1.el6.x86_64.rpm',
  #  :package_name => 'MySQL-embedded'
  #}
]

# version 5.5
=begin
default['mysql']['version'] = '5.5'
default['mysql']['install_rpms'] = [
  {
    :rpm_file => 'MySQL-server-5.5.33-1.el6.x86_64.rpm',
    :package_name => 'MySQL-server'
  },
  {
    :rpm_file => 'MySQL-client-5.5.33-1.el6.x86_64.rpm',
    :package_name => 'MySQL-client'
  },
  {
    :rpm_file => 'MySQL-shared-5.5.33-1.el6.x86_64.rpm',
    :package_name => 'MySQL-shared'
  },
  #{
  #  :rpm_file => 'MySQL-shared-compat-5.5.33-1.el6.x86_64.rpm',
  #  :package_name => 'MySQL-shared-compat'
  #},
  #{
  #  :rpm_file => 'MySQL-devel-5.5.33-1.el6.x86_64.rpm',
  #  :package_name => 'MySQL-devel'
  #},
  #{
  #  :rpm_file => 'MySQL-embedded-5.5.33-1.el6.x86_64.rpm',
  #  :package_name => 'MySQL-embedded'
  #}
]
=end

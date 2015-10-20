remote_file "#{Chef::Config[:file_cache_path]}/mysql-community-release-el7-5.noarch.rpm" do
  source 'http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm'
  action :create
end

rpm_package 'mysql-community-release' do
  source "#{Chef::Config[:file_cache_path]}/mysql-community-release-el7-5.noarch.rpm"
  action :install
end

package 'mysql-server' do
  action :install
end

service 'mysqld' do
  action [:enable, :start]
end


execute "create database" do
  command "mysql -u root --password=\"\" -e \"CREATE DATABASE IF NOT EXISTS stary_motion;\""
end

# set /etc/my.cnf
template '/etc/my.cnf' do
  owner 'root'
  group 'root'
  mode 644
  notifies :restart, "service[mysqld]"
end

["mysql","mysql-server"].each do |pkg|
  package pkg do
    action :install
  end
end

service "mysqld" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

execute "create database" do
  command "mysql -u root --password=\"#{node["mysql"]["server_root_password"]}\" -e \"CREATE DATABASE IF NOT EXISTS db_name;\""
end

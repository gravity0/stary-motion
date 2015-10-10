username = "root"
groupname = "root"
package_name = "typesafe-activator-1.3.6-minimal"
unziped_name = "activator-1.3.6-minimal"
play_source_url = "http://downloads.typesafe.com/typesafe-activator/1.3.6/#{package_name}.zip"
package_path = "#{Chef::Config[:file_cache_path]}/#{package_name}.zip"
lib_dir = "#{node['app-play2.4']['app_dir']}/lib"

package 'unzip' do
  action :install
end

remote_file package_path do
  source play_source_url
  not_if {File.exist?(package_path)}
end

directory lib_dir do
  owner username
  #group groupname
  mode 0755
  recursive true
  action :create
  not_if {File.exist?(lib_dir)}
end

bash 'unzip play archive' do
  user username
  cwd lib_dir
  code <<-EOH
    unzip #{package_path}
    EOH
  not_if {File.exist?("#{lib_dir}/#{unziped_name}")}
end

file "#{lib_dir}/#{unziped_name}/activator" do
  mode 0755
  action :create
  only_if {File.exist?("#{lib_dir}/#{unziped_name}/activator")}
end

bash '(re)make static link' do
  user username
  cwd lib_dir
  code <<-EOH
    rm -f #{lib_dir}/activator && ln -s #{lib_dir}/#{unziped_name} #{lib_dir}/activator
    EOH
end

template '/etc/profile.d/play24.sh' do
  source 'profile.erb'
  mode 0644
  owner 'root'
  group 'root'
  variables(:path => "#{lib_dir}/activator")
end


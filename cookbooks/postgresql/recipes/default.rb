#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.



package 'postgresql-server' do

notifies :run, 'execute[postgresql-init]'
end

excute 'postgresql-init' do
 command 'postgresql-setup initdb'
 action :nothing
end


service 'postgreql' do
action[:enable, :start]
end





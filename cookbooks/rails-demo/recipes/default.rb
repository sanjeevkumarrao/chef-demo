#
# Cookbook Name:: rails-demo
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
application "rails-demo" do
    path "/var/www/rails-apps/rails-demo"
    owner "vagrant"
    group "vagrant"
    package 'ruby'
    git "/var/www/rails-apps/rails-demo" do 
        repository 'https://github.com/mulderp/chef-demo.git'
    end
    unicorn do
        port 8080
    end
end
#
# Cookbook Name:: librarian-chef
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash "run librarian-chef install in app directory" do
  cwd File.join(node[:librarian_chef][:app_path])
  code <<-COMMANDLINE 
  gem install librarian-chef
  librarian-chef install
  COMMANDLINE
end
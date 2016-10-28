#
# Cookbook Name:: devtools-cookbook
# Recipe:: default
#
# All rights reserved - Do Not Redistribute
###########################################

include_recipe 'devtools::swapfile'
include_recipe 'devtools::yum_repos'
include_recipe 'devtools::install'
# include_recipe 'devtools::useradd'

# setup locally for matt_feenstra user
include_recipe 'devtools::setup_ruby'
include_recipe 'devtools::setup_chefdk'

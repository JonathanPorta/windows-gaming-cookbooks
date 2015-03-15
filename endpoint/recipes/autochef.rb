#
# Cookbook Name:: endpoint
# Recipe:: autochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'windows'

windows_task 'autochef' do
  user 'Administrator'
  cwd 'C:\cookbooks'
  command 'git fetch origin ; git reset --hard origin/master ; '
  run_level :highest
  frequency :minute
  frequency_modifier 15
end

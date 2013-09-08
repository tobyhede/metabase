#
# Cookbook Name:: Metabase
# Recipe:: default
#
# Copyright 2013, Toby Hede


include_recipe "apt"


include_recipe "metabase::postgresql"


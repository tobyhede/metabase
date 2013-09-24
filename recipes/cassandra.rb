#
# Cookbook Name:: Metabase
# Recipe:: cassandra
#
# Copyright 2013, Toby Hede
#

node.set["java"]["install_flavor"] = "oracle"
node.set["java"]["jdk_version"] = "7"
node.set["java"]["oracle"]["accept_oracle_download_terms"] = true

node.set["cassandra"]["version"] = "2.0"
node.set["cassandra"]["package_version"] = "dsc20"

include_recipe "java::default"
include_recipe "cassandra::datastax"

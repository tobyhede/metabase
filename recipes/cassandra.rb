#
# Cookbook Name:: Metabase
# Recipe:: cassandra
#
# Copyright 2013, Toby Hede
#

node.set["java"]["install_flavor"] = "openjdk"
node.set["java"]["jdk_version"] = "7"

node.set["cassandra"]["version"] = "2.0"
node.set["cassandra"]["package_version"] = "dsc20"

include_recipe "cassandra::datastax"

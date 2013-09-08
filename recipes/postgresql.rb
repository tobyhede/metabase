#
# Cookbook Name:: Metabase
# Recipe:: postgresql
#
# Copyright 2013, Toby Hede
#

node.set["postgresql"]["version"] = "9.2"
node.set["postgresql"]["enable_pgdg_apt"] = true
node.set["postgresql"]["password"] = {postgres: "pwd"}
node.set["postgresql"]["config"] = {
  "ssl" => false,
  "listen_addresses" => "*"
 }

node.set["postgresql"]["pg_hba"] = [
  {
    :type    => "host",
    :db      => "all",
    :user    => "all",
    :addr    => "127.0.0.1/32",
    :method  => "md5"
  },
  {
    :type    => "host",
    :db      => "all",
    :user    => "all",
    :addr    => "0.0.0.0/0",
    :method  => "md5"
  }
]

include_recipe "postgresql::server"

#local          all          all                             md5
## IPv4 local connections:
#host           all          all          0.0.0.0/0          md5
## IPv6 local connections:
#host           all          all          ::1/128            md5


provider "alicloud" {
  region = "cn-hangzhou"
}

resource "random_integer" "default" {
  min = 10000
  max = 99999
}

data "alicloud_dfs_zones" "default" {}

variable "name" {
  default = "example_name"
}

resource "alicloud_vpc" "default" {
  vpc_name   = "tf_test_foo"
  cidr_block = "172.16.0.0/12"
}

resource "alicloud_vswitch" "default" {
  vpc_id       = alicloud_vpc.default.id
  cidr_block   = cidrsubnet(alicloud_vpc.default.cidr_block, 8, 2)
  zone_id      = data.alicloud_dfs_zones.default.zones.0.zone_id
  vswitch_name = var.name
}

module "example" {
  create = true
  source = "../.."

  # alicloud_dfs_file_system
  storage_type     = data.alicloud_dfs_zones.default.zones.0.options.0.storage_type
  zone_id          = data.alicloud_dfs_zones.default.zones.0.zone_id
  hdfs_name        = "tf_hdfs_name"
  space_capacity   = 1024
  hdfs_description = "The description of DFS file system."
  # alicloud_dfs_access_group
  access_group_name             = "tf_access_group_name_${random_integer.default.result}"
  hdfs_access_group_description = "The description of DFS access group."
  # alicloud_dfs_access_rule
  network_segment             = "192.0.2.0/24"
  dfs_access_rule_description = "The description of DFS access group."
  priority                    = 10
  # alicloud_dfs_mount_point
  vpc_id                        = alicloud_vpc.default.id
  vswitch_id                    = alicloud_vswitch.default.id
  alicloud_dfs_mount_point_name = "tf_mount_point_name"
}
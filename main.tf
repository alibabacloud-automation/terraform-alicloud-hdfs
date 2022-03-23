resource "alicloud_dfs_file_system" "dfs_file_system" {
  count            = var.create ? 1 : 0
  storage_type     = var.storage_type
  zone_id          = var.zone_id
  protocol_type    = "HDFS"
  description      = var.hdfs_description
  file_system_name = var.hdfs_name
  throughput_mode  = var.throughput_mode
  space_capacity   = var.space_capacity
}

resource "alicloud_dfs_access_group" "dfs_access_group" {
  count             = var.create ? 1 : 0
  network_type      = "VPC"
  access_group_name = var.access_group_name
  description       = var.hdfs_access_group_description
}

resource "alicloud_dfs_access_rule" "dfs_access_rule" {
  count           = var.create ? 1 : 0
  network_segment = var.network_segment
  access_group_id = alicloud_dfs_access_group.dfs_access_group.0.id
  description     = var.dfs_access_rule_description
  rw_access_type  = var.rw_access_type
  priority        = var.priority
}

resource "alicloud_dfs_mount_point" "dfs_mount_point" {
  count           = var.create ? 1 : 0
  description     = var.alicloud_dfs_mount_point_name
  vpc_id          = var.vpc_id
  file_system_id  = alicloud_dfs_file_system.dfs_file_system.0.id
  access_group_id = alicloud_dfs_access_group.dfs_access_group.0.id
  network_type    = "VPC"
  vswitch_id      = var.vswitch_id
}
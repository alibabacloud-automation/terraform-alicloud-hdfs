output "this_dfs_file_system" {
  description = "The ID of DFS file system."
  value       = concat(alicloud_dfs_file_system.dfs_file_system.*.id, [""])[0]
}

output "this_dfs_access_group" {
  description = "The access group ID of DFS."
  value       = concat(alicloud_dfs_access_group.dfs_access_group.*.id, [""])[0]
}

output "this_dfs_access_rule" {
  description = "The access rule of DFS."
  value       = concat(alicloud_dfs_access_rule.dfs_access_rule.*.id, [""])[0]
}

output "this_dfs_mount_point" {
  description = "The mount point of DFS."
  value       = concat(alicloud_dfs_mount_point.dfs_mount_point.*.id, [""])[0]
}


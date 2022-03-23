variable "hdfs_description" {
  description = "The description of DFS file system."
  type        = string
  default     = null
}

variable "hdfs_name" {
  description = "The name of DFS file system."
  type        = string
  default     = null
}

variable "zone_id" {
  description = "The zone id of DFS file system."
  type        = string
}

variable "storage_type" {
  description = "The storage type of DFS file system."
  type        = string
}

variable "throughput_mode" {
  description = "The throughput mode of hdfs."
  type        = string
  default     = "Standard"
}

variable "space_capacity" {
  description = "The space capacity of hdfs."
  type        = number
  default     = null
}

variable "access_group_name" {
  description = "The name of DFS access group."
  type        = string
  default     = null
}

variable "hdfs_access_group_description" {
  description = "The description of DFS access group."
  type        = string
  default     = null
}

variable "network_segment" {
  description = "The network segment of DFS access rule."
  type        = string
  default     = null
}

variable "dfs_access_rule_description" {
  description = "The description of DFS access rule."
  type        = string
  default     = null
}

variable "rw_access_type" {
  description = "The R/W access type of DFS access group."
  type        = string
  default     = "RDWR"
}

variable "priority" {
  description = "The priority of DFS access group."
  type        = number
  default     = null
}

variable "alicloud_dfs_mount_point_name" {
  description = "The name of DFS mount point."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The VPC ID of DFS mount point."
  type        = string
}

variable "vswitch_id" {
  description = "The Vswitch ID of DFS mount point."
  type        = string
}

variable "create" {
  description = "Whether to create resources in module."
  type        = bool
  default     = false
}

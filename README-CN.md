terraform-alicloud-hdfs
=====================================================================

本 Module 用于在阿里云创建一个[文件存储HDFS版(HDFS)](https://help.aliyun.com/document_detail/87473.html).

本 Module 支持创建以下资源:

* [文件存储HDFS版(Dfs_File_System)](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_file_system)
* [文件存储HDFS版访问组(fs_Access_Group)](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_access_group)
* [文件存储HDFS版读写策略(Dfs_Access_Rule)](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_access_rule)
* [文件存储HDFS版挂载点(Dfs_Mount_Point)](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_mount_point)

## 版本要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.131.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.131.0 |

## 用法

```hcl
module "example" {
  create                        = true
  source                        = "../.."
  storage_type                  = data.alicloud_dfs_zones.default.zones.0.options.0.storage_type
  zone_id                       = data.alicloud_dfs_zones.default.zones.0.zone_id
  vpc_id                        = alicloud_vpc.default.id
  vswitch_id                    = alicloud_vswitch.default.id
  hdfs_name                     = "tf_hdfs_name"
  space_capacity                = 1024
  access_group_name             = "tf_access_group_name"
  hdfs_access_group_description = "The description of DFS access group."
  hdfs_description              = "The description of DFS file system."
  network_segment               = "192.0.2.0/24"
  dfs_access_rule_description   = "The description of DFS access group."
  priority                      = 10
  alicloud_dfs_mount_point_name = "tf_mount_point_name"
}
```

提交问题
------
如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
Apache 2 Licensed. See LICENSE for full details.

参考
---------

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
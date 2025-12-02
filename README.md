Terraform module which creates HDFS on Alibaba Cloud.

terraform-alicloud-hdfs
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-hdfs/blob/master/README-CN.md)

Terraform module which creates HDFS on Alibaba Cloud.

These types of resources are supported:

* [Dfs_File_System](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_file_system)
* [Dfs_Access_Group](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_access_group)
* [Dfs_Access_Rule](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_access_rule)
* [Dfs_Mount_Point](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/dfs_mount_point)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.131.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.131.0 |

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Ahdfs&spm=docs.m.terraform-alicloud-modules.hdfs&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

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

Submit Issues
-------------
If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
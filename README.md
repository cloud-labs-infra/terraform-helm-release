# Terraform Helm Release module
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.main](https://registry.terraform.io/providers/hashicorp/helm/2.9.0/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_atomic"></a> [atomic](#input\_atomic) | If set, installation process purges chart on fail | `bool` | `false` | no |
| <a name="input_chart"></a> [chart](#input\_chart) | Chart name to be installed | `string` | n/a | yes |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Specify the exact chart version to install | `string` | n/a | yes |
| <a name="input_cleanup_on_fail"></a> [cleanup\_on\_fail](#input\_cleanup\_on\_fail) | Allow deletion of new resources created in this upgrade when upgrade fails | `bool` | `false` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create the namespace if it does not yet exist | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Set release description attribute (visible in the history) | `string` | `null` | no |
| <a name="input_disable_openapi_validation"></a> [disable\_openapi\_validation](#input\_disable\_openapi\_validation) | If set, the installation process will not validate rendered templates against the Kubernetes OpenAPI Schema | `bool` | `false` | no |
| <a name="input_disable_webhooks"></a> [disable\_webhooks](#input\_disable\_webhooks) | Prevent hooks from running | `bool` | `false` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Force resource update through delete/recreate if needed | `bool` | `false` | no |
| <a name="input_lint"></a> [lint](#input\_lint) | Run the helm chart linter during the plan | `bool` | `false` | no |
| <a name="input_max_history"></a> [max\_history](#input\_max\_history) | Maximum number of release versions stored per release, 0 - no limit | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Release name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to install the release into | `string` | n/a | yes |
| <a name="input_postrender"></a> [postrender](#input\_postrender) | Configure a command to run after helm renders the manifest which can alter the manifest contents | <pre>object({<br>    binary_path = string<br>    args        = optional(string)<br>  })</pre> | <pre>{<br>  "binary_path": null<br>}</pre> | no |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | Perform pods restart during upgrade/rollback | `bool` | `false` | no |
| <a name="input_render_subchart_notes"></a> [render\_subchart\_notes](#input\_render\_subchart\_notes) | If set, render subchart notes along with the parent | `bool` | `true` | no |
| <a name="input_replace"></a> [replace](#input\_replace) | Re-use the given name, only if that name is a deleted release which remains in the history | `bool` | `false` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository URL where to locate the requested chart | `string` | n/a | yes |
| <a name="input_reset_values"></a> [reset\_values](#input\_reset\_values) | When upgrading, reset the values to the ones built into the chart | `bool` | `false` | no |
| <a name="input_reuse_values"></a> [reuse\_values](#input\_reuse\_values) | When upgrading, reuse the last release's values and merge in any overrides (if 'reset\_values' is specified, this is ignored) | `bool` | `false` | no |
| <a name="input_set"></a> [set](#input\_set) | Value block with custom values to be merged with the values yaml | `map(string)` | `{}` | no |
| <a name="input_set_sensitive"></a> [set\_sensitive](#input\_set\_sensitive) | Value block with custom sensitive values to be merged with the values yaml that won't be exposed in the plan's diff | `map(string)` | `{}` | no |
| <a name="input_skip_crds"></a> [skip\_crds](#input\_skip\_crds) | If set, no CRDs will be installed | `bool` | `false` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Time in seconds to wait for any individual kubernetes operation | `number` | `300` | no |
| <a name="input_values"></a> [values](#input\_values) | List of values in raw yaml to pass to helm | `list(string)` | `[]` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Will wait until all resources are in a ready state before marking the release as successful, it will wait for as long as 'timeout' | `bool` | `true` | no |
| <a name="input_wait_for_jobs"></a> [wait\_for\_jobs](#input\_wait\_for\_jobs) | If wait is enabled, will wait until all Jobs have been completed before marking the release as successful, it will wait for as long as timeout | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_version"></a> [app\_version](#output\_app\_version) | The version number of the application being deployed |
| <a name="output_chart"></a> [chart](#output\_chart) | The name of the chart |
| <a name="output_name"></a> [name](#output\_name) | Name is the name of the release |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | Namespace is the kubernetes namespace of the release |
| <a name="output_revision"></a> [revision](#output\_revision) | Version is an int32 which represents the version of the release |
| <a name="output_values"></a> [values](#output\_values) | The compounded values from 'values' and 'set*' attributes |
| <a name="output_version"></a> [version](#output\_version) | A SemVer 2 conformant version string of the chart |
<!-- END_TF_DOCS -->
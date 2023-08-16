module "telemetry_namespace" {
  source  = "cloud-labs-infra/namespace/kubernetes"
  version = "1.0.0"

  name = "clickhouse"
}

module "clickhouse" {
  source  = "cloud-labs-infra/release/helm"
  version = "1.0.0"

  repository    = "oci://registry-1.docker.io/bitnamicharts"
  chart         = "clickhouse"
  chart_version = "3.4.3"

  name      = "clickhouse"
  namespace = module.telemetry_namespace.name

  set = {
    "shards"              = 1
    "replicaCount"        = 1
    "global.storageClass" = "csi-disk"
    "persistence.size"    = "400Gi"
  }
}

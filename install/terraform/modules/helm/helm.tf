# Copyright 2020 Google LLC All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This is a Helm 3.x module
#

provider "helm" {
  version = "~> 1.2"
  kubernetes {
    load_config_file       = false
    host                   = var.host
    token                  = var.token
    cluster_ca_certificate = var.cluster_ca_certificate
  }
}

resource "helm_release" "open-match" {
  name         = "open-match"
  repository   = "https://open-match.dev/chart/stable"
  force_update = "true"
  chart        = var.chart
  timeout      = 420
  version      = var.open-match_version
  namespace    = "open-match"
  create_namespace = true

  # Use terraform of the latest >=0.12 version
  values = [
    length(var.values_file) == 0 ? "" : file(var.values_file),
  ]

  set {
    name = "open-match-core.redis.enabled"
    value = var.open-match-core_redis_enabled
  }

  set {
    name = "open-match-core.redis.hostname"
    value = var.open-match-core_redis_hostname
  }

  set {
    name = "open-match-core.redis.port"
    value = var.open-match-core_redis_port
  }
  
  set {
    name  = "open-match-customize.enabled"
    value = var.open-match-customize_enabled
  }

  set {
    name  = "open-match-customize.evaluator"
    value = var.open-match-customize_evaluator
  }

  set {
    name  = "open-match-customize.function"
    value = var.open-match-customize_function
  }

  set {
    name  = "open-match-customize.query"
    value = var.open-match-customize_query
  }

  set {
    name  = "open-match-telemetry.enabled"
    value = var.open-match-telemetry_enabled
  }
  
  set {
    name  = "open-match-scale.enabled"
    value = var.open-match-scale_enabled
  }

  set {
    name = "global.tls.enabled"
    value = var.global_tls_enabled
  }

  set {
    name = "global.tls.sever.mountpath"
    value = var.global_tls_server_mountpath
  }

  set {
    name = "global.tls.rootca.mountpath"
    value = var.global_tls_rootca_mountpath
  }

  set {
    name = "global.logging.rpc.enabled"
    value = var.global_logging_rpc_enabled
  }

  set {
    name = "global.image.registry"
    value = var.global_image_registry
  }

  set {
    name = "global.image.tag"
    value = var.global_image_tag
  }

  set {
    name = "global.image.pullPolicy"
    value = var.global_image_pullPolicy
  }

  set {
    name = "global.telemetry.zpages.enabled"
    value = var.global_telemetry_zpages_enabled
  }

  set {
    name = "global.telemetry.jaeger.enabled"
    value = var.global_telemetry_jaeger_enabled
  }

  set {
    name = "global.telemetry.jaeger.agentEndpoint"
    value = var.global_telemetry_jaeger_agentEndpoint
  }

  set {
    name = "global.telemetry.jaeger.collectorEndpoint"
    value = var.global_telemetry_jaeger_collectorEndpoint
  }

  set {
    name = "global.telemetry.prometheus.enabled"
    value = var.global_telemetry_prometheus_enabled
  }

  set {
    name = "global.telemetry.prometheus.endpoint"
    value = var.global_telemetry_prometheus_endpoint
  }

  set {
    name = "global.telemetry.prometheus.serviceDiscovery"
    value = var.global_telemetry_prometheus_serviceDiscovery
  }

  set {
    name = "global.telemetry.stackdriverMetrics.enabled"
    value = var.global_telemetry_stackdriverMetrics_enabled
  }

  set {
    name = "global.telemetry.stackdriverMetrics.prefix"
    value = var.global_telemetry_stackdriverMetrics_prefix
  }

  set {
    name = "global.telemetry.grafana.enabled"
    value = var.global_grafana_enabled
  }

}

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

#Helm variables

variable open-match-core_redis_enabled {
  default = "true"
}

variable open-match-core_redis_hostname {
  default = ""
}

variable open-match-core_redis_port {
  default = "6379"
}

variable open-match-customize_enabled {
  default = "false"
}

variable open-match-customize_evaluator {
  default = ""
}

variable open-match-customize_function {
  default = ""
}

variable open-match-customize_query {
  default = ""
}

variable open-match-telemetry_enabled {
  default = "false"
}

variable open-match-scale_enabled {
  default = "false"
}

variable global_tls_enabled {
  default = "false"
}

variable global_tls_server_mountpath {
  default = "/app/secrets/tls/server"
}

variable global_tls_rootca_mountpath {
  default = "/app/secrets/tls/rootca"
}

variable global_logging_rpc_enabled {
  default = "false"
}

variable global_image_registry {
  default = "gcr.io/open-match-public-images"
}

variable global_image_tag {
  default = "0.0.0-dev"
}

variable global_image_pullPolicy {
  default = "Always"
}

variable global_telemetry_zpages_enabled {
  default = "true"
}

variable global_telemetry_jaeger_enabled {
  default = "false"
}

variable global_telemetry_jaeger_agentEndpoint {
  default = "open-match-jaeger-agent:6831"
}

variable global_telemetry_jaeger_collectorEndpoint {
  default = "http://open-match-jaeger-collector:14268/api/traces"
}

variable global_telemetry_prometheus_enabled {
  default = "false"
}

variable global_telemetry_prometheus_endpoint {
  default = "/metrics"
}

variable global_telemetry_prometheus_serviceDiscovery {
  default = "true"
}

variable global_telemetry_stackdriverMetrics_enabled {
  default = "false"
}

variable global_telemetry_stackdriverMetrics_prefix {
  default = "open_match"
}

variable global_grafana_enabled {
  default = "false"
}



# See bazel/README.md for details on how this system works.
# envoy-custom-extensions/extensions_build_config.bzl

EXTENSIONS = {
	# ---- Cluster factories ----
	"envoy.clusters.static":      "//source/extensions/clusters/static:static_cluster_lib",
	"envoy.clusters.strict_dns":  "//source/extensions/clusters/strict_dns:strict_dns_cluster_lib",
	"envoy.clusters.logical_dns": "//source/extensions/clusters/logical_dns:logical_dns_cluster_lib",
	"envoy.clusters.eds":         "//source/extensions/clusters/eds:eds_lib",

	# ---- Transport sockets ----
	"envoy.transport_sockets.raw_buffer":	"//source/extensions/transport_sockets/raw_buffer:config",
	"envoy.transport_sockets.tls":		"//source/extensions/transport_sockets/tls:config",

	# ---- HTTP path (HCM + Router) ----
	"envoy.filters.network.http_connection_manager":	"//source/extensions/filters/network/http_connection_manager:config",
	"envoy.filters.http.router":	"//source/extensions/filters/http/router:config",

	# ---- Access loggers ----
	"envoy.access_loggers.file":	"//source/extensions/access_loggers/file:config",
	# (optional) stderr too:
	# "envoy.access_loggers.stderr": "//source/extensions/access_loggers/stream:stderr",
}

# These can be changed to ["//visibility:public"], for  downstream builds which
# need to directly reference Envoy extensions.
EXTENSION_CONFIG_VISIBILITY = ["//visibility:public"]
EXTENSION_PACKAGE_VISIBILITY = ["//visibility:public"]
CONTRIB_EXTENSION_PACKAGE_VISIBILITY = ["//visibility:public"]
LEGACY_ALWAYSLINK = 1

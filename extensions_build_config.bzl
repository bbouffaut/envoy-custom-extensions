EXTENSIONS = [
	# Core HTTP path
	"envoy.filters.network.http_connection_manager",
	"envoy.filters.http.router",

	# Cluster factories used by Kourier bootstrap/xDS
	"envoy.clusters.static",
	"envoy.clusters.strict_dns",
	"envoy.clusters.logical_dns",
	"envoy.clusters.eds",

	# Upstream HTTP codecs (so HCM can talk to upstreams)
	"envoy.http.stateful_session",            # optional but common
	"envoy.http.protocol_options",            # core HTTP options
	"envoy.upstreams.http.v3.HttpProtocolOptions",  # (if your config references it)

	# Transport sockets
	"envoy.transport_sockets.raw_buffer",
	"envoy.transport_sockets.tls",

	# Access loggers commonly referenced by Kourier
	"envoy.access_loggers.file",
	"envoy.access_loggers.stdout",
]


# These can be changed to ["//visibility:public"], for  downstream builds which
# need to directly reference Envoy extensions.
EXTENSION_CONFIG_VISIBILITY = ["//:extension_config"]
EXTENSION_PACKAGE_VISIBILITY = ["//:extension_library"]
CONTRIB_EXTENSION_PACKAGE_VISIBILITY = ["//:extension_library"]
LEGACY_ALWAYSLINK = 0

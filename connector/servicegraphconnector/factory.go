// Copyright The OpenTelemetry Authors
// SPDX-License-Identifier: Apache-2.0

package servicegraphconnector // import "github.com/open-telemetry/opentelemetry-collector-contrib/connector/servicegraphconnector"

import (
	"context"
	"time"

	"github.com/open-telemetry/opentelemetry-collector-contrib/connector/servicegraphconnector/internal/metadata"
	"go.opencensus.io/stats/view"
	"go.opentelemetry.io/collector/component"
	"go.opentelemetry.io/collector/connector"
	"go.opentelemetry.io/collector/consumer"
	"go.opentelemetry.io/collector/featuregate"
)

const (
	// The value of "type" key in configuration.
	typeStr = "servicegraph"
	// The stability level of the connector.
	connectorStability                    = component.StabilityLevelDevelopment
	virtualNodeFeatureGateID              = "connector.servicegraph.virtualNode"
	legacyLatencyMetricNamesFeatureGateID = "connector.servicegraph.legacyLatencyMetricNames"
)

var virtualNodeFeatureGate, legacyMetricNamesFeatureGate *featuregate.Gate

func init() {
	virtualNodeFeatureGate = featuregate.GlobalRegistry().MustRegister(
		virtualNodeFeatureGateID,
		featuregate.StageAlpha,
		featuregate.WithRegisterDescription("When enabled, when the edge expires, connector checks if it has peer attributes(`db.name, net.sock.peer.addr, net.peer.name, rpc.service, http.url, http.target`), and then aggregate the metrics with virtual node."),
		featuregate.WithRegisterReferenceURL("https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/17196"),
	)
	// TODO: Remove this feature gate when the legacy metric names are removed.
	legacyMetricNamesFeatureGate = featuregate.GlobalRegistry().MustRegister(
		legacyLatencyMetricNamesFeatureGateID,
		featuregate.StageAlpha, // Alpha because we want it disabled by default.
		featuregate.WithRegisterDescription("When enabled, connector uses legacy latency metric names."),
		featuregate.WithRegisterReferenceURL("https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/18743,https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/16578"),
	)
}

// NewFactory creates a factory for the servicegraph connector.
func NewFactory() connector.Factory {
	// TODO: Handle this err
	_ = view.Register(serviceGraphConnectorViews()...)

	return connector.NewFactory(
		typeStr,
		createDefaultConfig,
		connector.WithTracesToMetrics(createTracesToMetricsConnector, metadata.TracesToMetricsStability),
	)
}

func createDefaultConfig() component.Config {
	return &Config{
		Store: StoreConfig{
			TTL:      2 * time.Second,
			MaxItems: 1000,
		},
		CacheLoop:           time.Minute,
		StoreExpirationLoop: 2 * time.Second,
	}
}

func createTracesToMetricsConnector(_ context.Context, params connector.CreateSettings, cfg component.Config, nextConsumer consumer.Metrics) (connector.Traces, error) {
	c := newConnector(params.Logger, cfg)
	c.metricsConsumer = nextConsumer
	return c, nil
}

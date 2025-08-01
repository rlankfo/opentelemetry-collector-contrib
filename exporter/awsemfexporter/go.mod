module github.com/open-telemetry/opentelemetry-collector-contrib/exporter/awsemfexporter

go 1.23.0

require (
	github.com/aws/smithy-go v1.22.4
	github.com/google/uuid v1.6.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/awsutil v0.129.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/cwlogs v0.129.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/metrics v0.129.0
	github.com/open-telemetry/opentelemetry-collector-contrib/internal/coreinternal v0.129.0
	github.com/open-telemetry/opentelemetry-collector-contrib/pkg/resourcetotelemetry v0.129.0
	github.com/stretchr/testify v1.10.0
	go.opentelemetry.io/collector/component v1.35.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/component/componenttest v0.129.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/confmap v1.35.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/confmap/xconfmap v0.129.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/consumer/consumererror v0.129.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/exporter v0.129.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/exporter/exportertest v0.129.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/featuregate v1.35.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/pdata v1.35.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/otel v1.37.0
	go.uber.org/multierr v1.11.0
	go.uber.org/zap v1.27.0
	golang.org/x/exp v0.0.0-20240506185415-9bf2ced13842
)

require (
	github.com/aws/aws-sdk-go-v2 v1.36.5 // indirect
	github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream v1.6.11 // indirect
	github.com/aws/aws-sdk-go-v2/config v1.29.17 // indirect
	github.com/aws/aws-sdk-go-v2/credentials v1.17.70 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.32 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.3.36 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.6.36 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.8.3 // indirect
	github.com/aws/aws-sdk-go-v2/service/cloudwatchlogs v1.51.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.12.4 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.12.17 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.25.5 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.30.3 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.34.0 // indirect
	github.com/cenkalti/backoff/v5 v5.0.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.4.3 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-viper/mapstructure/v2 v2.3.0 // indirect
	github.com/gobwas/glob v0.2.3 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/hashicorp/go-version v1.7.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/knadh/koanf/maps v0.1.2 // indirect
	github.com/knadh/koanf/providers/confmap v1.0.0 // indirect
	github.com/knadh/koanf/v2 v2.2.1 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/stretchr/objx v0.5.2 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/collector/client v1.35.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/config/configretry v1.35.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/consumer v1.35.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/consumer/consumertest v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/consumer/xconsumer v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/exporter/xexporter v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/extension v1.35.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/extension/xextension v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/internal/telemetry v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/pdata/pprofile v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/pdata/xpdata v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/pipeline v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/receiver v1.35.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/receiver/receivertest v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/receiver/xreceiver v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/contrib/bridges/otelzap v0.12.0 // indirect
	go.opentelemetry.io/otel/log v0.13.0 // indirect
	go.opentelemetry.io/otel/metric v1.37.0 // indirect
	go.opentelemetry.io/otel/sdk v1.37.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v1.37.0 // indirect
	go.opentelemetry.io/otel/trace v1.37.0 // indirect
	go.yaml.in/yaml/v3 v3.0.4 // indirect
	golang.org/x/net v0.41.0 // indirect
	golang.org/x/sys v0.33.0 // indirect
	golang.org/x/text v0.26.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250324211829-b45e905df463 // indirect
	google.golang.org/grpc v1.73.0 // indirect
	google.golang.org/protobuf v1.36.6 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/metrics => ../../internal/aws/metrics

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/awsutil => ../../internal/aws/awsutil

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/aws/cwlogs => ../../internal/aws/cwlogs

replace github.com/open-telemetry/opentelemetry-collector-contrib/internal/coreinternal => ../../internal/coreinternal

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/resourcetotelemetry => ../../pkg/resourcetotelemetry

retract (
	v0.76.2
	v0.76.1
	v0.65.0
)

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/pdatatest => ../../pkg/pdatatest

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/pdatautil => ../../pkg/pdatautil

replace github.com/open-telemetry/opentelemetry-collector-contrib/pkg/golden => ../../pkg/golden

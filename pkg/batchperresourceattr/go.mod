module github.com/open-telemetry/opentelemetry-collector-contrib/pkg/batchperresourceattr

go 1.23.0

require (
	github.com/stretchr/testify v1.10.0
	go.opentelemetry.io/collector/consumer v1.35.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/consumer/consumertest v0.129.1-0.20250708151327-74cb2f311035
	go.opentelemetry.io/collector/pdata v1.35.1-0.20250708151327-74cb2f311035
	go.uber.org/goleak v1.3.0
	go.uber.org/multierr v1.11.0
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opentelemetry.io/collector/consumer/xconsumer v0.129.1-0.20250708151327-74cb2f311035 // indirect
	go.opentelemetry.io/collector/pdata/pprofile v0.129.1-0.20250708151327-74cb2f311035 // indirect
	golang.org/x/net v0.39.0 // indirect
	golang.org/x/sys v0.32.0 // indirect
	golang.org/x/text v0.24.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250324211829-b45e905df463 // indirect
	google.golang.org/grpc v1.73.0 // indirect
	google.golang.org/protobuf v1.36.6 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

retract (
	v0.76.2
	v0.76.1
	v0.65.0
)

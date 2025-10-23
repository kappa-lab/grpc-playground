gen/core:
	rm -f pb/core/*
	protoc -I . --go_out=paths=source_relative:pb --go-grpc_out=paths=source_relative:pb core/*.proto

gen/gateway:
	rm -f pb/gateway/*
	protoc -I . --go_out=paths=source_relative:pb --go-grpc_out=paths=source_relative:pb gateway/*.proto

gen/all: gen/core gen/gateway

build:
	cd ../ && go build -o import-sandbox/.tmp/main import-sandbox/main.go

.PHONY: core gateway all build


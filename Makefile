gen-protoc:
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    helloworld/helloworld.proto \
	& go mod tidy


gen-protoc-dart:
	protoc --dart_out=grpc:client-dart/lib/src/generated -Ihelloworld helloworld/helloworld.proto

start-server:
	go run ./server/main.go

start-client:
	go run ./client/main.go -name=Taro

grpcurl/list:
	grpcurl -proto=helloworld/helloworld.proto -plaintext localhost:50051 list

grpcurl/SayHello:
	grpcurl -proto=helloworld/helloworld.proto \
	-d '{"name": "mygrpcurl"}' \
	-plaintext localhost:50051 helloworld.Greeter/SayHello

.PHONY: gen protoc	grpcurl

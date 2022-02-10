gen-protoc:
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    helloworld/helloworld.proto \
	& go mod tidy


gen-protoc-dart:
	protoc --dart_out=./client-dart/lib/src/generated -Ihelloworld helloworld/helloworld.proto

start-server:
	go run ./server/main.go

start-client:
	go run ./client/main.go -name=Taro


.PHONY: gen protoc	
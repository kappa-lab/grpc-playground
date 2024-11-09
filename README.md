# this is 写経

## install

```shell
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
```

## Go
- https://grpc.io/docs/languages/go/quickstart/
- https://github.com/grpc/grpc-go/tree/master/examples/helloworld

## dart (only client)
- https://grpc.io/docs/languages/dart/quickstart/

# How to run

## Start Server
```shell
go run ./server/main.go
```
### Output
```shell
2022/02/10 17:16:01 succeed to listen: &{0xc000170000 {<nil> 0}}
2022/02/10 17:16:14 Received: world
2022/02/10 17:16:14 Received:  world :20
2022/02/10 17:16:33 Received: world
2022/02/10 17:16:33 Received:  world :20
```


## Start Client
```shell
go run ./client/main.go
```

### Output
```shell
2022/02/10 17:16:14 Recieve: message:"Hello world"
2022/02/10 17:16:14 Message: Hello world
2022/02/10 17:16:14 message:"Goodby world :20"
2022/02/10 17:16:14 Recieve: message:"Goodby world :20"
2022/02/10 17:16:14 Message: Goodby world :20
```

## Start Client-dart
```shell
dart client-dart/client.dart
```

### Output
```shell
Recieve: message: Hello world

message: Hello world
Recieve: message: Goodby world :20

message: Goodby world :20
```


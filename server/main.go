package main

import (
	"flag"

	pb "github.com/kappa-lab/grpc-playground/helloworld"
)

var (
	port = flag.Int("port", 50051, "The server port")
)

// server is used to implement helloworld.GreeterServer.
type server struct {
	pb.UnimplementedGreeterServer
}

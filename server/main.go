package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"net"

	pb "github.com/kappa-lab/grpc-playground/helloworld"
	"google.golang.org/grpc"
)

var (
	port = flag.Int("port", 50052, "The server port")
)

// server is used to implement helloworld.GreeterServer.
type server struct {
	pb.UnimplementedGreeterServer
}

func (s *server) SayHello(ctx context.Context, req *pb.HelloRequest) (*pb.HelloReply, error) {
	log.Printf("Received: %v", req.GetName())
	return &pb.HelloReply{Message: "Hello " + req.GetName()}, nil
}

func main() {
	flag.Parse()
	listen, err := net.Listen("tcp", fmt.Sprintf("localhost:%d", *port))

	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	log.Printf("succeed to listen: %v", listen)

	srv := grpc.NewServer()
	pb.RegisterGreeterServer(srv, &server{})

	err = srv.Serve(listen)

	if err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}

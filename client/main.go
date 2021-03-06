package main

import (
	"context"
	"flag"
	"log"
	"time"

	pb "github.com/kappa-lab/grpc-playground/helloworld"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

const (
	defaultName = "world"
)

var (
	addr = flag.String("addr", "localhost:50051", "the address to connect to")
	name = flag.String("name", defaultName, "user name")
)

func main() {
	flag.Parse()

	conn, err := grpc.Dial(*addr, grpc.WithTransportCredentials(insecure.NewCredentials()))

	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}

	defer conn.Close()

	client := pb.NewGreeterClient(conn)

	ctx, cancel := context.WithTimeout(context.Background(), time.Second*1)
	defer cancel()

	res, err := client.SayHello(ctx, &pb.HelloRequest{Name: *name})
	if err != nil {
		log.Fatalf("coud not connect: %v", err)
	}

	log.Printf("Recieve: %s", res)
	log.Printf("Message: %s", res.Message)

	goodby, err := client.SayGoodby(ctx, &pb.GoodbyRequest{Name: *name, Age: int32(20)})
	if err != nil {
		log.Fatalf("coud not connect: %v", err)
	}

	log.Print(goodby)
	log.Printf("Recieve: %s", goodby)
	log.Printf("Message: %s", goodby.Message)

}

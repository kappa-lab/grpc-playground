package main

import (
	"log/slog"

	"github.com/kappa-lab/grpc-playground/import-sandbox/pb/core"
	"github.com/kappa-lab/grpc-playground/import-sandbox/pb/gateway"
)

func main() {
	userResp := &core.UserResponse{}
	slog.Info("UserResponse", "resp", userResp)

	gatewayResp := &gateway.AuthResponse{}
	slog.Info("AuthResponse", "resp", gatewayResp)

	gateway.RegisterGatewayServiceServer(nil, nil)
}

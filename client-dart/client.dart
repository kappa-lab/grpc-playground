import 'dart:developer' as dev;

import 'package:grpc/grpc.dart';
import 'lib/src/generated/helloworld.pbgrpc.dart';

main(List<String> args) async {
  final name = args.isNotEmpty ? args[0] : "world";
  final age = 20;

  final channel = ClientChannel(
    "localhost",
    port: 50052,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final client = GreeterClient(channel);

  final helloRes = await client.sayHello(HelloRequest(name: name));
  print("Recieve: $helloRes");
  print("message: ${helloRes.message}");

  final goodbyRes = await client.sayGoodby(GoodbyRequest(name: name, age: age));
  print("Recieve: $goodbyRes");
  print("message: ${goodbyRes.message}");

  await channel.shutdown();

  debugPrint();
}

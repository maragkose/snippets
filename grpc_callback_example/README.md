protoc --cpp_out=. hello_world.proto
protoc --grpc_out=. --plugin=protoc-gen-grpc=/usr/bin/grpc_cpp_plugin hello_world.proto
g++ -o hello_world hello_world.cpp hello_world.pb.cc hello_world.grpc.pb.cc -lgrpc++ -lprotobuf -lgpr -labsl_synchronization
g++ -o hello_world_client hello_world_client.cpp hello_world.pb.cc hello_world.grpc.pb.cc -lgrpc++ -lprotobuf -lgpr -labsl_synchronization

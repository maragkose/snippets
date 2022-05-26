protoc -I ./ --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` sessiond.proto
protoc -I ./ --cpp_out=. sessiond.proto

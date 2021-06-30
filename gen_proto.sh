mkdir lib/generated
mkdir lib/generated/google
mkdir lib/generated/google/protobuf
protoc --proto_path=protos/ protos/google/protobuf/any.proto --dart_out=grpc:lib/generated/
protoc --proto_path=protos/ protos/*.proto --dart_out=grpc:lib/generated/
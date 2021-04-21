mkdir lib/generated
mkdir lib/generated/modules
protoc --proto_path=protos/ protos/meta_data.proto --dart_out=grpc:lib/generated/
protoc --proto_path=protos/ protos/modules/*.proto --dart_out=grpc:lib/generated/
PROTO_PATH ?= proto
OUTPUT_PATH ?= ./gen/go
PROTO_FILE ?= sso/sso.proto

run:
	@protoc -I $(PROTO_PATH) $(PROTO_PATH)/$(PROTO_FILE) --go_out=$(OUTPUT_PATH) --go_opt=paths=source_relative --go-grpc_out=$(OUTPUT_PATH) --go-grpc_opt=paths=source_relative

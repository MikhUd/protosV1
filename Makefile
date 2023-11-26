# Путь к директории с протофайлами
PROTO_DIR = proto/sso

# Путь к директории, куда будут сгенерированы файлы Go
OUT_DIR = gen/go/sso

# Название протофайла
PROTO_FILE = sso.proto

# Генерации кода из протофайлов
generate:
	protoc -I $(PROTO_DIR) $(PROTO_DIR)/$(PROTO_FILE) \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative

# Очистка сгенерированных файлов
clean:
	find $(OUT_DIR) -type f -delete

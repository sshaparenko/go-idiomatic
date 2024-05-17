.DEFAULT_GOAL := run

fmt:
	go fmt ./...
lint: fmt
	golint ./...
vet: fmt
	go vet ./...
run: vet
	go run ./main/main.go
# build: vet
# 	go build ./main/main.go
.DEFAULT_GOAL := run

fmt:
	go fmt ./...
lint: fmt
	golint ./...
vet: fmt
	go vet ./...
test: vet
	go run ./main/main.go
 build: test
 	go build ./main/main.go
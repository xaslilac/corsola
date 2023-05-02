build:
	go build -o ./build/ ./cmd/corsola/
.PHONY: build

test:
	go run ./cmd/corsola/ \
		-hello -count=3
.PHONY: test

fmt:
	go fmt ./...
lint:
	go vet ./...
.PHONY: fmt lint
.NOTPARALLEL: fmt lint

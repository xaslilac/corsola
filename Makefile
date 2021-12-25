default:
	go build -o ./bin/ ./cmd/corsola/

run:
	go run ./cmd/corsola/

test:
	go run ./cmd/corsola/ -hello -count=3

fmt:
	go fmt ./...

lint:
	go vet ./...

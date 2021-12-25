default:
	go build -o bin/corsola ./cmd/corsola/corsola.go

run:
	go run ./cmd/corsola/corsola.go

test:
	go run ./cmd/corsola/corsola.go -hello -count=3

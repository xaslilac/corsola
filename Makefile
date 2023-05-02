BOLD := $(shell tput bold)
GREEN := $(shell tput setaf 2)
RESET := $(shell tput sgr0)

build:
	@echo "$(GREEN)==>$(RESET) $(BOLD)build$(RESET) //build/corsola"
	go build -o ./build/ ./cmd/corsola/
.PHONY: build

TEST_ARGS := -hello -count=3
test:
	@echo "$(GREEN)==>$(RESET) $(BOLD)test$(RESET) //build/corsola $(TEST_ARGS)"
	@go run ./cmd/corsola/ $(TEST_ARGS)
.PHONY: test

fmt:
	@echo "$(GREEN)==>$(RESET) $(BOLD)fmt$(RESET)"
	go fmt ./...
lint:
	@echo "$(GREEN)==>$(RESET) $(BOLD)lint$(RESET)"
	go vet ./...
.PHONY: fmt lint
.NOTPARALLEL: fmt lint

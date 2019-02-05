GOCMD=go
GOBUILD=$(GOCMD) build

GO_BINARY_NAME=golibrary.so
C_BINARY_NAME=executable

execute: $(GO_BINARY_NAME) $($(C_BINARY_NAME))
	@./executable

$(GO_BINARY_NAME): golibrary.go
	@$(GOBUILD) -o $(GO_BINARY_NAME) -buildmode=c-shared golibrary.go

$(C_BINARY_NAME): main.c
	@clang -o executable main.c -L. golibrary.so

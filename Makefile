GOCMD=go
GOBUILD=$(GOCMD) build

GO_BINARY_NAME=golibrary.so
C_BINARY_NAME=executable
BUILD_FILES=$(GO_BINARY_NAME) $(C_BINARY_NAME) golibrary.h

execute: $(GO_BINARY_NAME) $(C_BINARY_NAME)
	@./executable

clear:
	@rm -f $(BUILD_FILES)

$(GO_BINARY_NAME): golibrary.go
	@$(GOBUILD) -o $(GO_BINARY_NAME) -buildmode=c-shared golibrary.go

$(C_BINARY_NAME): main.c
	@clang -o executable main.c -L. golibrary.so

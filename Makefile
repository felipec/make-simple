CC := gcc

test:
	$(SHELL) ./foo.t

create-process: create-process.o

test-create-process: create-process
	./create-process "bash --version"

.PHONY: test

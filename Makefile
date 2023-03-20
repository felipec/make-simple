CC := gcc

all: info test sub-info sub-test

info:
	$(info ## $@)
	$(info main SHELL $(SHELL))
	$(info main MAKE $(MAKE))

test:
	$(info ## $@)
	sub/foo.t

sub-info:
	$(info ## $@)
	$(MAKE) -C sub info

sub-test:
	$(info ## $@)
	$(MAKE) -C sub test

create-process: create-process.o

test-create-process: create-process
	./create-process "bash --version"

.PHONY: info test sub-info sub-test

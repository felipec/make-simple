all: info test straight-test

info:
	$(info sub SHELL $(SHELL))
	$(info sub MAKE $(MAKE))

test:
	./foo.t

straight-test:
	bash -c ./foo.t

.PHONY: info test straight-test

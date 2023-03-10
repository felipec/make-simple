all: info test sub-info sub-test

info:
	$(info ## $@)
	$(info main SHELL $(SHELL))
	$(info main MAKE $(MAKE))

test:
	$(info ## $@)
	bash sub/foo.t

sub-info:
	$(info ## $@)
	$(MAKE) -C sub info

sub-test:
	$(info ## $@)
	$(MAKE) -C sub test

.PHONY: info test sub-info sub-test

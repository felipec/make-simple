all: info test-foo test-bar test-bar-bash

info:
	$(info ## $@)
	$(info main SHELL $(SHELL))
	$(info main MAKE $(MAKE))

test-foo:
	$(info ## $@)
	sub/foo.t

test-bar:
	$(info ## $@)
	sub/bar.t

test-bar-bash:
	$(info ## $@)
	exec bash sub/bar.t

sub-info:
	$(info ## $@)
	$(MAKE) -C sub info

sub-test:
	$(info ## $@)
	$(MAKE) -C sub test

.PHONY: info test sub-info sub-test

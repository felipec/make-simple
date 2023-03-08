all: info test straight-test sub-info sub-test sub-straight

info:
	$(info ## $@)
	$(info main SHELL $(SHELL))
	$(info main MAKE $(MAKE))

test:
	$(info ## $@)
	sub/foo.t

straight-test:
	$(info ## $@)
	bash -c sub/foo.t

sub-info:
	$(info ## $@)
	$(MAKE) -C sub info

sub-test:
	$(info ## $@)
	$(MAKE) -C sub test

sub-straight:
	$(info ## $@)
	$(MAKE) -C sub straight-test

.PHONY: info test straight-test sub-info sub-test sub-straight

all: info test pwsh sub-info sub-test

info:
	$(info ## $@)
	$(info main SHELL $(SHELL))
	$(info main MAKE $(MAKE))

test:
	$(info ## $@)
	sub/foo.t

pwsh:
	$(info ## $@)
	./pwsh.ps1

sub-info:
	$(info ## $@)
	$(MAKE) -C sub info

sub-test:
	$(info ## $@)
	$(MAKE) -C sub test

.PHONY: info test pwsh sub-info sub-test

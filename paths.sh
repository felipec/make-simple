#!/bin/sh

test_bash() {
	[ -e "$1" ] || return
	printf '\n## %s \n\n' "testing '$1'"
	"$1" --version
	"$1" -c 'echo success'
}

IFS=:
for e in $PATH; do
	test_bash "$e/bash"
	test_bash "$e/bash.exe"
done

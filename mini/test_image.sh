#!/usr/bin/env bats

PACKAGES="git gcc make valgrind cppcheck ncruses clang"

@test "my first test" {
	which git
}

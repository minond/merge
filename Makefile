.PHONY: dependencies test lint

dependencies:
	@git submodule update --init --recursive

test:
	./vendor/expect/expect test/merge.sh test/render.sh

lint:
	shellcheck merge render
	shellcheck merge render test/*.sh -e SC2046

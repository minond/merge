.PHONY: dependencies test

dependencies:
	@git submodule update --init --recursive

test:
	./vendor/expect/expect test/merge.sh test/render.sh

CASK ?= cask

all: test

test: ecukes

ecukes:
	$(CASK) exec ecukes --no-win

.PHONY: ecukes test all

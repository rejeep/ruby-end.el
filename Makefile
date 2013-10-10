CASK ?= cask

all: test

test: ecukes

ecukes:
	$(CASK) exec ecukes

.PHONY: ecukes test all

.PHONY: main

main:
	${HOME}/.local/bin/odin/odin run .

dev:
	find . -iname "*.odin" | entr -pcr make

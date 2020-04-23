ifndef BIN
	# if BIN isn't set, assume local build
	BIN=bin
endif

all: ${BIN}/rcon

${BIN}/rcon: src/rcon.c
	mkdir -p ${BIN}
	gcc -o $@ $^

install:
	cp ${BIN}/rcon ~/.local/bin

clean:
	rm -rf ${BIN}

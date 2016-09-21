SOURCES=pairs vcosine vdiff vdim vdot vmag vscale vsum vtfidf vtotal vunit vzero
PREFIX?=/usr/local/bin

all:

install:
	echo $(SOURCES) | tr ' ' '\n' | xargs -I '{}' cp {} $(PREFIX)/{}

uninstall:
	echo $(SOURCES) | tr ' ' '\n' | xargs -I '{}' rm $(PREFIX)/{}


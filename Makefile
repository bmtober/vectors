SRCSDIR:=src
DOCSDIR:=docs
TESTDIR:=test
SOURCES:=$(wildcard $(SRCSDIR)/*)
SOURCES:=$(notdir $(SOURCES))
PREFIX?=/usr/local/bin

.PHONY: all $(DOCSDIR) $(TESTDIR) install uninstall clean

all:

install:
	echo $(SOURCES) | tr ' ' '\n' | xargs -I '{}' cp $(SRCSDIR)/{} $(PREFIX)/{}

uninstall:
	echo $(SOURCES) | tr ' ' '\n' | xargs -I '{}' rm $(PREFIX)/{}

$(DOCSDIR):
	$(MAKE) -C $@\

clean-recursive:
	$(MAKE) -C $(DOCSDIR) clean-recursive
	$(MAKE) -C $(TESTDIR) clean-recursive

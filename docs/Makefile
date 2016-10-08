
TARGETS = talk.html

OBJECTS = $(TARGETS:%.html=%.adoc)

SOURCES = header.txt talk.txt


docs: $(TARGETS)

$(OBJECTS): $(SOURCES)
	cat $+ > $@

%.html: %.adoc Makefile
	asciidoc $<

%.png: %.dot
	dot -Tpng $< > $@



TARGETS:=talk.html
OBJECTS:=$(TARGETS:%.html=%.adoc)
SOURCES:=header.txt talk.txt

all: $(TARGETS)

$(OBJECTS): $(SOURCES)
	cat $+ > $@

%.html: %.adoc Makefile
	asciidoc $<

%.png: %.dot
	dot -Tpng $< > $@

clean-recursive: clean
	$(MAKE) -C pic clean-recursive
	
clean:
	-rm *.adoc *.html

PREFIX ?= /usr/local

fizzbuzz: fizzbuzz.c
	$(CC) -std=c89 $< -o $@

fizzbuzz-modern: modern.c
	$(CC) $< -o $@

install: fizzbuzz fizzbuzz-modern
	install -d $(DESTDIR)$(PREFIX)/bin
	install -t $(DESTDIR)$(PREFIX)/bin $^

PREFIX ?= /usr/local

fizzbuzz: fizzbuzz.c
	$(CC) -std=c89 $< -o $@

install: fizzbuzz
	install -d $(DESTDIR)$(PREFIX)/bin
	install -t $(DESTDIR)$(PREFIX)/bin $^

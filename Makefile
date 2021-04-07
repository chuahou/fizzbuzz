$(out)/fizzbuzz: fizzbuzz.c
	$(CC) $< -o $@ -std=c89

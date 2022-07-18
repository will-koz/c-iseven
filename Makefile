CC := gcc
COMPILER := haskell-compiler

EXEC := main
INPT := main.hs

# This is the thing to include in all of the C files where you use is_even
LIBRARYFUNCTIONS = iseven.c

EXAMPLEC := example.c
EXAMPLE := example

$(EXAMPLE): $(EXAMPLEC) $(LIBRARYFUNCTIONS)
	$(CC) $(EXAMPLEC) -o $@

$(LIBRARYFUNCTIONS): $(EXEC)
	./$(EXEC) > $(LIBRARYFUNCTIONS)

$(EXEC): $(INPT)
	$(COMPILER) $(INPT)

run: $(EXAMPLE)
	# ==============================================================================================
	./$(EXAMPLE)
	# ==============================================================================================

clean:
	rm -f $(EXAMPLE) $(EXEC) $(LIBRARYFUNCTIONS) *.hi *.o

.PHONY: run clean

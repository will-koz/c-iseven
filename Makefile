COMPILER := haskell-compiler

EXEC := main
INPT := main.hs

iseven.c: $(EXEC)
	./$(EXEC) > iseven.c

$(EXEC):
	$(COMPILER) $(INPT)

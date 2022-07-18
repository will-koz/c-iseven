# c-iseven

c-iseven is a tool for determining if a number is even in c, written in Haskell

## Installation

Run `make` to build the library and the examples. (Or just `make iseven.c` for the library) Then
copy the created iseven.c to your repository that needs the is_even function.

## Running

To immediately run the examples as soon as they are built, run `make run`.

## Notes

- There is currently no support for negative numbers and 0. This bug will be fixed in the future
- By default, there is only support for numbers up to 1024. To change this, edit `iterations` in
[main.hs](main.hs).
- [example.c](example.c) uses spaces, rather than tabs

## License

This content is licensed under the [MIT License](license).

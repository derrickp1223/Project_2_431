# Main usage of the Agda

The built in library for Agda is limited so it is recommended to install and configure the Agda Standard Library. 
It contains the bindings for the most commonly used Haskell functions like putStrLn which is used in the second Hello World example.

### How to run Agda Programs
- Use the "agda-mode" extension on VS-Code and press Command-c + Command-l
- Compile the .agda file with agda --compile (filename).agda then run the executible with ./(filename)

### Examples:
#### Hello World:

Returns "All done!" if you have installed Agda and agda-mode
```
module hello-world where

open import IO

main = run (putStrLn "Hello, World!")
```
#### Hello World with executible:

Prints "Hellow world!" when executible is ran
- Make sure standard library is configured properly
```
module hello-world where

open import IO

main : Main
main = run (putStrLn "Hello, World!")
```

---

Data structures: TODO
```bash
blah
```
Concurrency: TODO
```bash
blah
```
Map/reduce/filter: TODO
```bash
blah
```
Tail recursion: TODO
```bash
blah
```

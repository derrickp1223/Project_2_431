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

Prints "Hello, world!" when executible is ran
- Make sure standard library is configured properly
```
module hello-world where

open import IO

main : Main
main = run (putStrLn "Hello, World!")
```

---

#### Data structures:

#### Here is a declaration of a tree:
```bash
data Tree (A : Set) : Set where
  leaf : Tree A
  node : A → Tree A → Tree A → Tree A
```

Here is an example of a function that will show the tree in pre-order:
```bash
preOrder : {A : Set} → Tree A → List A
preOrder leaf = []
preOrder (node x l r) = x ∷ (preOrder l ++ preOrder r)
```

#### Declaration of a list:
```bash
data List (A : Set) : Set where
  []  : List A
  _∷_ : A → List A → List A
```

Example of a list of all nature numbers, like haskell is made with lazy eval:
```bash

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

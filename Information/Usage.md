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

### Data structures:

#### Here is a definition of a tree:
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

#### Definition of a list:
You can use this or import the list library with "open import Agda.Builtin.List"

```bash
data List (A : Set) : Set where
  []  : List A
  _∷_ : A → List A → List A
```

Example of a basic list:
```bash
myList : List Nat
myList = 1 ∷ 2 ∷ 3 ∷ []
```

#### Concurrency:
Agda does not support concurrency.

#### Map/reduce/filter:
There are no built in map/filter/reduce functions but we can make our own.

Map:
```bash
map : {A B : Set} → (A → B) → List A → List B
map _ [] = []
map f (x ∷ xs) = f x ∷ map f xs
```

Filter:
```bash
filter : {A : Set} → (A → Bool) → List A → List A
filter _ [] = []
filter p (x ∷ xs) with p x
... | true  = x ∷ filter p xs
... | false = filter p xs
```

Reduce:
```bash
reduce : {A B : Set} → (A → B → B) → B → List A → B
reduce _ z [] = z
reduce f z (x ∷ xs) = f x (reduce f z xs)
```

#### Tail recursion: TODO
```bash
blah
```

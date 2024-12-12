{-# OPTIONS --guardedness #-}

open import IO
open import Agda.Primitive
open import Agda.Builtin.Nat
open import Agda.Builtin.Equality
open import Data.Bool.Base  -- Use Bool type and logical operators from this module
open import Agda.Builtin.List

-- map function
map : {A B : Set} → (A → B) → List A → List B
map _ [] = []
map f (x ∷ xs) = f x ∷ map f xs

-- filter function
filter : {A : Set} → (A → Bool) → List A → List A
filter _ [] = []
filter p (x ∷ xs) with p x
... | true  = x ∷ filter p xs
... | false = filter p xs

-- reduce function
reduce : {A B : Set} → (A → B → B) → B → List A → B
reduce _ z [] = z
reduce f z (x ∷ xs) = f x (reduce f z xs)

-- Our test list
testList : List Nat
testList = 1 ∷ 2 ∷ 3 ∷ 4 ∷ []

-- Example: map a function (multiply by 2) over the list
mappedList : List Nat
mappedList = map (λ x → x * 2) testList  -- Expected: 2 ∷ 4 ∷ 6 ∷ 8 ∷ []

-- Example: filter out odd numbers or 1 or 3
filteredList : List Nat
filteredList = filter (λ (x : Nat) → (x == 1) ∨ (x == 3)) testList  -- Expected: 1 ∷ 3 ∷ []

-- Example: sum the numbers in the list using fold
sumList : Nat
sumList = reduce (λ x y → x + y) 0 testList  -- Expected: 10
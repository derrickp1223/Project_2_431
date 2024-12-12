{-# OPTIONS --guardedness #-}

open import Agda.Primitive
open import Agda.Builtin.Nat
open import Agda.Builtin.List

-- Tail-recursive sum function
sumTailRecursive : List Nat → Nat → Nat
sumTailRecursive [] acc = acc
sumTailRecursive (x ∷ xs) acc = sumTailRecursive xs (acc + x)

-- Helper function to call the tail-recursive sum function with an initial 0
sum : List Nat → Nat
sum xs = sumTailRecursive xs 0
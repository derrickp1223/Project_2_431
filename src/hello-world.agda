module hello-world where

open import IO

main : Main
main = run (putStrLn "Hello, World!")
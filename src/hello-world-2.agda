module hello-world-2 where

open import IO

main : Main
main = run (putStrLn "Hello, World!")
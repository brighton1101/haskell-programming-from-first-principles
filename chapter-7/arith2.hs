module Arith2Ex where

add :: Int -> Int -> Int
add x y = x + y

addPf :: Int -> Int -> Int
addPf = (+)

addOne :: Int -> Int
addOne = \x -> x + 1

addOnePf :: Int -> Int
addOnePf = (+1)

module Exercises where

-- Write a type signature
functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

-- Given type, write function
i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b
c'' x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r c = [head c]

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = undefined

a :: (a -> c) -> a -> a
a xToY x = undefined

a' :: (a -> b) -> a -> b
a' xToY x = undefined


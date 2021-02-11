module Taekwondo where

data Woot
data Blah

-- Example
-- f :: Woot -> Blah
-- f = undefined

-- g :: (Blah, Woot) -> (Blah, Blah)
-- g (a, b) = (a, f b)

-- 1.
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h i = g (f i)

-- 2.
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w (q x)

-- 3.
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (a, b) = (xz a, yz b)

-- 4.
munge :: (x -> y)
    -> (y -> (w, z))
    -> x
    -> w
munge xToY yToWZ x = fst (yToWZ (xToY x))

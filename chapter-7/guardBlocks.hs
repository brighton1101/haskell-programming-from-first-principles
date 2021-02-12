module GuardBlocksEx where

myAbs :: Integer -> Integer
myAbs x
    | x < 0 = (-x)
    | otherwise = x

dogYrs :: Integer -> Integer
dogYrs x
    | x <= 0    = 0
    | x <= 1    = x * 15
    | x <= 2    = x * 12
    | x <= 4    = x * 8
    | otherwise = x * 6

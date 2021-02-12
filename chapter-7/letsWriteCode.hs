module LetsWriteCodeCh7 where

tensDigit :: Integral a => a -> a
tensDigit x = d
    where vals = divMod x $ 10
          d    = (fst vals) `mod` 10

foldBool :: a -> a -> Bool -> a
foldBool x y z = case z of
        True -> x
        _    -> y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z
    | z         = x
    | otherwise = y

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y

g :: (a -> b) -> (a,  c) -> (b, c)
g aToB (a, c) = (aToB a, c)

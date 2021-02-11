module Palindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x =
    unreversedLeft == reversedRight
    where
        addp = if ((length x) `mod` 2 == 0) then 0 else 1
        unreversedLeft = take (length x `div` 2) x
        reversedRight = reverse (drop ((length x `div` 2) + addp) x)


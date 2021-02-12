module PatternMatchingEx where

-- Order matters! Always go from
-- most to least specific
-- If you put
-- isItTwo _ = False
-- isItTwo 2 = True
--
-- (isItTwo 2) == False
isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False


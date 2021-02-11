module ExcerisesCh3 where

-- Given "Curry is awesome"
-- Return "Curry is awesome!"
exerA :: String -> String
exerA inp = inp ++ "!"

-- Write a function of type
-- String -> Char that returns
-- third char in str
thirdLetter :: String -> Char
thirdLetter x = head (drop 2 x)

letterIndexStr :: String
letterIndexStr = "Curry is awesome"
letterIndex :: Int -> Char
letterIndex x = head (drop x letterIndexStr)

-- Write a function to reverse the
-- string "Curry is awesome" and
-- return the result "awesome is Curry"
rvrs :: String
rvrs = (drop 9 letterIndexStr) ++ " " ++ (take 2 (drop 6 letterIndexStr)) ++ " " ++ (take 5 letterIndexStr)

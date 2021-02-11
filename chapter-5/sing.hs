 module Sing where

 fstString :: String -> String
 fstString s = s ++ " in the rain"

 sndString :: String -> String
 sndString s = s ++ " over the rainbow"

 sing = if (x > y) then fstString x else sndString y
    where
        x = "Signin"
        y = "Somwhere"


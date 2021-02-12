module CompositionEx where

f x = take 5 . enumFrom $ x

g x = take 5 . filter odd . enumFrom $ x

module MoodSwing where

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
-- pattern matching synatx
changeMood _ = Blah

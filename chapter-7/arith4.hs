module Arith4 where

roundTrip :: (Show a, Read b) => a -> b
roundTrip = read . show

-- To make calling this work:
-- You need to do roundTrip 4 :: Int

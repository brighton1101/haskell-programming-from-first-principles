module TupleSwapping where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tup1 tup2 = ((snd tup1, snd tup2), (fst tup1, fst tup2))

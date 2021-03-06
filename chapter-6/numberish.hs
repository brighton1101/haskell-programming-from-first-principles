module Numberish where

class Numberish a where
    fromNumber :: Integer -> a
    toNumber   :: a -> Integer

-- pretend newtype is data for now ??
newtype Age =
    Age Integer
    deriving (Eq, Show)

instance Numberish Age where
    fromNumber n = Age n
    toNumber (Age n) = n

newtype Year =
    Year Integer
    deriving (Eq, Show)

instance Numberish Year where
    fromNumber n = Year n
    toNumber (Year n) = n

-- Now we write a function
sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
    where
        integerOfA = toNumber a
        integerOfAPrime = toNumber a'
        summed = integerOfA + integerOfAPrime


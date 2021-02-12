module EqInstances where


-- 1.
data TisAnInteger =
    TisAn Integer

instance Eq (TisAnInteger) where
    (==) (TisAn value) (TisAn value') = value == value' 

-- 2.
data TwoIntegers =
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two v1 v2) (Two v1' v2') = (v1 == v1' && v2 == v2')

-- 3.
data StringOrInt =
    TisAnInt Int
    | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt v) (TisAnInt v') = v == v'
    (==) (TisAString s) (TisAString s') = s == s'
    (==) (_) (_) = False

-- 4.
data Pair a =
    Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair v1 v2) (Pair v1' v2') = (v1 == v1' && v2 == v2')


-- 5.
data Tuple a b =
    Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple v1 v2) (Tuple v1' v2') = (v1 == v1' && v2 == v2')


-- 6.
data Which a =
    ThisOne a
    | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne v) (ThisOne v') = v == v'
    (==) (ThatOne v) (ThatOne v') = v == v'
    (==) (_) (_) = False

-- 7.
data EitherOr a b =
    Hello a
    | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello v) (Hello v') = v == v'
    (==) (Goodbye v) (Goodbye v') = v == v'
    (==) (_) (_) = False

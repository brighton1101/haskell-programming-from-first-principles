module AdvancedEmployees where

data Employee = Coder
    | Manager
    | Veep
    | CEO
    deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' =
    putStrLn $ show e ++ " is the boss of " ++ show e'

codersRuleCEOSDrool :: Employee -> Employee -> Ordering
codersRuleCEOSDrool Coder Coder = EQ
codersRuleCEOSDrool Coder _     = GT
codersRuleCEOSDrool _     Coder = LT
codersRuleCEOSDrool e e' =
    compare e e'

employeeRank f e e' =
    case f e e' of
        GT -> reportBoss e e'
        EQ -> putStrLn "Neither employee is the boss"
        LT -> (flip reportBoss) e e'

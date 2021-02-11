-- type definition below
-- syntax: `sayHello` has the type `String -> IO () `
sayHello :: String -> IO ()
sayHello x =
    putStrLn("Hello, " ++ x ++ "!")

-- In repl you would type `let triple x = x * 3`
triple x = x * 3


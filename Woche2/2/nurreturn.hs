main :: IO()
main = do
    _ <- return "a"
    b <- return "Ende"
    print b
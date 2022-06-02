fmap (++"!") (Right "hello")
Just (++"!") <*> (Right "Hello")
fmap (+1) (Left "Fehler")
fmap (+1) (Right 2)


Right(++"!") <*> Left "Fehler"
Right (++) <*> (Right "Hello") <*> (Right "!")
Right (+1) <*> (Right 2)
Right (+) <*> (Right 1) <*> (Right 2)
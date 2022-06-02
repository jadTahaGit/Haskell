:m Control.Exception
let a = 4 `div` 0
print (a)
try (print(a)) :: IO(Either SomeException ())
print (4 `div` 2)
try (print(4 `div` 2)) :: IO(Either SomeException ())

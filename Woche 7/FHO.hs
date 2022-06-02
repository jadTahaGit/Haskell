
zweimalAnwenden f = f . f

-- Diese Funktionen sind in Prelude vordefiniert
-- curry ::   ((a,b)->c) -> a -> b -> c
-- uncurry :: (a -> b -> c) -> (a,b) -> c
-- flip ::    (a -> b -> c) -> b -> a -> c


-- In GHCI:
-- (zweimalAnwenden (\x -> 3*x)) 5
-- let f x y = 2*x + 3*y
-- f 1 2
-- uncurry f (1,2)
-- let g (x, y) = 2*x + 3*y
-- g(1,2)
-- curry g 1 2
-- f 2 1
-- flip f 1 2 
-- (/) 1 2
-- flip (/) 1 2   -- 2/1 = 2.0
-- (>) 3 5
-- flip (>) 3 5   -- 5>3 = True

-- #######################################################
-- ######################Currying#########################
-- #######################################################

-- Currying is the process of transforming a function that takes multiple arguments in a tuple as its argument, 
-- into a function that takes just a single argument and returns another function which accepts further arguments, 
-- one by one, that the original function would receive in the rest of that tuple.

-- f :: a -> (b -> c)     -- which can also be written as    f :: a -> b -> c
-- is the curried form of
    
-- g :: (a, b) -> c
-- You can convert these two types in either directions with the Prelude functions curry and uncurry.

-- f = curry g
-- g = uncurry f
-- Both forms are equally expressive. It holds

-- f x y = g (x,y)    
-- however the curried form is usually more convenient because it allows partial application.
data Polynom c e = Poly c e (Polynom c e ) | PolySentinel deriving Eq;


p0 =  PolySentinel
p1 = PolySentinel c e



tuplesToPoly :: [(c, e)] -> Polynom c e
tuplesToPoly [] = PolySentinel
tuplesToPoly (( c , e ):xs) = Poly c e (tuplesToPoly xs)



showPoly :: (Eq c, Eq e, Show c, Show e) => Char -> Polynom c e -> String
showPoly v PolySentinel = ""
showPoly v (Poly c e PolySentinel) =
    concat [ show c , "*", [v], "^", show e]
showPoly v (Poly c e rest) =
    concat [ show c , "*", [v], "^", show e ,
            " + ", showPoly v  rest]

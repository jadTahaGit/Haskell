f x y = 2*x + 3*y

g x y = 10*x + y  

-- Welche Aussagen sind Korrekt?
-- f 1 ist eine Funktion hoeherer Ordnung
-- (\x -> f x) ist eine Funktion hoeherer Ordnung
-- flip f ist eine Funktion hoeherer Ordnung
-- flip ist eine Funktion hoeherer Ordnung

-- Ist die Funktionskomposition (.) eine Funktion hoehere Ordnung?

--Simple Example
s x = 2*x
j x = 2*x
l x = (s. j) x

-- Example with 2 Parameters
p' x y = f' ( g' x y )
-- p x y = (f . g) x y   -- Dieser Syntax ist Falsch
f' x y = 2*x + 3*y

g' x y = 10*x + y  

-- Another Typ of Parameter
p'' (x,y) = (f''. g'') (x,y)
f'' (x,y) = (2*x, 3*y)
g'' (x,y) = (10*x , y)


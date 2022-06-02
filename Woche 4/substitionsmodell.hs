quadrat = \ x -> x*x

doppelt = let z = 2 in \ x -> z * x

--selbst gedacht
vierFach = let y = 4 in \ x -> y * x
-- Ohne Let in dings:
dreiFach = \ x -> 3 * x

-- Sehr gut verstsanden jedoch hat man hier auch irgendwann Stackoverflow!!!!
fib = \ n -> if n <= 0
            then 0
            else if n==1
                then 1
                else fib (n-1)+fib(n-2) 



a = 3      --- aendere den Wert von a und beobachte!
c = let b = 2 in a+ b
-- Mit ghc
-- c



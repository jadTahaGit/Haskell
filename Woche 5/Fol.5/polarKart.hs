newtype Polar = Polar (Double, Double)
newtype Kart = Kart (Double, Double) 

abstand :: Kart -> Kart -> Double
abstand p1 p2 = 
    sqrt ((first p1 - first p2)^2 + (second p1 - second p2)^2)
     where first (Kart (x , _ )) = x
           second(Kart( _ , y)) = y

p1 = Kart (1,0)
p2 = Kart (0,1)

p3 = Polar (1,0)
p4 = Polar (0,1)


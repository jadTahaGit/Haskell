laenge :: Num a => [b] -> a     -- Num a ist eine Typklasse die hilft uns, all die verschiedene Artenvon Zahlen eingeben zu koennen
laenge liste = hlaenge 0 liste

hlaenge :: Num a => a -> [b] -> a
hlaenge akk [] = akk    -- gibt den Wert des akkes aus.
hlaenge akk (_:t) = hlaenge  (akk+1) t


-- Eine Typklasse ermöglicht einem Polymorphismus, der über den Polymorphismus hinaus geht, der mit Typklasse möglich ist.
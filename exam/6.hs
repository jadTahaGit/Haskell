data LinkedList a = ListElem a (LinkedList a) | ListSentinel deriving(Show)

l0 = ListSentinel
l1 = ListElem 1 ListSentinel
l2 = ListElem 1 (ListElem 2 ListSentinel)



listToLL :: [a] -> LinkedList a
listToLL  [] = ListSentinel
listToLL (x:xs) = ListElem x (listToLL xs)

l3 = listToLL [1,2,3]



showLL :: Show a => LinkedList a -> String
showLL ListSentinel = ""
showLL (ListElem a ListSentinel) = show a
showLL (ListElem a rest) = concat [ show a, ">>>", showLL rest]

list3 = showLL l3

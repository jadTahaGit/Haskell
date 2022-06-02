 Monoid: Assoziatives Operator mit Neutrum
1) Foldable (Monoid): Monoid, deren Werten aggregiert(”gefaltet“) werden k¨onnen.

2) Functor: Datenbeh¨alter oder Berechnungskontext mit einer Funktion fmap zur Ubertragunmg einer Funktion fuer
”normale Werte“ auf den Beh¨alter oder Berechnungskontext.

3) Applicative (Functor): Functor mit Operator (<*>) zur
Anwendung von Funktionen ” innerhalb des Behaelters oder Berechnungskontextes”.

4) Monad: Eine Erweiterung von Applicative (Functor).

5) Monaden IO a: Monaden zur Sequenzierung von
Berechnungen, was Programmiersprachen mit verz¨ogerter
Auswertung sonst nicht anbieten wurden. ¨

36 / 39Praktische Relevanz der Typ-Klassen Monoid, Foldable,
Functor, Applicative (Functor) und Monad
Eine Monade bietet Operatoren an, womit Daten zwischen zwei
”
Berechnungskontexte“ hin und her geschoben werden k¨onnen:
I Eine Monade IO a erm¨oglicht, Daten ein- und auszugen: Sie
verbindet die ”
Außenwelt“ mit einem Program
I Die Monade Maybe Int erm¨oglicht, ganze Zahlen in einen
Kontext fur ¨
”
sichere Berechnungen “ – z.B. ohne der Gefahr
einer Division durch Null – zu bringen und die Ergebnisse von
”
sicheren Berechnungen “ falls m¨oglich in ganzen Zahlen
umzuwandeln.
37 / 39Praktische Relevanz der Typ-Klassen Monoid, Foldable,
Functor, Applicative (Functor) und Monad
Diese Typ-Klassen sind Programming Patterns, d.h. Blaupausen
(Schablonen) fur die Programmierung, die im Gegenteil zu den ¨
derzeit gel¨aufigen Programming Patterns pr¨azise mathematische,
d.h. uberpr ¨ ufbare, Voraussetzungen haben. ¨
Foglich ist es davon auszugehen, dass diese Typ-Klassen uber ¨
Haskell hinaus sich in der Programmierpraxis verbreiten werden.
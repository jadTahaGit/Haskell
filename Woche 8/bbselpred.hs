import Control.Exception 
import Data.Typeable

data BB a = L | K a (BB a) (BB a) deriving(Show)

data BBException = BBLeer | BBhatKeinNachfolger deriving (Show, Typeable)

instance Exception BBException 

wurzel L = throw BBLeer
wurzel (K x _ _) = x

linkerBaum L = throw BBhatKeinNachfolger
linkerBaum (K _ links _) = links

rechterBaum L = throw BBhatKeinNachfolger
rechterBaum (K _ _ rechts) = rechts

istLeer L = True
istLeer (K _ _ _) = False


--  b4 = K 'a' (K  'a'  (K 'c' L L)  L) (L)
-- linkerbaum b4 
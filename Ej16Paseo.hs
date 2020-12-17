data Mov = N Int | S Int | E Int | O Int deriving (Show)

--Tipo Recursivo
data Paseo a = Pasos Mov (Paseo a)| Descansa a deriving (Show) 
--Descansa 10
--Pasos (N 20) (Descansa 20)
--Pasos (N 20) (Pasos (E 30) (Descansa 20))
p1=Pasos (N 20)(Pasos(E 30)(Pasos(S 10)(Pasos(O 40)(Descansa 'a'))))

describe :: [Mov] -> a -> Paseo a 
describe [] x = Descansa x
describe (m:ms) p = Pasos m (describe ms p)
-- funcion que a partir de una lista de movimientos y un dato, genera -- un paseo para ese dato con los movimientos que aparecen en
--la lista y manteniendo el orden. El primer elemento de la lista 
-- es el primer paseo y asi sucesivamente.
--describe [ N 20, E 30] 'a'


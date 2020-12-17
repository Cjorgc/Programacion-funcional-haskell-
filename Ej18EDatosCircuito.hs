type Entradas = (Bool, Bool)
_and :: Entradas ->Bool
_and (q1, q2)   = q1 && q2
_or :: Entradas ->Bool
_or (q1, q2)    = q1 || q2
_not :: Bool ->Bool
_not q1 = not q1
circuito :: Entradas -> Bool
circuito (q1,q2) = _or (_and (q1, notq2), _and (q2, notq1))
    where notq1 = _not q1 ; notq2 = _not q2 


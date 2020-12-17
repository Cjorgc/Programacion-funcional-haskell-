data Arbol a = Hoja a | Nodo (Arbol a) (Arbol a) deriving (Show)
--a1::Arbol
a1 = Nodo (Nodo (Hoja 45) (Hoja 78))(Nodo (Hoja 12)(Nodo  (Hoja 23)(Hoja 13)))

a2=Nodo (Nodo (Hoja 45) (Hoja 78))(Nodo (Hoja 12)(Nodo(Nodo (Hoja 30) (Hoja 23))(Hoja 13)))

cantidadNodos::Arbol a->Int
cantidadNodos (Hoja x) = 0
cantidadNodos (Nodo x y)= 1+cantidadNodos x+cantidadNodos y

profundidad :: Arbol a -> Int
profundidad (Hoja _)     = 0
profundidad (Nodo x y) = 1 + max (profundidad x) (profundidad y)

mostrarHojas :: Arbol a -> [a]
mostrarHojas (Hoja x) =[x]
mostrarHojas (Nodo x y) = mostrarHojas x ++ mostrarHojas y
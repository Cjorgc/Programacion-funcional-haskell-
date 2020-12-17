func ::Int -> Int -> Int
func x y = x+y
--se le pasan una función y una lista, regresando la lista 
--resultado de
--aplicar la función a cada elemento de la lista.
aplica :: (Num a)=>(a ->a ->a)->[a]->[a]
aplica f (c:q)
	| q==[] = []
	| otherwise = [f c (head q)] ++ aplica f q
	



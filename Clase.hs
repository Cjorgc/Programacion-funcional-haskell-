sumaDiez x = x+10

esMayor x y = if x > y 
                 then "es mayor"
				 else "no es mayor"
				 
sumaDiezAMayoresVeinte x = if x > 20
                       then x + 10         
					   else x - (x+1)

-----------------------------------------------------
					   
producto 0 x = 0
producto 1 x = x
producto n 0 = 0
producto n x = n + producto n (x-1)

-----------------------------------------------------
					   
potencia:: Int -> Int -> Int
potencia 0 y = 0
potencia x 1 = x
potencia x y = potencia x (y-1) * x	

-----------------------------------------------------

valAbs::Int -> Int
valAbs x = if x > 0 then x
				    else x*(-1)

-----------------------------------------------------					

sumatoria::Int -> Int
sumatoria 0 = 0
sumatoria 1 = 1
sumatoria x = if x > 0 then x + sumatoria(x-1)
                       else -1
					   
-----------------------------------------------------					   
					   
divisor:: Int -> Int -> Bool
divisor x 0 = False
divisor x 1 = True
divisor 0 y = True
divisor x y = if (x - y) >= 0 then divisor (x-y) y
                                 else False

-----------------------------------------------------	

guarda::Int -> Int
guarda x | (x == 0) = 0
         | (x == 1) = 1
         |otherwise = 10	

---------------------------------------------------------		 
								 
divi:: Int -> Int -> Bool
divi x y |y == 0 = False
	     |y == 1 = True
		 |x == 0 = True
		 |x < 0 = False
	     |otherwise = divi(x-y) y
								 
------------------------------------------------------

mcd::Int -> Int -> Int
mcd x y |(x == 1) || (y == 1) = 1
        |(x == 0) || (y == 0) = 0
		|otherwise = if divisor x y then y
		                            else if divisor y x then x
									                    else 1
		                            

--funcion max/min devuelve maximo y minimo									
									
-- funcion odd/even devuelve boolean si es impar
	
--concatenar string y listas se usa "++"

--agregar un numero a una lista " 59 : [1,2]" tambien con cadenas

--Cuidado!! 'H' : "ola mundo" (comillas simples por que es lista de caracteres)

-- palabra reservada "let" para crear listas

--let lista = [1,2,3]

--indice posicion de lista ||2 (devuelve valor de posicion)

--let lista = [ [1,2,3] , [4,5,6] ]

--lista ||0 ||1 = 1

-- funciona head y tail

--init inversa de tail y last inversa de head

--let lista = [1..100] ( crea lista de 1 a 100)

-- let lista = [2,3 .. 100] (crea lista de 2 a 100 de 2 en 2) 

-- let lista = [10 , 95 .. 0] ( crea lista de 100 a 0 de 5 en 5)

--funciona con el abecedario (caracteres)

--funciones repeat, cycle , replicate x lista ,take x y (toma los primeros x de y)

--drop inversa de take

--Tipos y clases de tipos , ESTUDIAR!! Polimorfismo

-- :t 1+ sqrt 64
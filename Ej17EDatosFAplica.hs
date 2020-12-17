aplicaf::(Int->Int->Int)->[a]-> [a]
aplicaf f [] = []
aplicaf f (x:xs) = ((f x) : (aplicaf f xs))
emparejaListas :: [a] -> [a] -> [(a,a)]
emparejaListas [] _ = []
emparejaListas _ [] = []
emparejaListas (x:xs) (y:ys) = (x,y) : (emparejaListas xs ys)
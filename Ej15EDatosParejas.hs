parejas :: Eq a => [a] -> [a] -> [(a,a)]
parejas x y 
       | length x == length y && tail x == [] = [(head x, head y)]
       | length x == length y = [(head x, head y)] ++ parejas (tail x) (tail y)
       | otherwise = error "Deben ser del mismo tamaño"

suma:: Int->Int->Int
suma x y =x+y
aplica :: (a -> b) -> [a] -> [b]
aplica _ [] = []
aplica f (x:xs) = f x : aplica f xs
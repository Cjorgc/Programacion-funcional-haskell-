func ::Int -> Int -> Int
func x y = x+(y-1)
aplica ::(Int -> Int -> Int)-> [Int] -> [Int]
aplica f [] = []
aplica f (c:q) = f (last (c:q)) c : aplica f q
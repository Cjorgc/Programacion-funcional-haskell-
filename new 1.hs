im::[[Int]]->[[Int]]
im xss = [xs | xs <- xss, sum xs ==m]
	where m = maximum [sum xs | xs <- xss]
	
probando::a -> [a] -> [a]
probando y (x:xs) = tail (y:x:xs)

--cb::[[Int]] -> Bool
--cb xss = and [or [even x]|x <- xs]|xs <-xss]

df::Num a => [a] -> [a]
df xs = [a-b|(a,b)<-zip xs (tail xs)]

pu::Int->[a]->[a]
pu 0 k = []
pu n [] = []
pu n (c:q) = (c:pu (n-1)q)

p :: Int -> [Int]
p n = p' n 2 where
p' 1 _ = []
p' n f
	| n `mod` f == 0 = f : p' (n `div` f) f
	| otherwise = p' n (f + 1)
	
esto :: Eq a => [a] -> a
esto xs
 | xs ==[] = error "lista vacía"
 | (tail xs)==[] = head xs
 | otherwise = esto (tail xs)
 
dobleMe x = x * x

partes::Int->[a]->[a]
partes n x
	|n == 0 = []
	|otherwise = [head x] ++ partes (n-1) (tail x)
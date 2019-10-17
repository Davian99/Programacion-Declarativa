--David Sarnago Ojuely David Andrés López Gomez

--Ejercicio 1
--a)
a1 n = if (n == 0) then [0] else  (a1 (n-1)) ++ [n^2]
--b)
b1 n = if (n == 0) then [(0,0)] else (n, n^2) : b1(n-1)
--c)
c1 i = if (i == 0) then 0 else i * sin(i) + c1 (i-1)
--d)
d1_aux n k
    | k >= n = 0
    | (mod k 100 == 67) = 1 + d1_aux n (k*3)
    | otherwise = d1_aux n (k*3)  
d1 n = d1_aux n 1
--e)
e1 n
    | n == 0 = 0
    | ((mod n 3 == 0) || (mod n 5 == 0)) = 1 + e1 (n-1)
    | otherwise = e1 (n-1)


--Ejercicio 2
--a)
filter2::[a] -> (a -> Bool) -> (a -> Bool) -> ([a], [a])
filter2 xs p q = (filter p xs, filter q xs)
--b)
filters :: [a] -> [(a -> Bool)] -> [[a]]
filters xs ps = [filter f xs | f <- ps]
--c)
mapx :: p -> [p -> b] -> [b]
mapx x ps = map f ps
    where f h = h x
--d)
iguales :: (Eq a, Integral t) => (t -> a) -> (t -> a) -> t -> t -> Bool
iguales f g n m = all (both f g)  [n..m]
    where both f g x = f x == g x
--e)
cuantos :: (a -> Bool) -> [a] -> Int
cuantos p xs = length(filter (p) xs)
--f)
menorA :: Integral a => a -> a -> (a -> Bool) -> a
menorA n m p = head (filter (p) [n..m])
--g
mayor :: Integral a => a -> (a -> Bool) -> a
mayor n p = head (filter (p) [n..])
--h
ex :: Integral a => a -> a -> (a -> Bool) -> Bool
ex n m p = any (p) [n..m]

--Ejercicio 3
--last
last_fold :: [a] -> a
last_fold (x:xs) = foldl (\_ n -> n) x xs
--reverse
reverse_fold :: [a] -> [a]
reverse_fold = foldl (\acc curr -> curr : acc ) []
--all
all_fold :: (a -> Bool) -> [a] -> Bool
all_fold f = foldl (\acc curr -> f curr && acc) True
--minimun
min_fold :: [Int] -> Int
min_fold (x:xs) = foldl (\acc curr -> if curr < acc then curr else acc) x xs
--map
map_fold :: (a -> b) -> [a] -> [b]
map_fold f = foldl (\acc curr -> acc ++ [f curr]) []
--filter
filter_fold :: (a -> Bool) -> [a] -> [a]
filter_fold f = foldl (\acc curr -> if (f curr) then acc ++ [curr] else acc) []
--takeWhile
takeWhile_fold :: (a -> Bool) -> [a] -> [a]
takeWhile_fold f = foldl (\acc curr -> if (not (f curr)) then acc else acc ++ [curr]) []
--(++)
concat_fold :: [a] -> [a] -> [a]
concat_fold xs ys = foldl (\acc curr -> acc ++ [curr]) xs ys

--Ejercicio 4
foldr1a :: (a -> b -> b) -> [a] -> b
foldr1a f (x:xs) = f x (foldr1a f xs)

foldl1a :: (a -> a -> a) -> [a] -> a
foldl1a f (x:xs) = foldl f x xs

--Ejercicio 5
a5 n = map (^2) [0..n]
b5 n = map f [n,n-1..1]
   where f x = (x, x*x)
c5 = sum(map f [1..100])
    where f x = x * sin(x)
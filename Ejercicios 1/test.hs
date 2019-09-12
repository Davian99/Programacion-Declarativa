-- Comentario loco
{-
Lineas
-}

import Data.List
import System.IO()

pn = [2,3,5,7]
more_pn = pn ++ [11,13,17]

l = 4:3:4:3:[]

inf = [2,4..]

gg = [x * 2 | x <- pn]

k = [x | x <- [1..100000000], mod x 11 == 0 && mod x 13 == 0 && mod x 17 == 0 && mod x 23 == 0 && mod x 29 == 0]

p = [1..5]
t = [2..7]

lc(xs) = if (elem 0 xs) then 0 else if (length xs == 1) then head xs else lcm (head xs) (lc(tail xs))

print (lc (pn))

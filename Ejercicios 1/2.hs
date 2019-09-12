a) head ['a', 'f'] -> Char
b) tail ['a', 'f'] -> [Char]
c) tail head "af" -> Error, tail de un elemento
d) head (tail "af") -> Char
e) splitAt 4 ['a' .. 'f'] -> [[Char]]
f ) zip [3 + 2, 0] ["af"] -> [(Int, [Char]])]
g) drop (+2) [1,2,3] -> Error el + espera 2 operandos
h) drop (div 2 0) [1,2,3] -> Error por dividir entre 0
i1) 'ab' ++ 'bc' -> Error no existe el char ab ni bc
i2) "ab" ++ "bc" -> [Char]
i3) "ab" + "bc" -> Error 
i4) "ab" ++ 'c' -> Error
a) head ['a', 'f'] -> 'a'
b) tail ['a', 'f'] -> ['f']
c) tail head "af" -> -> Error
d) head (tail "af") -> 'f'
e) splitAt 4 ['a' .. 'f'] -> [['a', 'b', 'c', 'd'], ['e', 'f']] 
f ) zip [3 + 2, 0] ["af"] -> [(5, "af")]
g) drop (+2) [1,2,3] -> Error el + espera 2 operandos
h) drop (div 2 0) [1,2,3] -> Error por dividir entre 0
i1) 'ab' ++ 'bc' -> Error no existe el char ab ni bc
i2) "ab" ++ "bc" -> "abbc"
i3) "ab" + "bc" -> Error 
i4) "ab" ++ 'c' -> Error
module ListsDemo where


-- Списки, все элементы одного типа, длина списка не фиксирована, длина может изменяться 
-- [1,2,3,4,5] :: Num a => [a]
-- [True, True, False] :: [Bool]
-- ['h','i','!'] :: [Char] == "hi!" :: [Char]
-- вместо списка [Char] можно писать String (синоним)
-- "hi!" :: String

-- вставка в голову списка это :
str = 'H' : "ello"

-- конкатенация списков одного типа
str2 = str ++ " world"
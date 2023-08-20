module TypeDemo where

-- импорт модуля
import Data.Char

isCharDigit = isDigit

-- ghci> import Data.Char
-- ghci> isDigit '3'     
-- True
-- Hoogle, Хугл -- справочная система хаскеля

-- строгий статически типизированный яп
-- есть вывод типов для переменных
-- нет приведения типов

-- :type 'c' -- вывод типа объекта
-- :t 'c' -- вывод типа объекта
-- 'c' :: Char 
-- двойное двоеточие - типизация в хаскеле 

-- все числа это Num
-- :t 3
-- 3 :: Num a => a
-- задаёт ограничение для a
-- let x = 3 :: Int
-- :type x 
-- x :: Int

-- ghci> let y = 4 :: Double
-- ghci> :t y
-- y :: Double
-- ghci> y
-- 4.0
-- 3.4 :: Fractional a => a

-- стрелочка правоасоциативна
-- сколько стрелочек, столько аргументов функции
-- самый правый тип -- это тип результата функции
-- let f x y = if x then (-y) else y
-- f :: Num a => Bool -> a -> a
-- (&&) :: Bool -> Bool -> Bool
-- max :: Ord a => a -> a -> a
-- max 10 :: (Ord a, Num a) => a -> a
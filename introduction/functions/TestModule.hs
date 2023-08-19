module TestModule where

sayHello = putStrLn "Hello World frome modul Test!"

sumSquares x y = x^2 + y^2

funcA x = if x < 0 then -1 else 1

funcB x = (if x < 0 then -1 else 1) + 10

funcC x = if mod x 2 == 0 then "Nice" else "faq"

sign x = if x > 0 then 1 else if x == 0 then 0 else -1

-- Частичная функция, ей можно передать аргумент max10 16

max10 = max 10 

max10' x = max 10 x
module RecursionDemo where

factorial x = if x == 0 then 1 else x * factorial (x - 1)

-- Сопоставление с образцом
factorial' 0 = 1
-- неопровержимое сопоставление, так как есть переменная x
factorial' x = x * factorial' (x - 1)

-- error "ABC" -- выведет ошибку в диагностический поток и сообщение ABC 
-- undefined -- выведет ошибку в поток, маркирует ещё не сделанные методы, гарантирует прохождение всех тайп чеков
factorial'' 0 = 1
factorial'' x = if x < 0 then error "arg must be >= 0" else x * factorial'' (x - 1)

-- охранные выражения Guards
factorial''' n | n == 0     = 1
               | n < 0      = error "arg must be >= 0"
               | otherwise  = n * factorial''' (n - 1)


-- подобные выражения нужны для улучшения асимптотики
factorial4 n | n >= 0   = helper 1 n
             | otherwise = error "arg must be >= 0"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)
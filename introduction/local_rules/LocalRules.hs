module LocalRules where

-- начало строки это объявления глобальной переменной, поэтому там ничего не должно быть
roots :: Double ->
         Double ->
         Double ->
         (Double, Double)
roots a b c = 
    (
        (-b - sqrt (b ^ 2 - 4 * a * c)) / (2 * a)
        ,
        (-b + sqrt (b ^ 2 - 4 * a * c)) / (2 * a)
    )

-- функция let in 
    
roots' a b c = 
    let d = sqrt (b ^ 2 - 4 * a * c) in
    (
        (-b - d) / (2 * a)
        ,
        (-b + d) / (2 * a)
    )
    
-- порядок связывания не важен
roots'' a b c = 
    let {d = sqrt (b ^ 2 - 4 * a * c); x1 = (-b - d) / (2 * a); x2 = (-b + d) / (2 * a)} 
    in (x1, x2)

-- локальные связывания должны иметь один отступ
roots''' a b c = 
    let 
        x1 = (-b - d) / aTwice
        x2 = (-b + d) / aTwice
        d = sqrt (b ^ 2 - 4 * a * c)
        aTwice = (2 * a)
    in (x1, x2)

roots4 a b c = (x1, x2) where
        x1 = (-b - d) / aTwice
        x2 = (-b + d) / aTwice
        d = sqrt (b ^ 2 - 4 * a * c)
        aTwice = (2 * a)


-- это можно переписать с помощью let in
factorial n 
    | n >= 0   = helper 1 n
    | otherwise = error "arg must be >= 0"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)

factorial' n    | n >= 0  = 
                    let
                        helper' acc 0 = acc
                        helper' acc n = helper' (acc * n) (n - 1)
                    in helper' 1 n
                | otherwise = error "arg must be >= 0"

rootsDiff a b c = let
                    (x1, x2) = roots a b c
                  in x2 - x1



factorial' n    | n >= 0  = helper' 1 n
                | otherwise = error "arg must be >= 0"
                where
                    helper' acc 0 = acc
                    helper' acc n = helper' (acc * n) (n - 1)
                in 
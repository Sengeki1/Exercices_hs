-- Exercicio 1 --

beforeLast :: [a] -> [a] 
beforeLast [] = []
beforeLast (x:[]) = [x]
beforeLast (x:xs:[]) = [x]
beforeLast (x:xs) = x : beforeLast xs


-- Exercicio 2 --

-- Exercicio 3 --

isTrue :: [Bool] -> Bool
isTrue [] = False
isTrue (x:xs) | x == True = True
              | otherwise = isTrue xs


-- Exercicio 4 --

identicos :: (Num i, Ord i) => i -> a -> [a]
identicos n x | n <= 0  = []
              | otherwise = x : identicos (n-1) x


-- Exercicio 5 -- 




-- Exercicio 6 --

isElement :: (Eq a) => a -> [a] -> Bool
isElement a [] = False
isElement a (x:xs) = if a == x then True else isElement a xs


-- Exercicio 7 --

agrupalista :: [a] -> [a] -> [a]
agrupalista  [] ys = ys
agrupalista (x:xs) (y:ys) = x : agrupalista xs (y : ys)
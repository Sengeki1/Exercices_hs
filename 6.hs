import Data.Char

-- Exercício 1 --

pitagora :: Int -> [(Int, Int, Int)]
pitagora n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x ^ 2 + y ^ 2 == z ^ 2]

-- Exercício 2 --

upcase :: String -> String
upcase ns = [toUpper n | n <- ns]

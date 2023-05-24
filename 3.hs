
-- Função que lê 3 números inteiros e mostre o maior deles --
maior :: Int -> Int -> Int -> Int
maior x y z 
    | x >= y && x >= z = x
    | y >= z           = y
    | otherwise        = z
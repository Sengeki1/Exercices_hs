


-- Exercicio 1 --
notas :: [Double]
notas = [12, 10, 11]

media :: [Double] -> Double 
media nts = sum nts / fromIntegral (length nts)

resultado :: Double
resultado = media notas



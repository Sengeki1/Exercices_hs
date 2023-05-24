-- Exercicio 1

-- 1.1

factors :: Int -> [Int]
factors xs = [ x | x <- [1..xs], xs `mod` x == 0]

listFactors :: [Int] -> [[Int]]
listFactors xs = map factors xs

-- 1.2

paresMenor :: Int -> [Int]
paresMenor xs = [x | x <- [1..xs], even x, x < xs ] 


-- Exercicio 2

-- 2.1

invert :: [a] -> [a]
invert [] = []
invert (x:xs) = invert xs ++ [x]

-- 2.2

pertence :: Eq a => a -> [a] -> Bool
pertence _ [] = False
pertence n (x:xs) | n == x = True
                  | otherwise = pertence n xs

-- 2.3

intervalo :: Ord a => [a] -> a -> a -> [a]
intervalo [] a n = []
intervalo (x:xs) a n = if x >= a && x <= n then [x] ++ intervalo xs a n 
                            else intervalo xs a n


-- Exercicio 3

-- 3.1

pares :: [a] -> [b] -> [(a,b)]
pares [] _ = []
pares _ [] = []
pares (x:xs) (y:ys) = (x,y) : zip xs ys

-- 3.2


-- Exercicio 4

-- 4.1

type Nome = String
type Nota = Int
type Numero = Int

type Aluno = (Nome, Numero, Nota)

-- 4.2

pauta :: Aluno -> String
pauta (x, y, z) = if z >= 10 then "Aprovado" else
                    if z < 10 then "Reprovado" else "Incorrect"

-- 4.3

data Estacoes = Outono | Inverno | Primavera | Verao
    deriving(Eq,Ord, Show)

data Meses = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro
    deriving(Eq,Ord, Show)

-- 4.4

estacoes :: Meses -> Estacoes
estacoes meses  | meses <= Fevereiro = Inverno
                | meses <= Maio = Primavera
                | meses <= Agosto = Verao
                | meses <= Novembro = Outono
                | otherwise = Inverno


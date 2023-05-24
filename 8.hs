-- Crie uma definição de tipo para modelar os meses do ano e outra para as estações do ano.

-- Crie uma função que recebe o tipo mêses declarado acima e retorna o tipo estação.

data Estacoes = Outono | Inverno | Primavera | Verao
    deriving(Eq,Ord, Show)

data Meses = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro
    deriving(Eq,Ord, Show)

estacoes :: Meses -> Estacoes
estacoes meses  | meses <= Fevereiro = Inverno
                | meses <= Maio = Primavera
                | meses <= Agosto = Verao
                | meses <= Novembro = Outono
                | otherwise = Inverno


















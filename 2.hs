type Nome = String

type Nota1 = Float
type Nota2 = Float
type Nota3 = Float

data Pessoa = Aluno Nome Nota1 Nota2 Nota3

aluno1 = Aluno "Marco" 10 11 12
aluno2 = Aluno "Rafael" 12 13 10
aluno3 = Aluno "Ruben" 12 12 13

lista_alunos = [aluno1, aluno2, aluno3]


nota :: Pessoa -> IO ()
nota (Aluno _ n1 n2 n3)    
            | ((n1+n2+n3)/3 < 8) = putStr "Reprovado"
            | ((n1+n2+n3)/3 < 12) = putStr "Exame"
            | ((n1+n2+n3)/3 < 12) = putStr "Aprovado"


-- Exercício 1 --

fun1 :: Int -> Int -> Int
fun1 x y = if x > y then x else y

fun2 :: Int -> Int -> Int
fun2 x y | x > y = x
         | otherwise = y


-- Exercício 2 --

maior1 :: Int -> Int -> Int -> Int
maior1 x y z = if x > y && x > z then x else
                                if y > z then y else z

maior2 :: Int -> Int -> Int -> Int
maior2 x y z | x > y && x > z = x
             | y > z          = y
             | otherwise      = z


-- Exercício 3 --

fun3 :: Int -> Int -> Int -> Int
fun3 x y z = fun2 (fun2 x y) z

-- Exercício 4 --

num :: Int -> String
num x = if x == 1 then "Um" else
                        if x == 2 then "Dois" else
                            if x == 3 then "Tres" else
                                if x == 4 then "Quatro" else
                                    if x == 5 then "Cinco" else
                                        if x == 6 then "Seis" else
                                            if x == 7 then "Sete" else
                                                if x == 8 then "Oito" else
                                                    if x == 9 then "Nove" else
                                                        if x == 10 then "Dez" else "Zero"


-- Exercício 5 -- 


dataA :: Int -> Bool
dataA ano | mod ano 4 == 0 && (mod ano 400 == 0 || mod ano 100 /= 0) = True 
          | otherwise = False


-- Exercício 6 --

salario:: Float -> Float 
salario x = if x >= 11000 then x - (x * (7 / 100)) else
                            if x >= 35000 then do x - (x * (12 /100)) else 0

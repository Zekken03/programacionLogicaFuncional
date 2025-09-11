succ :: Integer -> Integer
succ x = x + 1

min :: Integer -> Integer -> Integer
min x y = if x < y then x else y

c

putStrLn " 3) Succ"
    putStrLn " 4) Min"
    putStrLn " 5) Max"
    putStrLn " 6) Div"
    putStrLn " 7) Mod"
    putStrLn " 8) Even"
    putStrLn " 9) Floor"
    putStrLn "10) GCD"
    putStrLn "11) Not"
    putStrLn "12) Odd"
    putStrLn "13) Signum"
    putStrLn "14) Snd"


    "3" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El sucesor de " ++ show x ++ " es " ++ show (succ x))
            menu
        "4" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El mínimo de " ++ show x ++ " y " ++ show y ++ " es " ++ show (min x y))
            menu
        "5" -> do
            putStrLn "Ingrese dos números separados por espacio:"   
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El máximo de " ++ show x ++ " y " ++ show y ++ " es " ++ show (max x y))
            menu
        "6" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("La división de " ++ show x ++ " entre " ++ show y ++ " es " ++ show (div x y))
            menu
        "7" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El módulo de " ++ show x ++ " entre " ++ show y ++ " es " ++ show (mod x y))
            menu
        "8" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn (show x ++ " es par: " ++ show (even x))
            menu
        "9" -> do
            putStrLn "Ingrese un número decimal:"
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn ("El valor de piso de " ++ show x ++ " es " ++ show (floor x))
            menu
        "10" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El máximo común divisor de " ++ show x ++ " y " ++ show y ++ " es " ++ show (gcd x y))
            menu
        "11" -> do
            putStrLn "Ingrese un valor booleano (True/False):"
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn ("El valor negado de " ++ show x ++ " es " ++ show (not x))
            menu
        "12" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn (show x ++ " es impar: " ++ show (odd x))
            menu
        "13" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El signo de " ++ show x ++ " es " ++ show (signum x))
            menu
        "14" -> do
            putStrLn "Ingrese dos valores separados por espacio (pueden ser de cualquier tipo):"
            n1 <- getLine
            let [x, y] = words n1
            putStrLn ("El segundo valor es: " ++ show (snd (x, y)))
            menu
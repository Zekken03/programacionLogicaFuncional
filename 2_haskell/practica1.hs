--obtiene el valor absoluto de un número
absoluto :: Integer -> Integer
absoluto x = abs x

--menor entero mayor o igual a x
miCeiling :: Double -> Integer
miCeiling x = if fromInteger (truncate x) == x then truncate x else truncate x + 1

--devuelve el valor siguiente de x
miSucc :: Integer -> Integer
miSucc x = x + 1

--obtiene el menor entre ambos
miMin :: Integer -> Integer -> Integer
miMin x y = if x < y then x else y

--obtiene el mayor entre ambos
miMax :: Integer -> Integer -> Integer
miMax x y = if x > y then x else y

--divide x entre y
miDiv :: Integer -> Integer -> Integer
miDiv x y
    | x < 0 && y < 0 = miDiv (-x) (-y)  
    | x < 0    = negate (miDiv (-x) y)  
    | y < 0    = negate (miDiv x (-y))  
    | x < y    = 0                      
    | otherwise = 1 + miDiv (x - y) y   

--obtiene el modulo de x entre y
miMod :: Integer -> Integer -> Integer
miMod x y
    | x < 0     = y + ((x `miMod` y) - y)  
    | x < y     = x                        
    | otherwise = miMod (x - y) y          

--verifica si x es par
miEven :: Integer -> Bool
miEven x = x `miMod` 2 == 0

--numero mayor entero no mayor que x
miFloor :: Double -> Integer
miFloor x = floor x

--maximo comun divisor entre x e y
miGcd :: Integer -> Integer -> Integer
miGcd x y = if y == 0 then x else miGcd y (miMod x y)

--negacion de un valor booleano
miNot :: Bool -> Bool
miNot x = if x then False else True

--verifica si x es impar
miOdd :: Integer -> Bool
miOdd x = miNot (miEven x)

--devuelve 1 si es positivo, -1 si es negativo y 0 si es cero
miSignum :: Integer -> Integer
miSignum x = if x > 0 then 1 else if x < 0 then
    -1 else 0

--retorna el segundo elemento
miSnd :: (a, b) -> b
miSnd (x, y) = y

menu :: IO()
menu = do
    putStrLn " ==== MENÚ ==== "
    putStrLn " ¿Qué desea hacer?"
    putStrLn " 1) Absoluto"
    putStrLn " 2) Ceiling"
    putStrLn " 3) Valor siguiente"
    putStrLn " 4) Obtiene el menor de dos números"
    putStrLn " 5) Obtiene el mayor de dos números"
    putStrLn " 6) División entera"
    putStrLn " 7) Módulo"
    putStrLn " 8) Verifica si un número es par"
    putStrLn " 9) Numero mayor entero no mayor que x"
    putStrLn "10) Máximo común divisor"
    putStrLn "11) Negación de un valor booleano"
    putStrLn "12) Verifica si un número es impar"
    putStrLn "13) Signo de un número"
    putStrLn "14) Segundo elemento de una tupla"
    putStrLn "15) Salir"
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El valor absoluto de " ++ show x ++ " es " ++ show (absoluto x))
            menu
        "2" -> do
            putStrLn "Ingrese un número decimal:"
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn ("El valor de menor entero no menor que " ++ show x ++ " es " ++ show (miCeiling x))
            menu
        "3" -> do
            putStrLn "Ingrese un número decimal:"
            n1 <- getLine
            let x = read n1 :: Integer  -- Cambiado a Integer para que coincida con miSucc
            putStrLn ("El siguiente valor de " ++ show x ++ " es " ++ show (miSucc x))
            menu
        "4" -> do
            putStrLn "Ingrese dos números separados:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El menor entre " ++ show x ++ " y " ++ show y ++ " es " ++ show (miMin x y))
            menu
        "5" -> do
            putStrLn "Ingrese dos números separados:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El mayor entre " ++ show x ++ " y " ++ show y ++ " es " ++ show (miMax x y))
            menu
        "6" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("La división de " ++ show x ++ " entre " ++ show y ++ " es " ++ show (miDiv x y))
            menu
        "7" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El módulo de " ++ show x ++ " entre " ++ show y ++ " es " ++ show (miMod x y))
            menu
        "8" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn (show x ++ " es par: " ++ show (miEven x))
            menu
        "9" -> do
            putStrLn "Ingrese un número decimal:"
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn ("El valor de piso de " ++ show x ++ " es " ++ show (miFloor x))
            menu
        "10" -> do
            putStrLn "Ingrese dos números separados por espacio:"
            n1 <- getLine
            let [x, y] = map read (words n1) :: [Integer]
            putStrLn ("El máximo común divisor de " ++ show x ++ " y " ++ show y ++ " es " ++ show (miGcd x y))
            menu
        "11" -> do
            putStrLn "Ingrese un valor booleano (True/False):"
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn ("El valor negado de " ++ show x ++ " es " ++ show (miNot x))
            menu
        "12" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn (show x ++ " es impar: " ++ show (miOdd x))
            menu
        "13" -> do
            putStrLn "Ingrese un número:"
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn ("El signo de " ++ show x ++ " es " ++ show (miSignum x))
            menu
        "14" -> do
            putStrLn "Ingrese dos valores separados por espacio (pueden ser de cualquier tipo):"
            n1 <- getLine
            let [x, y] = words n1
            putStrLn ("El segundo valor es: " ++ show (miSnd (x, y)))
            menu
        "15" -> do
            putStrLn "Bye!"
            return ()
        _ -> do
            putStrLn "Opción no válida"
            menu

-- public static void main
main::IO()
main = menu


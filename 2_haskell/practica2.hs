-- 1. Función que calcula el promedio de 4 números
promedio4 :: Double -> Double -> Double -> Double -> Double
promedio4 a b c d = (a + b + c + d) / 4

-- 2. Función que suma monedas
sumaMonedas :: Int -> Int -> Int -> Int -> Double
sumaMonedas a b c d = fromIntegral a * 1.00 + fromIntegral b * 5.00 + fromIntegral c * 10.00 + fromIntegral d * 50.00

-- 3. Función que calcula el volumen de una esfera
volumenEsfera :: Double -> Double
volumenEsfera radio = (4/3) * pi * (radio ** 3)

-- 4. Función que verifica si tres números son iguales
sonIguales :: (Eq a) => a -> a -> a -> Bool
sonIguales a b c = a == b && b == c

-- 5. Función que verifica si tres números son diferentes
sonDiferentes :: (Eq a) => a -> a -> a -> Bool
sonDiferentes a b c = a /= b && b /= c && a /= c

-- 6. Función que calcula el precio final con descuentos
precioFinal :: Double -> Double
precioFinal precio
    | precio > 1000.00 = precio * 0.60  
    | precio > 500.00  = precio * 0.70  
    | precio > 100.00  = precio * 0.90  
    | otherwise        = precio        

-- 7. Función que da la última cifra de un número
ultimaCifra :: Integer -> Integer
ultimaCifra n = abs n `mod` 10


menu :: IO()
menu = do
    putStrLn "\n ==== MENÚ ==== "
    putStrLn " ¿Qué función quiere probar?"
    putStrLn " 1) Promedio de 4 numeros"
    putStrLn " 2) Suma de monedas"
    putStrLn " 3) Volumen de una esfera"
    putStrLn " 4) Verificar si 3 numeros son iguales"
    putStrLn " 5) Verificar si 3 numeros son diferentes"
    putStrLn " 6) Precio final con descuentos"
    putStrLn " 7) Ultima cifra de un numero"
    putStrLn " 8) Salir"
    putStr " Selecciona una opción: "
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "\n--- Promedio de 4 numeros ---"
            putStr "Ingrese el primer numero: "
            n1 <- getLine
            putStr "Ingrese el segundo numero: "
            n2 <- getLine
            putStr "Ingrese el tercer numero: "
            n3 <- getLine
            putStr "Ingrese el cuarto numero: "
            n4 <- getLine
            let a = read n1 :: Double
            let b = read n2 :: Double
            let c = read n3 :: Double
            let d = read n4 :: Double
            putStrLn ("El promedio de " ++ show a ++ ", " ++ show b ++ ", " ++ show c ++ " y " ++ show d ++ " es: " ++ show (promedio4 a b c d))
            menu
        
        "2" -> do
            putStrLn "\n--- Suma de monedas ---"
            putStrLn "Ingrese la cantidad de cada denominación:"
            putStr "Monedas de $1.00: "
            n1 <- getLine
            putStr "Monedas de $5.00: "
            n2 <- getLine
            putStr "Monedas de $10.00: "
            n3 <- getLine
            putStr "Monedas de $50.00: "
            n4 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            let d = read n4 :: Int
            putStrLn ("Total: $" ++ show (sumaMonedas a b c d))
            menu
        
        "3" -> do
            putStrLn "\n--- Volumen de una esfera ---"
            putStr "Ingrese el radio de la esfera: "
            n1 <- getLine
            let radio = read n1 :: Double
            putStrLn ("El volumen de la esfera con radio " ++ show radio ++ " es: " ++ show (volumenEsfera radio))
            menu
        
        "4" -> do
            putStrLn "\n--- Verificar si 3 numeros son iguales ---"
            putStr "Ingrese el primer numero: "
            n1 <- getLine
            putStr "Ingrese el segundo numero: "
            n2 <- getLine
            putStr "Ingrese el tercer numero: "
            n3 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            putStrLn ("¿" ++ show a ++ ", " ++ show b ++ " y " ++ show c ++ " son iguales?: " ++ show (sonIguales a b c))
            menu
        
        "5" -> do
            putStrLn "\n--- Verificar si 3 numeros son diferentes ---"
            putStr "Ingrese el primer numero: "
            n1 <- getLine
            putStr "Ingrese el segundo numero: "
            n2 <- getLine
            putStr "Ingrese el tercer numero: "
            n3 <- getLine
            let a = read n1 :: Int
            let b = read n2 :: Int
            let c = read n3 :: Int
            putStrLn ("¿" ++ show a ++ ", " ++ show b ++ " y " ++ show c ++ " son diferentes?: " ++ show (sonDiferentes a b c))
            menu
        
        "6" -> do
            putStrLn "\n--- Precio final con descuentos ---"
            putStrLn "Condiciones de descuento:"
            putStrLn "- Mas de $100: 10% descuento"
            putStrLn "- Mas de $500: 30% descuento"
            putStrLn "- Mas de $1000: 40% descuento"
            putStr "Ingrese el precio original: $"
            n1 <- getLine
            let precio = read n1 :: Double
            let final = precioFinal precio
            let descuento = precio - final
            putStrLn ("Precio original: $" ++ show precio)
            putStrLn ("Descuento: $" ++ show descuento)
            putStrLn ("Precio final: $" ++ show final)
            menu
        
        "7" -> do
            putStrLn "\n--- Ultima cifra de un numero ---"
            putStr "Ingrese un numero: "
            n1 <- getLine
            let numero = read n1 :: Integer
            putStrLn ("La ultima cifra de " ++ show numero ++ " es: " ++ show (ultimaCifra numero))
            menu
        
        "8" -> do
            putStrLn "\n¡Bais!"
            return ()
        _ -> do
            putStrLn "\nOpcion no valida"
            menu
            putStrLn "\n¡Bais!"
            menu


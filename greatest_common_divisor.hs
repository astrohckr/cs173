--- Euclidean Divisor Algorithm
--- This is a fast way to compute the greatest common divisor of two integers.
greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y = if (remainder a b) == 0
                              then b
                              else greatestCommonDivisor a (remainder a b)
                            where
                              a = absoluteValue (max x y)
                              b = absoluteValue (min x y)

--- Calculates the least common multiple of two integers
leastCommonMultiple :: Int -> Int -> Int
leastCommonMultiple x y = absoluteValue (x * y) `div` (greatestCommonDivisor x y)
                            
absoluteValue :: Int -> Int
absoluteValue n = if n > 0 then n else (n)*(-1)

remainder :: Int -> Int -> Int
remainder a b = a `mod` b



                              

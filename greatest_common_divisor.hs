--- Uses the Euclidean algorithm to compute the greatest common divisor.
greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y = if (remainder a b) == 0
                              then b
                              else greatestCommonDivisor a (remainder a b)
                            where
                              a = (max x y)
                              b = (min x y)
                            
absoluteValue :: Int -> Int
absoluteValue n = if n > 0
                    then n
                    else (n)*(-1)

remainder :: Int -> Int -> Int
remainder a b = a `mod` b

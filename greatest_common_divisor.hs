--- Uses the Euclidean algorithm to compute the greatest common divisor.
greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y = if (a `mod` b) == 0
                              then b
                              else greatestCommonDivisor a (a `mod` b)
                            where
                              a = (max x y)
                              b = (min x y)
                            
absoluteValue :: Int -> Int
absoluteValue n = if n > 0
                    then n
                    else (n)*(-1)

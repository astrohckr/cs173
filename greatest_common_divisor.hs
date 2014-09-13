--- Uses the Euclidean algorithm to compute the greatest common divisor.
greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y = if (x `mod` y) == 0 
                              then y 
                              else greatestCommonDivisor x (x `mod` y)
                            

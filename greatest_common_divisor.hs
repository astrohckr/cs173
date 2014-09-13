--- Uses the Euclidean algorithm to compute the greatest common divisor.
greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y = if ((max x y) `mod` (min x y)) == 0 
                              then (min x y)
                              else greatestCommonDivisor (max x y) ((max x y) `mod` (min x y))
                            
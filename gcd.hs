greatestCommonDivisor :: Int -> Int -> Int
greatestCommonDivisor x y = if (x `mod` y) == 0 then y else greatestCommonDivisor x (x `mod` y)
                            

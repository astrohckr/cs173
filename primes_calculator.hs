-- Eratosthenes Sieve implementation in Haskell. 
-- Find the primes
-- When n = 10, primes(10) = [2,3,5,7]
-- [2,3,4,5,6,7,8,9,10]
-- [2,3]
-- [2,3,5,7]
sieve n = [x|x <- [2..n], (square x) < n]

square :: Int -> Int
square x = (*) x x

-- Eratosthenes Sieve implementation in Haskell. 
-- Find the primes
-- When n = 10, primes(10) = [2,3,5,7]
primes n = [(square x) + x|x <- [2..n], (square x) < n]

square :: Int -> Int
square x = (*) x x

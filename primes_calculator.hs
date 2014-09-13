-- Eratosthenes Sieve implementation in Haskell. 
-- Find the primes
-- When n = 15, primesTo(15) = [2,3,5,7,11,13]
-- [2,3,4,5,6,7,8,9,10,11,12,13,14,15]
-- [_,_,4,_,6,_,8,9,10,__,12,__,14,15]
-- [2,3,_,5,_,7,_,_,__,11,__,13,__,__]
-- 4=2*2, 6=2*2+2
-- 9=3*3, 12=3*3+3

sieve n = [x|x <- [2..n], (square x) < n]

square :: Int -> Int
square x = (*) x x

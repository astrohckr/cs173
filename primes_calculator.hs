-- Eratosthenes Sieve implementation in Haskell. 
-- Find the primes
-- When n = 15, primesTo(15) = [2,3,5,7,11,13]
-- [2,3,4,5,6,7,8,9,10,11,12,13,14,15]
-- [_,_,4,_,6,_,8,9,10,__,12,__,14,15]
-- [2,3,_,5,_,7,_,_,__,11,__,13,__,__]
-- 2: 2*2=4, 2*2+2=6, 2*2+2(2)=8, 2*2+3(2)=10, 2*2+4(2)=12, 2*2+5(2)=14
-- x: square(x)+0x, square(x)+1x, square(x)+2x, square(x)+3x, square(x)+4x..
-- 3: 3*3=9, 3*3+3=12

primesTo n = [x|x <- [2..n], (square x) < n]

sieve n = [(square x) + ax|x <- [2..n], a <- [0..n]]

square :: Int -> Int
square x = (*) x x

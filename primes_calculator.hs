-- Eratosthenes Sieve implementation in Haskell. 
-- Find the primes
-- When n = 15, primesTo(15) = [2,3,5,7,11,13]
-- [2,3,4,5,6,7,8,9,10,11,12,13,14,15]
-- [_,_,4,_,6,_,8,9,10,__,12,__,14,15]
-- [2,3,_,5,_,7,_,_,__,11,__,13,__,__]
-- 2: 2*2=4, 2*2+2=6, 2*2+2(2)=8, 2*2+3(2)=10, 2*2+4(2)=12, 2*2+5(2)=14
-- 3: 3*3=9, 3*3+3=12

-- Note: This isn't yet quite as fast as I'd like
primesTo n = [x|x <- [2..n], x `notElem` (sieve n)]

-- x: square(x)+0x, square(x)+1x, square(x)+2x, square(x)+3x, square(x)+4x..
sieve n = [(square x) + (y * x)|x <- [2..n], y <- [0..n], (square x) <= n, (square x) + (y * x) <= n]

square :: Int -> Int
square x = (*) x x

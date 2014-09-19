--- Congruence Modulo
--- b is congruent to a (mod n) iff n|(b-a)
--- where a,b,n are integers
isCongruent a b n = isInteger x
                   where
                     x = (b - a)/n
isInteger x = x == fromInteger (round x)

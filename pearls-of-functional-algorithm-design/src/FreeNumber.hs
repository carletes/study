-- | Tools for computing the smallest natural number not in a given set.
module FreeNumber
    (
     minfree_ref
    ) where
                   

-- | Reference implementation.
minfree_ref    :: [Int] -> Int
minfree_ref xs = head ([0 ..] \\ xs) where
    (\\) :: Eq a=> [a] -> [a] -> [a]
    us \\ vs = filter (`notElem` vs) us

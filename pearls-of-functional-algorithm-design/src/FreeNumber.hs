-- | Tools for computing the smallest natural number not in a given set.
module FreeNumber
    (
      -- * Implementations
      minfree_ref
      -- * Properties
    , prop_minfree_nonnegative
    , prop_minfree_not_in_set
    ) where

-- | Returns the smallest natural number not present in the given set.
--
--  This is the reference implementation.
minfree_ref    :: [Int] -> Int
minfree_ref xs = head ([0 ..] \\ xs) where
    (\\) :: Eq a=> [a] -> [a] -> [a]
    us \\ vs = filter (`notElem` vs) us

-- | The smallest natural number is a non-negative integer.
prop_minfree_nonnegative      :: ([Int] -> Int) -> [Int] -> Bool
prop_minfree_nonnegative f xs = f xs >= 0

-- | The result is not in the given set
prop_minfree_not_in_set      :: ([Int] -> Int) -> [Int] -> Bool
prop_minfree_not_in_set f xs = f xs `notElem` xs

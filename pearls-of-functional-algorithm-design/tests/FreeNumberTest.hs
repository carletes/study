-- | Tests for the smallest free number tools.
--
-- Copied from <https://github.com/jstolarek/haskell-testing-stub>

module Main where

import Test.Framework (Test, defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import FreeNumber

main :: IO ()
main = defaultMain tests

tests :: [Test]
tests =
      [
       testGroup "Smallest free number"
       [
        testGroup "Reference implementation"
        [
          testProperty "Non-negative" (prop_minfree_nonnegative minfree_ref)
         ,testProperty "Result not in set" (prop_minfree_not_in_set minfree_ref)
        ]
       ]
      ]

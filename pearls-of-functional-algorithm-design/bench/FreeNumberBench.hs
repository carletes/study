-- | Benchmarks for the smallest free number tools.
--
-- Copied from <https://github.com/jstolarek/haskell-testing-stub>
module Main where

import Criterion.Config (Config(..), defaultConfig, ljust)
import Criterion.Main (Benchmark, bench, nf, defaultMainWith)

import FreeNumber

benchmarks :: [Benchmark]
benchmarks = let n = 10000 in
           [
             bench "minfree_increasing" $ nf minfree_ref [0 .. n]
           , bench "minfree_decreasing" $ nf minfree_ref [n, n-1 .. 0]
           ]

config :: Config
config = defaultConfig {
           cfgPerformGC = ljust True
         }

main :: IO ()
main =
    defaultMainWith config (return ()) benchmarks

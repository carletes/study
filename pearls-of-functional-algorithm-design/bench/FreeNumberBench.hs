-- | Benchmarks for the smallest free number tools.
--
-- Copied from https://github.com/jstolarek/haskell-testing-stub
module Main where

import Criterion.Config (Config(..), defaultConfig, ljust)
import Criterion.Main (Benchmark, bench, nf, defaultMainWith)

import FreeNumber

benchmarks :: [Benchmark]
benchmarks =
           [
             bench "minfree_ref" $ nf minfree_ref [67 .. 100000]
           ]

config :: Config
config = defaultConfig {
           cfgPerformGC = ljust True
         }

main :: IO ()
main =
    defaultMainWith config (return ()) benchmarks

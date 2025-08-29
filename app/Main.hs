module Main where

import Lam
import Control.Concurrent

main :: IO () 
main = do
    lamInit
    threadDelay 9999999999999999

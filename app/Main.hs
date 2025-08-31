module Main where

import Lam

main :: IO () 
main = lamInit >> lamLoop 

lamLoop :: IO () 
loop = do 
    input <- getLine
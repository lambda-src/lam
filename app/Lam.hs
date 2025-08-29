module Lam where

import System.Console.ANSI 
import System.IO (stdout, hFlush)
import Util (wipeScreen)

lamInit :: IO () 
lamInit = do
    supportsAnsi <- hNowSupportsANSI stdout 
    if not supportsAnsi
    then fail "System doesnt support ANSI so Lam cannot run properly"
    else do 
        wipeScreen
        displayStart

displayStart :: IO () 
displayStart = do 
    setSGR [SetColor Foreground Vivid Magenta]
    putStr "λ>"
    setSGR [Reset]
    hFlush stdout
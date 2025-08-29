{-# LANGUAGE CPP #-} 

module Util where

import System.Process (callCommand)

-- This is used over System.Console.Ansi (clearScreen) because it doesn't fully clear the screen just moves it down to an empty spot
wipeScreen :: IO () 
wipeScreen = 
#if defined(mingw32_HOST_OS) 
    callCommand "cls"
#else 
    callCommand "clear"
#endif 
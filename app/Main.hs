module Main where

import           Lib
import           ParseCommand

main :: IO ()
main = mainloop

mainloop :: IO ()
mainloop =
    do line <- getLine
       case parseCommand line of
         Quit -> putStrLn "quit!"

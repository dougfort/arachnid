module ParseCommand
    ( parseCommand
    , Command(..)
    ) where

data Command = Quit
  deriving (Eq, Show)

parseCommand :: String -> Command
parseCommand _ = Quit

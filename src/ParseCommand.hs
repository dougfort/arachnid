module ParseCommand
    ( parseCommand
    , Command(..)
    ) where

data Command = Quit
             | New
             | Deal
             | Error String
  deriving (Eq, Show)

parseCommand :: String -> Command
parseCommand line =
  case words line of
    ["quit"]  -> Quit
    ["new"]   -> New
    ["deal"]  -> Deal
    "move":_  -> Error "move isn't written yet"
    "eat":[_] -> Error "eat isn't written yet"
    ["scan"]  -> Error "scan isn't written yet"
    _         -> Error ("unknown command '" ++ line ++ "'")

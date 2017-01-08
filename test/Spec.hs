
import           ParseCommand
import           Test.Hspec

main :: IO ()
main = hspec $
  describe "Prelude.read" $
    it "can parse 'quit'" $
      parseCommand "quit" `shouldBe` Quit

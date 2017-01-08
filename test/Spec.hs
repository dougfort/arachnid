
import           ParseCommand
import           Test.Hspec

main :: IO ()
main = hspec $
  describe "Prelude.read" $ do
    it "can parse 'quit'" $
      parseCommand "quit" `shouldBe` Quit

    it "can parse 'new'" $
      parseCommand "new" `shouldBe` New

    it "can parse 'deal'" $
      parseCommand "deal" `shouldBe` Deal

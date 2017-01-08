module Cards
    ( Card
    ) where

      data Suit = Clubs | Diamonds | Hearts | Spades
        deriving (Eq)

      instance Show Suit where
        show Clubs    = "C"
        show Diamonds = "D"
        show Hearts   = "H"
        show Spades   = "S"

      data Rank = Ace
                | R2
                | R3
                | R4
                | R5
                | R6
                | R7
                | R8
                | R9
                | R10
                | Jack
                | Queen
                | King
        deriving (Eq, Ord, Bounded)

      instance Show Rank where
        show Ace   = "A"
        show R2    = "2"
        show R3    = "3"
        show R4    = "4"
        show R5    = "5"
        show R6    = "6"
        show R7    = "7"
        show R8    = "8"
        show R9    = "9"
        show R10   = "10"
        show Jack  = "J"
        show Queen = "Q"
        show King  = "K"

      instance Enum Rank where
        fromEnum r
          | r == Ace   = 1
          | r == R2    = 2
          | r == R3    = 3
          | r == R4    = 4
          | r == R5    = 5
          | r == R6    = 6
          | r == R7    = 7
          | r == R8    = 8
          | r == R9    = 9
          | r == R10   = 10
          | r == Jack  = 11
          | r == Queen = 12
          | r == King  = 13
          | otherwise = error "Prelude.Enum.Rank.fromEnum: bad argument"

        toEnum n
          | n == 1  = Ace
          | n == 2  = R2
          | n == 3  = R3
          | n == 4  = R4
          | n == 5  = R5
          | n == 6  = R6
          | n == 7  = R7
          | n == 8  = R8
          | n == 9  = R9
          | n == 10 = R10
          | n == 11 = Jack
          | n == 12 = Queen
          | n == 13 = King
          | otherwise = error "Prelude.Enum.Rank.toEnum: bad argument"

      -- | the size of a complete run of a suit.
      -- | There should be some way to get this from the definition of Rank
      runSize :: Int
      runSize = 13

      data Card = Card Suit Rank

      instance Show Card where
        show (Card s r) = show s ++ show r

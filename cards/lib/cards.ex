defmodule Cards do
  def create_deck do
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    values = [
      "Ace",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six",
      "Seven",
      "Eight",
      "Nine",
      "Ten",
      "Jack",
      "Queen",
      "King"
    ]

    cards =
      for suit <- suits do
        for card <- values do
          "#{card} of #{suit}"
        end
      end

    List.flatten(cards)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end

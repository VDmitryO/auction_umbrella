defmodule Auction.FakeRepo do
  alias Auction.Item

  @items [
    %Item{
      id: 1,
      title: "My first item",
      description: "A tasty item sure to please",
      ends_at: ~N[2023-01-01 00:00:00]
    },
    %Item{
      id: 2,
      title: "WarGames Bluray",
      description: "The best movie on Bluray!",
      ends_at: ~N[2023-10-15 13:39:35]
    },
    %Item{
      id: 3,
      title: "U2 - Achtung Baby on CD",
      description: "The sound of 4 men chopping down The Joshua Tree",
      ends_at: ~N[2023-11-05 03:12:29]
    }
  ]

  def all(Item), do: @items

  def get!(Item, id) do
    Enum.find(@items, fn(item) -> item.id == id end)
  end

  def get_by(Item, attrs) do
    Enum.find(
      @items,
      fn(item) ->
        Enum.all?(attrs, fn({key, value}) -> Map.get(item, key) == value end)
      end
    )
  end
end

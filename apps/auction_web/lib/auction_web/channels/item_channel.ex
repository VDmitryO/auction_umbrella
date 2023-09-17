defmodule AuctionWeb.ItemChannel do
  use AuctionWeb, :channel

  @impl true
  def join("item:" <> _item_id, _params, socket) do
      IO.puts "JOIN ITEM CHANNEL #{inspect socket}"
     {:ok, socket}
  end

#  @impl true
#  def join("item:" <> _item_id, payload, socket) do
#    if authorized?(payload) do
#      {:ok, socket}
#    else
#      {:error, %{reason: "unauthorized"}}
#    end
#  end
#
#  # Channels can be used in a request/response fashion
#  # by sending replies to requests from the client
#  @impl true
#  def handle_in("ping", payload, socket) do
#    {:reply, {:ok, payload}, socket}
#  end
#
#  # It is also common to receive messages from the client and
#  # broadcast to everyone in the current topic (item:lobby).
#  @impl true
#  def handle_in("shout", payload, socket) do
#    broadcast(socket, "shout", payload)
#    {:noreply, socket}
#  end
#
#  # Add authorization logic here as required.
#  defp authorized?(_payload) do
#    true
#  end

  def handle_in("new_bid", params, socket) do
    broadcast!(socket, "new_bid", params)
    {:noreply, socket}
  end
end

# 45 - Elixir - Distributed Chat System Instance
defmodule ArenaChat do
  use GenServer

  def start_link(_), do: GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  def send_message(room, text), do: GenServer.call(__MODULE__, {:broadcast, room, text})

  @impl true
  def init(rooms), do: {:ok, rooms}

  @impl true
  def handle_call({:broadcast, room, text}, _from, rooms) do
    IO.puts("[Elixir Chat] #{room} >> #{text}")
    {:reply, :ok, Map.update(rooms, room, [text], &[text | &1])}
  end
end

{:ok, _} = ArenaChat.start_link(nil)
ArenaChat.send_message("#arena", "Elixir Distributed Chat System online.")

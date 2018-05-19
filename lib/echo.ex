defmodule Echo do
  use GenServer
  require Logger

  def start_link(_) do
    GenServer.start_link(__MODULE__, [])
  end

  def init(_) do
    echo()
    {:ok, []}
  end

  def echo() do
    Process.send_after(self(), :echo, 3 * 1000)
  end

  def handle_info(:echo, state) do
    now = DateTime.utc_now()
    Logger.info("Hello, #{now}")

    echo()
    {:noreply, state}
  end
end

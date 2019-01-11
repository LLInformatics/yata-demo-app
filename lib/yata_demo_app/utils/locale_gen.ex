defmodule YataDemoApp.LocaleGen do
  use GenServer

  #Client

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  # Callbacks

  @impl true
  def init(locale) do
    {:ok, locale}
  end

  @impl true
  def handle_cast({:put, locale}, _state) do
    {:noreply, locale}
  end

  @impl true
  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end
end

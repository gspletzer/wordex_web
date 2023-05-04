defmodule WordexWeb.GameLive do
  use Phoenix.LiveView
  import WordexWeb.CoreComponents

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :word, "stale") |> assign(:count, 0)}
  end

  def handle_event("add_one", _unsigned_params, socket) do
    new_count = socket.assigns.count + 1

    {:noreply, assign(socket, :count, new_count)}
  end
end

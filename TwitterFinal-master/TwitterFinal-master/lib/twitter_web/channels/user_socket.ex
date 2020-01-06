defmodule TwitterWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "lobby", Twitter.MuginuChannel

  ## Transports
  transport :websocket, Phoenix.Transports.WebSocket

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
  # def id(%{assigns: %{id: id}}), do: IO.inspect("#{id}")
end

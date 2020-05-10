defmodule BugReproWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  # channel "room:*", BugReproWeb.RoomChannel
  channel "my_channel:lobby", BugReproWeb.MyChannelChannel
  channel "my_channel2:lobby", BugReproWeb.MyChannel2Channel
  channel "my_channel3:lobby", BugReproWeb.MyChannel3Channel
  channel "my_channel4:lobby", BugReproWeb.MyChannel4Channel
  channel "my_channel5:lobby", BugReproWeb.MyChannel5Channel
  channel "my_channel6:lobby", BugReproWeb.MyChannel6Channel
  channel "my_channel7:lobby", BugReproWeb.MyChannel7Channel
  channel "my_channel8:lobby", BugReproWeb.MyChannel8Channel

  # Socket params are passed from the client and can
  # be used to verify and authenticate a user. After
  # verification, you can put default assigns into
  # the socket that will be set for all channels, ie
  #
  #     {:ok, assign(socket, :user_id, verified_user_id)}
  #
  # To deny connection, return `:error`.
  #
  # See `Phoenix.Token` documentation for examples in
  # performing token verification on connect.
  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  # Socket id's are topics that allow you to identify all sockets for a given user:
  #
  #     def id(socket), do: "user_socket:#{socket.assigns.user_id}"
  #
  # Would allow you to broadcast a "disconnect" event and terminate
  # all active sockets and channels for a given user:
  #
  #     BugReproWeb.Endpoint.broadcast("user_socket:#{user.id}", "disconnect", %{})
  #
  # Returning `nil` makes this socket anonymous.
  def id(_socket), do: nil
end

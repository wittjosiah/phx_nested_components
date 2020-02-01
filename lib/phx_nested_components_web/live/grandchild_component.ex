defmodule PhxNestedComponentsWeb.GrandchildComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <div id="grandchild">
      <p>Grandchild: <%= @grandchild %></p>
      <button phx-click="grandchild" phx-target="#grandchild">g</button>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, :grandchild, 0)}
  end

  def handle_event("grandchild", _value, socket) do
    {:noreply, assign(socket, :grandchild, socket.assigns.grandchild + 1)}
  end
end

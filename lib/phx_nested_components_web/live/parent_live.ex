defmodule PhxNestedComponentsWeb.ParentLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
      <p>Parent: <%= @parent %></p>
      <button phx-click="parent">p</button>
      <%= live_component @socket, PhxNestedComponentsWeb.ChildComponent, id: "child" %>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :parent, 0)}
  end

  def handle_event("parent", _value, socket) do
    {:noreply, assign(socket, :parent, socket.assigns.parent + 1)}
  end
end

defmodule PhxNestedComponentsWeb.ChildComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <div id="child">
      <p>Child: <%= @child %></p>
      <button phx-click="child" phx-target="#child">c</button>
      <%= live_component @socket, PhxNestedComponentsWeb.GrandchildComponent, id: "grandchild" %>
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, :child, 0)}
  end

  def handle_event("child", _value, socket) do
    {:noreply, assign(socket, :child, socket.assigns.child + 1)}
  end
end

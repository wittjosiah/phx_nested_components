defmodule PhxNestedComponentsWeb.Router do
  use PhxNestedComponentsWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
    plug(Phoenix.LiveView.Flash)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", PhxNestedComponentsWeb do
    pipe_through(:browser)

    get("/", PageController, :index)
    live("/live", ParentLive)
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxNestedComponentsWeb do
  #   pipe_through :api
  # end
end

defmodule PhxNestedComponents.Repo do
  use Ecto.Repo,
    otp_app: :phx_nested_components,
    adapter: Ecto.Adapters.Postgres
end

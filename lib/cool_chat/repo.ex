defmodule CoolChat.Repo do
  use Ecto.Repo,
    otp_app: :cool_chat,
    adapter: Ecto.Adapters.Postgres
end

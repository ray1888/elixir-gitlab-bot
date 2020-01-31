defmodule GitlabBot.Repo do
  use Ecto.Repo,
    otp_app: :gitlab_bot,
    adapter: Ecto.Adapters.Postgres
end

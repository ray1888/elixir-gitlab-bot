defmodule GitlabBot.Repo.Migrations.Devuser do
  use Ecto.Migration

  def change do
      alter table(:devusers) do
        add :phone, references(:devusers)
        add :email, references(:devusers)
      end
  end
end

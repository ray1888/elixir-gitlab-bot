defmodule GitlabBot.Repo.Migrations.CreateDevusers do
  use Ecto.Migration

  def change do
    create table(:devusers) do
      add :name, :string
      add :groupname, :string

      timestamps()
    end

    create unique_index(:devusers, [:name])
  end
end

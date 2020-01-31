defmodule GitlabBot.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :devgroup, :string

      timestamps()
    end

    create unique_index(:projects, [:name])
  end
end

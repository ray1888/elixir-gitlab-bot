defmodule GitlabBot.Repo.Migrations.Project do
  use Ecto.Migration

  def change do
    alter table(:projects) do
      add :ding_push_url, references(:projects)
    end
  end
end

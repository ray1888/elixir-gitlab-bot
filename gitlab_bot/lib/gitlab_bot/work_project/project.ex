defmodule GitlabBot.WorkProject.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :devgroup, :string
    field :name, :string
    field :ding_push_url, :string
    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :devgroup])
    |> validate_required([:name, :devgroup])
    |> unique_constraint(:name)
  end
end

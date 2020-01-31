defmodule GitlabBot.WorkProject.Devuser do
  use Ecto.Schema
  import Ecto.Changeset

  schema "devusers" do
    field :groupname, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(devuser, attrs) do
    devuser
    |> cast(attrs, [:name, :groupname])
    |> validate_required([:name, :groupname])
    |> unique_constraint(:name)
  end
end

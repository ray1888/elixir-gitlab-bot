defmodule GitlabBot.WorkProject.Devuser do
  use Ecto.Schema
  import Ecto.Changeset

  schema "devusers" do
    field :groupname, :string
    field :name, :string
    field :phone, :string
    field :email, :string
    timestamps()
  end

  @doc false
  def changeset(devuser, attrs) do
    devuser
    |> cast(attrs, [:name, :groupname])
    |> validate_required([:name, :groupname])
    |> unique_constraint(:name)
    |> unique_constraint(:phone)
    |> unique_constraint(:email)
  end
end

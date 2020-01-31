defmodule GitlabBot.Devuser do
  @moduledoc """
  GitlabBot DevUser is repo of devuser. all domain controll should be do in
  this file
  """
  alias GitlabBot.Repo
  alias GitlabBot.WorkProject.Devuser

  def getByGroup(%{"assginee" => username}) do
    Repo.get_by(Devuser, name: username)
  end

end

defmodule GitlabBot.Devuser do
  @moduledoc """
  GitlabBot DevUser is repo of devuser. all domain controll should be do in
  this file
  """
  alias GitlabBot.Repo
  alias GitlabBot.WorkProject.Devuser

  def getByGroup(%{"object_attributes" => o_attr}) do
    if o_attr["assignee"]["name"] do
      Repo.get_by(Devuser, name: o_attr["assignee"]["name"])
    else
      Repo.get_by(Devuser, name: o_attr["assignee"]["username"])
    end
  end
end

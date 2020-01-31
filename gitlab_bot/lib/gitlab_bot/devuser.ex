defmodule GitlabBot.Devuser do
  @moduledoc """
  GitlabBot DevUser is repo of devuser. all domain controll should be do in
  this file
  """
  alias GitlabBot.Repo
  alias GitlabBot.WorkProject.Devuser

  def getByGroup(groupname) do
    users = Repo.get_by(Devuser, groupname: groupname)
    # users
  end

end

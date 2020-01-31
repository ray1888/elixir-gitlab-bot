defmodule GitlabBot.Project do
  @moduledoc """
  GitlabBot Project is repo of project. all domain controll should be do in
  this file
  """
  alias GitlabBot.Repo
  alias GitlabBot.WorkProject.Project

  def get_info_by_name(%{"project" => project_data}) do
    Repo.get_by(Project, name: project_data["name"])
  end

end

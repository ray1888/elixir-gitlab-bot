defmodule GitlabBot.Project do
  @moduledoc """
  GitlabBot Project is repo of project. all domain controll should be do in
  this file
  """
  alias GitlabBot.Repo
  alias GitlabBot.WorkProject.Project
  import Ecto.Query

  def get_info_by_name(%{"project" => project_data}) do
    Repo.get_by(Project, name: project_data["name"])
  end

  def get_repo_urls(%{"project" => project_data}) do
    project_name = project_data["name"]
    query =
      from p in Project,
      where: p.name == ^project_name,
      select: p.ding_push_url
    Repo.all(query)
  end

end

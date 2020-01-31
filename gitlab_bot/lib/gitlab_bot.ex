defmodule GitlabBot do
  @moduledoc """
  GitlabBot keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias GitlabBot.Devuser
  alias GitlabBot.Parser
  alias GitlabBot.Project

  @doc """
  total is three step
  1. parse the gitlab message
  2. get the inform group and get the informer
  3. send to different platform
  """
  def inform() do
      # Parser.parse()
      Project.get_info_by_name()
      Devuser.getByGroup()

  end

end

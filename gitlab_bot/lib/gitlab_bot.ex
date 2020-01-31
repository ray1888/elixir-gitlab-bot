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
  alias Phoenix.Logger

  @doc """
  total is three step
  1. parse the gitlab message
  2. get the inform group and get the informer
  3. send to different platform
  """
  def inform(msg) do
      # IO.puts "assignee is " <> name
      # # IO.puts "project_name is " <> person
      # IO.inspect msg
      project_info =  Project.get_info_by_name(msg)
      IO.inspect project_info
      assignee = Devuser.getByGroup(msg.assginee)
      IO.inspect assignee
      # msg
      # {:ok, "testing"}
      # project_info =  Project.get_info_by_name(msg.project_name)
      # Logger.debug(project_info)
      # assignee = Devuser.getByGroup(msg.assginee)
      # Logger.debug(assignee)
      # msg
      # |> Project.get_info_by_name()
      # |> Devuser.getByGroup()
      # |> Parser.parse()
      # |> sender.Send()

  end

end

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
  alias GitlabBot.Sender
  alias Phoenix.Logger

  @doc """
  total is three step
  1. parse the gitlab message
  2. get the inform group and get the informer
  3. send to different platform
  """
  def inform(msg) do
      push_urls =  Project.get_info_by_name(msg)
      # IO.inspect project_info
      users = Devuser.getByGroup(msg)
      # IO.inspect assignee
      Parser.parse(msg, push_urls, users)
      # |> sender.Send()
      {:ok, "sadas"}
  end
end

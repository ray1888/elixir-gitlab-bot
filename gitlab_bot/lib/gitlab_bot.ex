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

  @doc """
  total is three step
  1. parse the gitlab message
  2. get the inform group and get the informer
  3. send to different platform
  """
  def inform(event_type, msg) do
      push_urls =  Project.get_info_by_name(msg)
      case event_type do
        ["Push Hook"] ->
          Parser.parse(msg, push_urls)
          # |> sender.Send()
        ["Tag Push Hook"]->
          Parser.parse(msg, push_urls)
          # |> sender.Send()
        ["Merge Request Hook"] ->
          users = Devuser.getByGroup(msg)
          Parser.parse(msg, push_urls, users)
          # |> sender.Send()
          {:ok,"dsfads"}
      end
  end
end

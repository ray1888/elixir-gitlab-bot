defmodule GitlabBot.Parser do
  @moduledoc """
  GitlabBot keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  defp parse_commit(commits) do
    commits
    |> Enum.slice(0,5)
    |> Enum.map(fn(x) -> %{:id=>x["id"], :msg=>x["message"]} end )
  end

  defp parse_push_msg(msg) do
    %{:name=> msg["project"]["name"],
      :user => msg["user_name"],
      :user_username => msg["user_username"],
      :commit_msg => parse_commit(msg["commits"]),
      :total_commit_number => msg["total_commits_count"],
      :before => msg["before"],
      :after => msg["after"],
    }
  end

  def parse_merge_msg(msg) do
    %{:name=> msg["project"]["name"],
      :user =>msg["user"]["user_name"],
      :user_username=>msg["user"]["user_username"],
      ## TODO use for function
      :from => msg["object_attributes"]["source_branch"],
      :to => msg["object_attributes"]["target_branch"],
      :last_commit => parse_commit(msg["object_attributes"]["last_commit"]),
      :url => msg["object_attributes"]["url"],
      :work_in_process => msg["object_attributes"]["work_in_progress"],
    }
  end

  defp parse_platform_msg(msg) do
    case msg do
      {"dingding", total_msg} ->
        case total_msg do
          {person, msg} ->
            {:ok, "sdfasd"}
          msg ->
            {:ok, "sdfasd"}
        end
      {"slack", total_msg} ->
        case total_msg do
          {person, msg} ->
            {:ok, "sdfasd"}
          msg ->
            {:ok, "sdfasd"}
        end
    end
  end

  @doc """
  This is for push and tag push to parse msg into msg platform type
  """
  def parse(msg, push_urls) do
  ## Outside user should use recursive
    parse_msg = parse_push_msg(msg)
    ## TODO Push_url need to match with real situation
    push_urls = ["dingding", "slack"]
    push_urls
    |> Enum.map(fn(x) -> {x, parse_msg} end )
    |> Enum.map(&parse_platform_msg/1)
    {:ok, "dsfa"}
  end

  @doc """
  This is for merge_request push to parse msg into msg platform type
  """
  def parse(msg, push_urls, users) do
    # IO.inspect parse_merge_msg(msg)
    # {:ok, parse_merge_msg(msg)}
    parse_msg = parse_merge_msg(msg)
    push_urls = ["dingding", "slack"]
    push_urls
    |> Enum.map(fn(x) -> {x, parse_msg} end )
    |> Enum.map(&parse_platform_msg/1)
    {:ok, "dsfa"}
  end
end

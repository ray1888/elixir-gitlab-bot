defmodule GitlabBot.Parser do
  @moduledoc """
  GitlabBot keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def parse(%{"object_kind" => event_type} = msg, push_urls) do
    {:ok, "fdsa"}
  end

  def parse(%{"object_kind" => event_type} = msg, push_urls, users) do
    IO.puts event_type
    case event_type do
      "push" ->
        # IO.inspect msg."object_type"
        IO.puts "push match done"
        {:ok, "fdsa"}
      # %{"object_type" => "tag"} ->
      #   {:error, "not impl"}
      # %{"object_type" => "merge_request"}  ->
      #   {:error, "not impl"}
    end
  end

end

defmodule GitlabBotWeb.GitlabController do
  use GitlabBotWeb, :controller
  alias GitlabBot
  # alias Phoenix.Logger

  def convey(conn, params) do
      # case GitlabBot.inform(gitlab_msg) do
      #   {:ok, msg} ->
      #     conn
      #     |> put_flash(:info, "Msg has been pushed successfully")
      #   {:error, error} ->
      #     conn
      #     # |> put_resp_header(key, value)
      #     |> put_flash(:info, "Msg has been pushed failed")
      # end
      # GitlabBot.inform(%{project_name: "abc", assginee:"ray_chen"})
      GitlabBot.inform(params)

  end
end

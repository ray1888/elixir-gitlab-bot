defmodule GitlabBotWeb.GitlabController do
  use GitlabBotWeb, :controller
  alias GitlabBot
  # alias Phoenix.Logger

  def convey(conn, params) do
      case GitlabBot.inform(params) do
        {:ok, msg} ->
          json(conn, "Msg has been pushed successfully")
        {:error, error} ->
          conn
          # |> put_resp_header(key, value)
          |> put_flash(:info, "Msg has been pushed failed")
      end
  end
end

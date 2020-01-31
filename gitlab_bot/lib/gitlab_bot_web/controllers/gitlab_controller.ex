defmodule GitlabBotWeb.GitlabController do
  use GitlabBotWeb, :controller
  alias Plug.Conn
  alias GitlabBot
  # alias Phoenix.Logger

  def convey(conn, params) do
      conn
      |> get_req_header("x-gitlab-event")
      |> GitlabBot.inform(params)
      |> send_response(conn)
  end

  def send_response(res, conn) do
    case res do
      {:ok, msg} ->
        json(conn, "Msg has been pushed successfully")
      {:error, error} ->
        json(conn, "Msg has been pushed failed")
    end
  end
end

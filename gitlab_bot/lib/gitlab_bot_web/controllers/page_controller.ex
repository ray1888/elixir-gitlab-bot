defmodule GitlabBotWeb.PageController do
  use GitlabBotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def get_gitlab_msg(conn, _prarms) do

  end

end

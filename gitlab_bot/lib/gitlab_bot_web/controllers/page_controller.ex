defmodule GitlabBotWeb.PageController do
  use GitlabBotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end

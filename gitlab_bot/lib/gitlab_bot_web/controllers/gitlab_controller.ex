defmodule GitlabBotWeb.GitlabController do
  use GitlabBotWeb, :controller

  alias GitlabBot

  def handle(conn, _prarms) do
      ## TODO add handler for gitlab msg

      {} = GitlabBot.inform()


  end

end

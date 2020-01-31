defmodule GitlabBot.Sender do

  def send(msg) do
    case msg do
      {:dingding, send_msg} ->
        {:ok, "send"}
      {:slack, msg} ->
        {:ok, "send"}
    end
  end
end

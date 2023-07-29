defmodule CoolChatWeb.PageController do
  use CoolChatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

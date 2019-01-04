defmodule YataDemoAppWeb.PageController do
  use YataDemoAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

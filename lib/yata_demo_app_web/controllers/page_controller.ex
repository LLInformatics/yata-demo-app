defmodule YataDemoAppWeb.PageController do
  use YataDemoAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def locale(conn, %{"locale" => locale}) do
    YataDemoApp.Utils.Locale.put_locale(locale)
    redirect(conn, to: page_path(conn, :index))
  end
end

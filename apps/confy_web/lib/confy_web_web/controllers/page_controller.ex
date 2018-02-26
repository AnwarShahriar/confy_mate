defmodule ConfyWebWeb.PageController do
  use ConfyWebWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

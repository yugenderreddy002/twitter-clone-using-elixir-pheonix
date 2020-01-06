defmodule TwitterWeb.PageController do
  use TwitterWeb, :controller

  def index(conn, _params) do
    render conn, "home.html"
  end

  def dashboard(conn, _params) do
    render conn, "dashboard.html"
  end
end

defmodule ProfileApiWeb.PageController do
  use ProfileApiWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

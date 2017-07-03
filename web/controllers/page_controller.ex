defmodule Contact.PageController do
  use Contact.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule Contact.ContactController do
  use Contact.Web, :controller

  alias Contact.Contact

  def index(conn, params) do
    page = Contact
      |> order_by(:first_name)
      |> Repo.paginate(params)

    render conn, page: page
  end
end
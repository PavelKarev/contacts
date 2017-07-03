defmodule Contact.ContactView do
  use Contact.Web, :view

  def render("index.json", %{page: page}), do: page
end
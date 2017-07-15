defmodule Contact.ContactView do
  use Contact.Web, :view

  def render("index.json", %{page: page}), do: page

  def render("show.json", %{contact: contact}), do: contact
end
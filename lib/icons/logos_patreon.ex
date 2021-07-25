defmodule Boxicon.LogosPatreon do
  use Surface.Component

  @doc "Name as described in https://boxicons.com/"
  prop name, :string, required: true

  @doc "Width & height of the icon"
  prop size, :integer, default: 24

  @doc "CSS classes for the wrapping svg element"
  prop class, :string, default: ""

  @impl true
  def render(assigns) do
    ~F"""
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><circle cx="14.508" cy="9.831" r="6.496"/><path d="M2.996 3.335H6.17v17.33H2.996z"/></svg>
    """
  end

end

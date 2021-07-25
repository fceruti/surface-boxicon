defmodule Boxicon.RegularLoaderCircle do
  use Surface.Component

  @doc "Width & height of the icon"
  prop size, :integer, default: 24

  @doc "CSS classes for the wrapping svg element"
  prop class, :string, default: ""

  @impl true
  def render(assigns) do
    ~F"""
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} class={"#{@class}"} viewBox="0 0 24 24"><circle cx="12" cy="20" r="2"/><circle cx="12" cy="4" r="2"/><circle cx="6.343" cy="17.657" r="2"/><circle cx="17.657" cy="6.343" r="2"/><circle cx="4" cy="12" r="2.001"/><circle cx="20" cy="12" r="2"/><circle cx="6.343" cy="6.344" r="2"/><circle cx="17.657" cy="17.658" r="2"/></svg>
    """
  end

end

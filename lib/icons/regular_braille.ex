defmodule Boxicon.RegularBraille do
  use Surface.Component

  @doc "Width & height of the icon"
  prop size, :integer, default: 24

  @doc "CSS classes for the wrapping svg element"
  prop class, :string, default: ""

  @impl true
  def render(assigns) do
    ~F"""
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} class={"#{@class}"} viewBox="0 0 24 24"><circle cx="4" cy="7" r="2"/><circle cx="9" cy="12" r="2"/><circle cx="15" cy="7" r="2"/><circle cx="15" cy="12" r="2"/><circle cx="15" cy="17" r="2"/><circle cx="20" cy="7" r="2"/><circle cx="4" cy="17" r="2"/></svg>
    """
  end

end

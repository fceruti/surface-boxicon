defmodule Boxicon.SolidLandscape do
  use Surface.Component

  @doc "Width & height of the icon"
  prop size, :integer, default: 24

  @doc "CSS classes for the wrapping svg element"
  prop class, :string, default: ""

  @impl true
  def render(assigns) do
    ~F"""
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} class={"#{@class}"} viewBox="0 0 24 24"><circle cx="6.5" cy="6.5" r="2.5"/><path d="m14 7-5.223 8.487L7 13l-5 7h20z"/></svg>
    """
  end

end

defmodule Boxicon.SolidBandAid do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m11.646 3.868-7.778 7.778a6.007 6.007 0 0 0 0 8.485 5.984 5.984 0 0 0 4.242 1.754 5.984 5.984 0 0 0 4.243-1.754l7.778-7.778a6.007 6.007 0 0 0 0-8.485 6.008 6.008 0 0 0-8.485 0zM9 13a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm0-6a1 1 0 1 1 0-2 1 1 0 0 1 0 2zm3 3a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/></svg>
    """
  end

end

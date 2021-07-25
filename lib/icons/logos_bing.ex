defmodule Boxicon.LogosBing do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m5.71 3 3.593 1.264v12.645l5.061-2.919-2.48-1.165-1.566-3.897 7.974 2.802v4.073l-8.984 5.183-3.595-2L5.71 3z"/></svg>
    """
  end

end

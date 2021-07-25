defmodule Boxicon.SolidFilterAlt do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M13 20v-4.586L20.414 8c.375-.375.586-.884.586-1.415V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v2.585c0 .531.211 1.04.586 1.415L11 15.414V22l2-2z"/></svg>
    """
  end

end

defmodule Boxicon.SolidHandLeft do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M20 3h-7.21a2 2 0 0 0-1.987 1.779L10 12H4a2 2 0 0 0 0 4h12l-1.212 3.03a2.001 2.001 0 0 0 1.225 2.641l.34.113a.998.998 0 0 0 1.084-.309l4.332-5.197c.149-.179.231-.406.231-.64V5a2 2 0 0 0-2-2z"/></svg>
    """
  end

end

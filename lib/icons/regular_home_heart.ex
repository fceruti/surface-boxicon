defmodule Boxicon.Regular.HomeHeart do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m12.223 11.641-.223.22-.224-.22a2.224 2.224 0 0 0-3.125 0 2.13 2.13 0 0 0 0 3.07L12 18l3.349-3.289a2.13 2.13 0 0 0 0-3.07 2.225 2.225 0 0 0-3.126 0z"/><path d="m21.707 11.293-9-9a.999.999 0 0 0-1.414 0l-9 9A1 1 0 0 0 3 13h1v7c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-7h1a1 1 0 0 0 .707-1.707zM18.001 20H6v-9.585l6-6 6 6V15l.001 5z"/></svg>
    """
  end

end

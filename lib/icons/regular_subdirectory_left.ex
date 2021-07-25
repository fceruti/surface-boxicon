defmodule Boxicon.RegularSubdirectoryLeft do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M16 13h-6v-3l-5 4 5 4v-3h7a1 1 0 0 0 1-1V5h-2v8z"/></svg>
    """
  end

end

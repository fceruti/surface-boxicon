defmodule Boxicon.RegularHorizontalCenter do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m5.005 15.995 4-4-4-4v3h-3v2h3zm14-5v-3l-4 4 4 4v-3h3v-2h-2.072zm-8 7h2v3h-2zm0-5h2v3h-2zm0-5h2v3h-2zm0-5h2v3h-2z"/></svg>
    """
  end

end

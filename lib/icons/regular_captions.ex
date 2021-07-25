defmodule Boxicon.RegularCaptions do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M6 10v4c0 1.103.897 2 2 2h3v-2H8v-4h3V8H8c-1.103 0-2 .897-2 2zm7 0v4c0 1.103.897 2 2 2h3v-2h-3v-4h3V8h-3c-1.103 0-2 .897-2 2z"/><path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 18V6h16l.002 12H4z"/></svg>
    """
  end

end

defmodule Boxicon.RegularFilm do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM9 11V5h6v6H9zm6 2v6H9v-6h6zM5 5h2v2H5V5zm0 4h2v2H5V9zm0 4h2v2H5v-2zm0 4h2v2H5v-2zm14.002 2H17v-2h2.002v2zm-.001-4H17v-2h2.001v2zm0-4H17V9h2.001v2zM17 7V5h2v2h-2z"/></svg>
    """
  end

end

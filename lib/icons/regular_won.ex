defmodule Boxicon.RegularWon do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M21.758 5H19.68l-.844 3h-4.893l-.899-3h-2.088l-.899 3H5.164L4.32 5H2.242l.844 3H2v2h1.648l.563 2H2v2h2.773l1.688 6h2.083l1.8-6h3.313l1.8 6h2.083l1.688-6H22v-2h-2.211l.563-2H22V8h-1.086l.844-3zM5.727 10h3.729l-.6 2H6.289l-.562-2zm1.804 6.417L6.852 14h1.404l-.725 2.417zM10.944 12l.6-2h.912l.6 2h-2.112zm5.525 4.417L15.744 14h1.404l-.679 2.417zM17.711 12h-2.567l-.6-2h3.729l-.562 2z"/></svg>
    """
  end

end

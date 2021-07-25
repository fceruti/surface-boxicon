defmodule Boxicon.Solid.VideoRecording do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M18 9c0-1.103-.897-2-2-2h-1.434l-2.418-4.029A2.008 2.008 0 0 0 10.434 2H5v2h5.434l1.8 3H4c-1.103 0-2 .897-2 2v9c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2v-3l4 2v-7l-4 2V9zm-7 8H5v-2h6v2z"/></svg>
    """
  end

end

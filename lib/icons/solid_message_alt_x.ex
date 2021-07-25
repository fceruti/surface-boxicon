defmodule Boxicon.SolidMessageAltX do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m8.5 18 3.5 4 3.5-4H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h3.5zM7.293 6.707l1.414-1.414L12 8.586l3.293-3.293 1.414 1.414L13.414 10l3.293 3.293-1.414 1.414L12 11.414l-3.293 3.293-1.414-1.414L10.586 10 7.293 6.707z"/></svg>
    """
  end

end

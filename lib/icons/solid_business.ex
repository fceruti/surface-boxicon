defmodule Boxicon.SolidBusiness do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M21 7h-6a1 1 0 0 0-1 1v3h-2V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1zM8 6h2v2H8V6zM6 16H4v-2h2v2zm0-4H4v-2h2v2zm0-4H4V6h2v2zm4 8H8v-2h2v2zm0-4H8v-2h2v2zm9 4h-2v-2h2v2zm0-4h-2v-2h2v2z"/></svg>
    """
  end

end

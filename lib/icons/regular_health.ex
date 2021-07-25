defmodule Boxicon.RegularHealth do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M19.649 5.286 14 8.548V2.025h-4v6.523L4.351 5.286l-2 3.465 5.648 3.261-5.648 3.261 2 3.465L10 15.477V22h4v-6.523l5.649 3.261 2-3.465-5.648-3.261 5.648-3.261z"/></svg>
    """
  end

end

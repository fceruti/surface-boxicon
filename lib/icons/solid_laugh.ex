defmodule Boxicon.Solid.Laugh do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-6.447 9.105 2.459-1.229-1.567-1.044 1.109-1.664 3 2a1 1 0 0 1-.108 1.727l-4 2-.893-1.79zM12 18c-4 0-5-4-5-4h10s-1 4-5 4zm5.553-5.105-4-2a1 1 0 0 1-.108-1.727l3-2 1.109 1.664-1.566 1.044 2.459 1.229-.894 1.79z"/></svg>
    """
  end

end

defmodule Boxicon.RegularUpsideDown do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"/><path d="M14.829 9.172c.181.181.346.38.488.592l1.658-1.119a6.063 6.063 0 0 0-1.621-1.62 5.963 5.963 0 0 0-2.148-.903 5.985 5.985 0 0 0-5.448 1.634 5.993 5.993 0 0 0-.733.889l1.657 1.119a4.017 4.017 0 0 1 2.51-1.683 3.989 3.989 0 0 1 3.637 1.091z"/><circle cx="15.5" cy="13.5" r="1.5"/><circle cx="8.507" cy="13.507" r="1.493"/></svg>
    """
  end

end

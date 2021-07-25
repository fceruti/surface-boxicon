defmodule Boxicon.Regular.Buoy do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.411 7H16v.031A5.037 5.037 0 0 0 14.969 8H15V4.589A8.039 8.039 0 0 1 19.411 9zM12 15c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zm1-10.931v3.032a4.988 4.988 0 0 0-2 0V4.069c.328-.041.66-.069 1-.069s.672.028 1 .069zm-4 .52V8h.031A5.037 5.037 0 0 0 8 9.031V9H4.589C5.402 7 6.999 5.402 9 4.589zM4.069 11h3.032a4.995 4.995 0 0 0 .001 2H4.069C4.028 12.672 4 12.339 4 12s.028-.672.069-1zm.52 4H8v-.031c.284.381.621.718 1 1.005v3.437A8.039 8.039 0 0 1 4.589 15zM11 19.931v-3.032a4.988 4.988 0 0 0 2 0v3.032c-.328.041-.66.069-1 .069s-.672-.028-1-.069zm4-.52v-3.437a5.038 5.038 0 0 0 1-1.005V15h3.411A8.039 8.039 0 0 1 15 19.411zM19.931 13h-3.032a4.995 4.995 0 0 0-.001-2h3.032c.042.328.07.661.07 1s-.028.672-.069 1z"/></svg>
    """
  end

end

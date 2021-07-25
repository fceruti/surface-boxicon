defmodule Boxicon.SolidTrain do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M16.375 2H7.621c-.224 0-1.399.065-2.503 1.351C4.031 4.616 4 5.862 4 6v11a2 2 0 0 0 2 2h1l-2 3h2.353l.667-1h8l.677 1H19l-2-3h1a2 2 0 0 0 2-2V6c.001-.188-.032-1.434-1.129-2.665C17.715 2.037 16.509 2 16.375 2zM10 4h4v2h-4V4zM7.5 17a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 7.5 17zm9 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16.5 17zm1.5-5H6V8h12v4z"/></svg>
    """
  end

end

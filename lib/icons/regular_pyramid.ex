defmodule Boxicon.Regular.Pyramid do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M11.445 21.832a1 1 0 0 0 1.11 0l9-6A.998.998 0 0 0 21.8 14.4l-9-12c-.377-.504-1.223-.504-1.6 0l-9 12a1 1 0 0 0 .245 1.432l9 6zM13 19.131V6l6.565 8.754L13 19.131zM11 6v13.131l-6.565-4.377L11 6z"/></svg>
    """
  end

end

defmodule Boxicon.Regular.Mask do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M19 6H5C3.346 6 2 7.346 2 9v5c0 2.206 1.794 4 4 4h1.637c1.166 0 2.28-.557 2.981-1.491.66-.879 2.104-.88 2.764.001A3.744 3.744 0 0 0 16.363 18H18c2.206 0 4-1.794 4-4V9c0-1.654-1.346-3-3-3zm1 8c0 1.103-.897 2-2 2h-1.637c-.54 0-1.057-.259-1.382-.69-.71-.948-1.797-1.492-2.981-1.492s-2.271.544-2.981 1.491A1.741 1.741 0 0 1 7.637 16H6c-1.103 0-2-.897-2-2V9c0-.551.448-1 1-1h14c.552 0 1 .449 1 1v5z"/><ellipse cx="7.5" cy="11.5" rx="2.5" ry="1.5"/><ellipse cx="16.5" cy="11.5" rx="2.5" ry="1.5"/></svg>
    """
  end

end

defmodule Boxicon.LogosVisualStudio do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m21.29 4.1-4.12-2a1.36 1.36 0 0 0-.48-.1h-.08a1.18 1.18 0 0 0-.72.24l-.14.12-7.88 7.19L4.44 7a.83.83 0 0 0-.54-.17.88.88 0 0 0-.53.17l-1.1 1a.8.8 0 0 0-.27.61.84.84 0 0 0 .27.62l3 2.71-3 2.72a.84.84 0 0 0 0 1.23l1.1 1a.89.89 0 0 0 .6.22.93.93 0 0 0 .47-.17l3.43-2.61 7.88 7.19a1.2 1.2 0 0 0 .76.36h.17a1 1 0 0 0 .49-.12l4.12-2a1.25 1.25 0 0 0 .71-1.1V5.23a1.26 1.26 0 0 0-.71-1.13zM17 16.47l-6-4.53 6-4.53z"/></svg>
    """
  end

end

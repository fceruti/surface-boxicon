defmodule Boxicon.Regular.MessageAltCheck do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M3 4v12c0 1.103.897 2 2 2h3.586L12 21.414 15.414 18H19c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2H5c-1.103 0-2 .897-2 2zm2 0h14v12h-4.414L12 18.586 9.414 16H5V4z"/><path d="m17.207 7.207-1.414-1.414L11 10.586 8.707 8.293 7.293 9.707 11 13.414z"/></svg>
    """
  end

end

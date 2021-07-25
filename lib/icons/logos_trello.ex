defmodule Boxicon.Logos.Trello do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M18.75 3H5.25A2.25 2.25 0 0 0 3 5.25v13.5A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75V5.25A2.25 2.25 0 0 0 18.75 3zm-7.92 13.635a1.08 1.08 0 0 1-1.08 1.08H6.42a1.08 1.08 0 0 1-1.08-1.08V6.42c0-.597.483-1.08 1.08-1.08h3.33c.596 0 1.08.483 1.08 1.08v10.215zm7.83-4.5a1.08 1.08 0 0 1-1.08 1.08h-3.33a1.08 1.08 0 0 1-1.08-1.08V6.42c0-.597.484-1.08 1.08-1.08h3.33c.597 0 1.08.483 1.08 1.08v5.715z"/></svg>
    """
  end

end

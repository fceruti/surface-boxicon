defmodule Boxicon.Regular.ShapeSquare do
  @moduledoc "regular/shape-square"
  use Surface.Component
  import Boxicon

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill (default: currentColor)"
  prop fill, :string, default: "currentColor"

  @doc "svg stroke (default: )"
  prop stroke, :string, default: ""

  @doc "Width & height of the icon (default: 100%)"
  prop size, :string, default: "100%"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M21 6c0-1.654-1.346-3-3-3a2.993 2.993 0 0 0-2.815 2h-6.37A2.993 2.993 0 0 0 6 3C4.346 3 3 4.346 3 6c0 1.302.839 2.401 2 2.815v6.369A2.997 2.997 0 0 0 3 18c0 1.654 1.346 3 3 3a2.993 2.993 0 0 0 2.815-2h6.369a2.994 2.994 0 0 0 2.815 2c1.654 0 3-1.346 3-3a2.997 2.997 0 0 0-2-2.816V8.816A2.996 2.996 0 0 0 21 6zm-3-1a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm-2.815 12h-6.37A2.99 2.99 0 0 0 7 15.184V8.816A2.99 2.99 0 0 0 8.815 7h6.369A2.99 2.99 0 0 0 17 8.815v6.369A2.99 2.99 0 0 0 15.185 17zM6 5a1.001 1.001 0 1 1-1 1c0-.551.448-1 1-1zm0 14a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm12 0a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2z"/></svg>
    """
  end
end

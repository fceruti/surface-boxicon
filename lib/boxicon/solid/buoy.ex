defmodule Boxicon.Solid.Buoy do
  @moduledoc "solid/buoy"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm7.736 8h-3.16A5.02 5.02 0 0 0 14 7.424V4.263A8.015 8.015 0 0 1 19.736 10zM12 15c-1.654 0-3-1.346-3-3s1.346-3 3-3 3 1.346 3 3-1.346 3-3 3zM10 4.263v3.161A5.02 5.02 0 0 0 7.424 10h-3.16A8.015 8.015 0 0 1 10 4.263zM4.264 14h3.16A5.02 5.02 0 0 0 10 16.576v3.161A8.015 8.015 0 0 1 4.264 14zM14 19.737v-3.161A5.02 5.02 0 0 0 16.576 14h3.16A8.015 8.015 0 0 1 14 19.737z"/></svg>
    """
  end
end

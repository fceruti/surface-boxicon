defmodule Boxicon.Regular.Rss do
  @moduledoc "regular/rss"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M19 20.001C19 11.729 12.271 5 4 5v2c7.168 0 13 5.832 13 13.001h2z"/><path d="M12 20.001h2C14 14.486 9.514 10 4 10v2c4.411 0 8 3.589 8 8.001z"/><circle cx="6" cy="18" r="2"/></svg>
    """
  end
end

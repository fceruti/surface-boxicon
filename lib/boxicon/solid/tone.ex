defmodule Boxicon.Solid.Tone do
  @moduledoc "solid/tone"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm-1 9H4.069a7.965 7.965 0 0 1 .52-2H11v2zm0 4H4.589a7.965 7.965 0 0 1-.52-2H11v2zm0-10.931V7H5.765A7.996 7.996 0 0 1 11 4.069zM5.765 17H11v2.931A7.996 7.996 0 0 1 5.765 17z"/></svg>
    """
  end
end

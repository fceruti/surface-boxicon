defmodule Boxicon.Regular.BorderNone do
  @moduledoc "regular/border-none"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M19 19h2v2h-2zm-8 0h2v2h-2zm4 0h2v2h-2zm-8 0h2v2H7zm-4 0h2v2H3zM3 7h2v2H3zm0 8h2v2H3zm0-4h2v2H3zm0-8h2v2H3zm4 0h2v2H7zm4 0h2v2h-2zm4 0h2v2h-2zm4 0h2v2h-2zm0 4h2v2h-2zm0 4h2v2h-2zm0 4h2v2h-2zm-8-8h2v2h-2zm0 8h2v2h-2zm-4-4h2v2H7zm8 0h2v2h-2zm-4 0h2v2h-2z"/></svg>
    """
  end
end
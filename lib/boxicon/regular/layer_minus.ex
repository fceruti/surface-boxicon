defmodule Boxicon.Regular.LayerMinus do
  @moduledoc "regular/layer-minus"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="m2.513 12.833 9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749l-9.022-5a1 1 0 0 0-.968-.001l-8.978 4.96a1 1 0 0 0-.003 1.749zm9.464-4.69 6.964 3.859-6.917 3.853-6.964-3.89 6.917-3.822z"/><path d="m3.485 15.126-.971 1.748 9 5a1 1 0 0 0 .971 0l9-5-.971-1.748L12 19.856l-8.515-4.73zM16 4h6v2h-6z"/></svg>
    """
  end
end
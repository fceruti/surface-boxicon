defmodule Boxicon.Regular.LayerPlus do
  @moduledoc "regular/layer-plus"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="m21.484 11.125-9.022-5a1 1 0 0 0-.968-.001l-8.978 4.96a1 1 0 0 0-.003 1.749l9.022 5.04a.995.995 0 0 0 .973.001l8.978-5a1 1 0 0 0-.002-1.749zm-9.461 4.73-6.964-3.89 6.917-3.822 6.964 3.859-6.917 3.853z"/><path d="M12 22a.994.994 0 0 0 .485-.126l9-5-.971-1.748L12 19.856l-8.515-4.73-.971 1.748 9 5A1 1 0 0 0 12 22zm8-20h-2v2h-2v2h2v2h2V6h2V4h-2z"/></svg>
    """
  end
end

defmodule Boxicon.Solid.Certification do
  @moduledoc "solid/certification"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M2.047 14.667a.992.992 0 0 0 .466.607l1.909 1.104v2.199a1 1 0 0 0 1 1h2.199l1.104 1.91a1.002 1.002 0 0 0 1.366.366L12 20.75l1.91 1.104a1.002 1.002 0 0 0 1.366-.366l1.103-1.909h2.199a1 1 0 0 0 1-1V16.38l1.909-1.104a.999.999 0 0 0 .366-1.366L20.75 12l1.104-1.909a1 1 0 0 0-.366-1.366l-1.909-1.104V5.422a1 1 0 0 0-1-1H16.38l-1.103-1.909a1.004 1.004 0 0 0-.607-.466.994.994 0 0 0-.759.1L12 3.25l-1.909-1.104a.998.998 0 0 0-1.366.365l-1.104 1.91H5.422a1 1 0 0 0-1 1V7.62L2.513 8.725a1.001 1.001 0 0 0-.365 1.366L3.251 12l-1.104 1.909a1.003 1.003 0 0 0-.1.758z"/></svg>
    """
  end
end

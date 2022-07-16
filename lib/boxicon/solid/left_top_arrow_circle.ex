defmodule Boxicon.Solid.LeftTopArrowCircle do
  @moduledoc "solid/left-top-arrow-circle"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M19.071 19.071c3.898-3.899 3.898-10.244 0-14.143-3.899-3.898-10.243-3.898-14.143 0-3.898 3.899-3.898 10.244 0 14.143 3.9 3.899 10.244 3.899 14.143 0zM8.465 8.464h7.07l-2.828 2.829 3.535 3.536-1.414 1.414-3.535-3.536-2.828 2.829V8.464z"/></svg>
    """
  end
end

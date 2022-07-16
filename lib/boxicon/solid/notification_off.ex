defmodule Boxicon.Solid.NotificationOff do
  @moduledoc "solid/notification-off"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><circle cx="18" cy="6" r="3"/><path d="M20 18v-7.422A4.962 4.962 0 0 1 18 11a5 5 0 0 1-5-5c0-.712.153-1.387.422-2H6c-.178 0-.347.031-.51.076L3.707 2.293 2.293 3.707l18 18 1.414-1.414-1.783-1.783c.045-.163.076-.332.076-.51zM4 18c0 1.103.897 2 2 2h9.879L4 8.121V18z"/></svg>
    """
  end
end
